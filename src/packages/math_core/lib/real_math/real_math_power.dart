part of real_math;

/// Guard bits used to stabilize ln/exp rounding before final rescaling.
const int _realExponentGuardBits = 16;

/// Cache for ln(2) mantissas per scale to keep repeated exp/log deterministic.
final Map<int, BigInt> _ln2Cache = {};

/// Evaluates exponentiation in the realm of real numbers.
void _evaluatePwrExpression(PwrExpression expression, int precision) {
  final base = expression.leftArg!.value as RealResult;
  final exponent = expression.rightArg!.value as RealResult;
  expression.value = _powReal(base, exponent, precision);
}

/// Logarithm helpers (cached per scale for determinism and speed).
///
/// Fixed-point mantissa for ln(2) at the given binary [scale].
BigInt _ln2Mantissa(int scale) {
  final cached = _ln2Cache[scale];
  if (cached != null) return cached;

  final oneMant = scale < 0 ? (BigInt.one << (-scale)) : BigInt.one;
  final zMant = _roundedDiv(oneMant, BigInt.from(3));
  final z2Mant = _mulSameScale(zMant, zMant, scale);

  BigInt sum = BigInt.zero;
  BigInt term = zMant;
  int denom = 1;

  // Truncate once the term no longer affects this fixed-point scale.
  while (true) {
    final termDiv = term ~/ BigInt.from(denom);
    if (termDiv == BigInt.zero) break;
    sum += termDiv;
    term = _mulSameScale(term, z2Mant, scale);
    denom += 2;
  }

  final ln2 = sum << 1;
  _ln2Cache[scale] = ln2;
  return ln2;
}

/// Fixed-point mantissa for ln([value]) at the given binary [scale].
///
/// We normalize `value` to y in [1, 2) using its binary magnitude:
///   value = y * 2^k
/// Then:
///   ln(value) = ln(y) + k * ln(2)
///
/// ln(y) is computed via the stable series:
///   z = (y - 1) / (y + 1)
///   ln(y) = 2 * (z + z^3/3 + z^5/5 + ...)
///
/// All arithmetic here is done in fixed-point at `scale` to keep
/// determinism and avoid floating point noise.
BigInt _lnMantissa(RealResult value, int scale) {
  if (value.mantissa <= BigInt.zero) {
    throw ArgumentError("Logarithm of non-positive value");
  }

  final magnitude = value.mantissa.abs().bitLength - 1;
  final k = magnitude + value.scale;
  final yMant = _scaleMantissa(value.mantissa, value.scale - k, scale);

  final oneMant = scale < 0 ? (BigInt.one << (-scale)) : BigInt.one;
  final yMinus = yMant - oneMant;
  final yPlus = yMant + oneMant;

  final zMant = _divSameScale(yMinus, yPlus, scale);
  final z2Mant = _mulSameScale(zMant, zMant, scale);

  BigInt sum = BigInt.zero;
  BigInt term = zMant;
  int denom = 1;

  // Truncate once the term no longer affects this fixed-point scale.
  while (true) {
    final termDiv = term ~/ BigInt.from(denom);
    if (termDiv == BigInt.zero) break;
    sum += termDiv;
    term = _mulSameScale(term, z2Mant, scale);
    denom += 2;
  }

  final lnY = sum << 1;
  final ln2 = _ln2Mantissa(scale);
  return lnY + ln2 * BigInt.from(k);
}

/// Fixed-point mantissa for exp([xMantissa] * 2^scale).
///
/// We reduce the argument using ln(2):
///   x = k * ln(2) + r,   where r is small
///   exp(x) = 2^k * exp(r)
///
/// exp(r) is computed via the Taylor series at fixed-point scale:
///   exp(r) = 1 + r + r^2/2! + r^3/3! + ...
///
/// The reduction keeps the series stable and avoids huge intermediate terms.
BigInt _expMantissa(BigInt xMantissa, int scale) {
  final ln2 = _ln2Mantissa(scale);
  final kBig = _nearestDiv(xMantissa, ln2);

  if (kBig.abs().bitLength > 31) {
    throw ArgumentError("Exponent too large");
  }

  final k = kBig.toInt();
  final rMantissa = xMantissa - ln2 * BigInt.from(k);

  final oneMant = scale < 0 ? (BigInt.one << (-scale)) : BigInt.one;
  BigInt sum = oneMant;
  BigInt term = oneMant;

  // Series stops when the next term underflows at this scale.
  for (int n = 1; ; n++) {
    term = _mulSameScale(term, rMantissa, scale);
    term = term ~/ BigInt.from(n);
    if (term == BigInt.zero) break;
    sum += term;
  }

  if (k >= 0) {
    return sum << k;
  }
  return _roundDivPow2(sum, -k);
}

/// Power helpers.
///
/// Computes `base ^ exponent` in the constructive real domain.
///
/// - If the exponent is an exact integer, we use integer power rules
///   (fast exponentiation, exact sign handling, and reciprocal for negatives).
/// - If the exponent is ±1/2, we route through the same path as `sqrt`,
///   ensuring consistency between `sqrt(x)` and `x^(1/2)`.
/// - Otherwise we use:
///     base^exponent = exp(exponent * ln(base))
///
/// Domain rules:
/// - base <= 0 with non-integer exponent is an error (no real result).
/// - 0^0 and 0^negative are errors.
EvaluationResult _powReal(RealResult base, RealResult exponent, int precision) {
  final normalizedPrecision = precision < 0 ? 0 : precision;

  final expInt = _extractIntegerValue(exponent);
  if (expInt != null) {
    if (expInt == BigInt.zero) {
      if (base.mantissa == BigInt.zero) {
        return ErrorResult("Zero cannot be raised to a non-positive power");
      }

      if (normalizedPrecision <= 4) {
        return RationalResult(numerator: BigInt.one, denominator: BigInt.one);
      }

      final targetScale = _binaryScaleForPrecision(normalizedPrecision);
      return RealResult(
        mantissa: _scaleMantissa(BigInt.one, 0, targetScale),
        scale: targetScale,
        precision: normalizedPrecision,
      );
    }

    if (base.mantissa == BigInt.zero && expInt.isNegative) {
      return ErrorResult("Zero cannot be raised to a non-positive power");
    }

    if (expInt.abs().bitLength > 31) {
      return ErrorResult("Exponent too large");
    }

    final exp = expInt.toInt();
    final outputPrecision = exp < 0
        ? normalizedPrecision + 1
        : normalizedPrecision;
    final targetScale = _binaryScaleForPrecision(outputPrecision);

    if (exp > 0) {
      final powMantissa = base.mantissa.pow(exp);
      final powScale = base.scale * exp;
      return RealResult(
        mantissa: _applyOutputBias(
          _scaleMantissa(powMantissa, powScale, targetScale),
          targetScale,
          outputPrecision,
        ),
        scale: targetScale,
        precision: outputPrecision,
      );
    } else {
      final positiveExp = -exp;
      final powMantissa = base.mantissa.pow(positiveExp);
      final powScale = base.scale * positiveExp;

      final workScale = targetScale - 8;

      // mantissa ≈ 2^(-workScale - powScale) / powMantissa
      final numeratorShift = -(workScale + powScale);

      BigInt numerator;
      BigInt denominator;
      if (numeratorShift >= 0) {
        numerator = BigInt.one << numeratorShift;
        denominator = powMantissa;
      } else {
        numerator = BigInt.one;
        denominator = powMantissa << (-numeratorShift);
      }

      final workMantissa = _roundedDiv(numerator, denominator);
      final mantissa = _scaleMantissa(workMantissa, workScale, targetScale);

      return RealResult(
        mantissa: _applyOutputBias(mantissa, targetScale, outputPrecision),
        scale: targetScale,
        precision: outputPrecision,
      );
    }
  }

  final halfSign = _halfSign(exponent);
  if (halfSign != 0) {
    if (base.mantissa < BigInt.zero) {
      return ErrorResult("Square root of negative value");
    }
    if (halfSign > 0) {
      return _sqrtReal(base, normalizedPrecision);
    }
    if (base.mantissa == BigInt.zero) {
      return ErrorResult("Zero cannot be raised to a non-positive power");
    }
    final sqrtValue = _sqrtReal(base, normalizedPrecision);
    if (sqrtValue is ErrorResult) return sqrtValue;
    return _reciprocalReal(sqrtValue as RealResult, normalizedPrecision);
  }

  if (base.mantissa == BigInt.zero) {
    if (exponent.mantissa.isNegative || exponent.mantissa == BigInt.zero) {
      return ErrorResult("Zero cannot be raised to a non-positive power");
    }
    final targetScale = _binaryScaleForPrecision(normalizedPrecision);
    return RealResult(
      mantissa: BigInt.zero,
      scale: targetScale,
      precision: normalizedPrecision,
    );
  }

  if (base.mantissa.isNegative) {
    return ErrorResult("Negative base with non-integer exponent");
  }

  final targetScale = _binaryScaleForPrecision(normalizedPrecision);
  // Extra guard bits stabilize ln/exp rounding before the final rescale.
  final workScale = targetScale - _realExponentGuardBits;

  try {
    final lnBaseMant = _lnMantissa(base, workScale);
    final expMantissa = _scaleMantissa(
      exponent.mantissa,
      exponent.scale,
      workScale,
    );
    final productMantissa = _mulSameScale(lnBaseMant, expMantissa, workScale);
    final powMantissa = _expMantissa(productMantissa, workScale);

    final mantissa = _scaleMantissa(powMantissa, workScale, targetScale);

    return RealResult(
      mantissa: mantissa,
      scale: targetScale,
      precision: normalizedPrecision,
    );
  } on ArgumentError catch (e) {
    return ErrorResult(e.message.toString());
  }
}

int _halfSign(RealResult value) {
  if (value.scale >= 0) return 0;
  final targetMant = BigInt.one << (-value.scale - 1);
  if (value.mantissa == targetMant) return 1;
  if (value.mantissa == -targetMant) return -1;
  return 0;
}

/// Computes sqrt in fixed-point by rescaling the radicand to the target scale,
/// taking an integer square root, then biasing for decimal truncation behavior.
EvaluationResult _sqrtReal(RealResult value, int precision) {
  final targetScale = _binaryScaleForPrecision(precision);

  // We want mantissa such that:
  // mantissa^2 ≈ value.mantissa * 2^(value.scale - 2*targetScale)
  final shift = value.scale - 2 * targetScale;
  BigInt scaled = value.mantissa;
  if (shift >= 0) {
    scaled = scaled << shift;
  } else {
    scaled = _roundDivPow2(scaled, -shift);
  }

  final rootMantissa = _integerSquareRoot(scaled);

  return RealResult(
    mantissa: _applyOutputBias(rootMantissa, targetScale, precision),
    scale: targetScale,
    precision: precision,
  );
}

/// Computes 1/x by shifting the numerator so the division lands at the target scale.
EvaluationResult _reciprocalReal(RealResult value, int precision) {
  if (value.mantissa == BigInt.zero) {
    return ErrorResult("Division by zero");
  }

  final targetScale = _binaryScaleForPrecision(precision);
  final shift = -value.scale - targetScale;

  BigInt numerator;
  BigInt denominator;
  if (shift >= 0) {
    numerator = BigInt.one << shift;
    denominator = value.mantissa;
  } else {
    numerator = BigInt.one;
    denominator = value.mantissa << (-shift);
  }

  final mantissa = _roundedDiv(numerator, denominator);

  return RealResult(
    mantissa: _applyOutputBias(mantissa, targetScale, precision),
    scale: targetScale,
    precision: precision,
  );
}

/// Extracts an integer value only when the fixed-point mantissa has no fractional bits.
/// This enables exact-integer fast paths (e.g., integer powers and factorials).
BigInt? _extractIntegerValue(RealResult value) {
  if (value.scale >= 0) {
    return value.mantissa << value.scale;
  }
  final denom = BigInt.one << (-value.scale);
  if (value.mantissa.remainder(denom) != BigInt.zero) return null;
  return value.mantissa ~/ denom;
}

/// Integer square root using Newton's method (floor).
BigInt _integerSquareRoot(BigInt n) {
  if (n < BigInt.zero) throw ArgumentError("Negative");
  if (n == BigInt.zero) return BigInt.zero;
  BigInt x = n;
  BigInt y = (x + BigInt.one) >> 1;
  while (y < x) {
    x = y;
    y = (x + n ~/ x) >> 1;
  }
  return x;
}

/// Evaluates a square root expression in the realm of real numbers.
void _evaluateSqrtExpression(SqrtExpression expression, int precision) {
  final child = expression.arg?.value;
  if (child == null || child is ErrorResult) {
    expression.value = ErrorResult("Invalid argument");
    return;
  }

  final childReal = child as RealResult;
  if (childReal.mantissa < BigInt.zero) {
    expression.value = ErrorResult("Square root of negative value");
    return;
  }

  final half = RealResult(mantissa: BigInt.one, scale: -1, precision: 1);

  expression.value = _powReal(childReal, half, precision);
}

/// Evaluates a factorial expression in the realm of real numbers.
void _evaluateFactExpression(FactExpression expression, int precision) {
  final child = expression.arg?.value;
  if (child == null || child is ErrorResult) {
    expression.value = ErrorResult("Invalid argument");
    return;
  }

  final childReal = child as RealResult;
  final intValue = _extractIntegerValue(childReal);
  if (intValue == null) {
    expression.value = ErrorResult("Factorial is only defined for integers");
    return;
  }
  if (intValue.isNegative) {
    expression.value = ErrorResult(
      "Factorial is only defined for non-negative integers",
    );
    return;
  }
  if (intValue.bitLength > 31) {
    expression.value = ErrorResult("Factorial input too large");
    return;
  }

  final fact = factorialBigInt(intValue);

  final targetScale = _binaryScaleForPrecision(precision);
  expression.value = RealResult(
    mantissa: _applyOutputBias(
      _scaleMantissa(fact, 0, targetScale),
      targetScale,
      precision,
    ),
    scale: targetScale,
    precision: precision,
  );
}
