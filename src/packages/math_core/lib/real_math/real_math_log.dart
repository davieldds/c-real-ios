part of real_math;

/// Logarithm helpers (cached per scale for determinism and speed).
///
/// We keep ln(2) at each binary scale to avoid recomputing the series
/// and to guarantee deterministic results across evaluations.
final Map<int, BigInt> _ln2Cache = {};

/// Fixed-point mantissa for ln(2) at the given binary [scale].
BigInt _ln2Mantissa(int scale) {
  final cached = _ln2Cache[scale];
  if (cached != null) return cached;

  // ln(2) = 2 * (z + z^3/3 + z^5/5 + ...) with z = (2-1)/(2+1) = 1/3.
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

/// Scales a mantissa between fixed-point scales, rounding when downscaling.
BigInt _roundScaleMantissa(BigInt mantissa, int fromScale, int toScale) {
  if (fromScale == toScale) return mantissa;
  if (fromScale > toScale) {
    return mantissa << (fromScale - toScale);
  }
  return shiftRightRounded(mantissa, toScale - fromScale);
}

/// Evaluates natural logarithm in the realm of real numbers.
///
/// Uses fixed-point ln helpers with guard bits to stabilize rounding.
void _evaluateLnExpression(LnExpression expression, int precision) {
  final value = expression.arg!.value as RealResult;

  if (value.mantissa <= BigInt.zero) {
    expression.value = ErrorResult("Logarithm of non-positive value");
    return;
  }

  final targetScale = _binaryScaleForPrecision(precision);
  final workScale = targetScale - _realExponentGuardBits;

  try {
    final lnMantissa = _lnMantissa(value, workScale);

    final mantissa = _roundScaleMantissa(lnMantissa, workScale, targetScale);

    expression.value = RealResult(
      mantissa: _applyOutputBias(mantissa, targetScale, precision),
      scale: targetScale,
      precision: precision,
    );
  } on ArgumentError catch (e) {
    expression.value = ErrorResult(e.message.toString());
  }
}

/// Evaluates logarithm with arbitrary base in the realm of real numbers.
///
/// log_base(value) = ln(value) / ln(base)
void _evaluateLogExpression(LogExpression expression, int precision) {
  final value = expression.rightArg!.value as RealResult;
  final base = expression.leftArg!.value as RealResult;

  if (value.mantissa <= BigInt.zero) {
    expression.value = ErrorResult("Logarithm of non-positive value");
    return;
  }
  if (base.mantissa <= BigInt.zero) {
    expression.value = ErrorResult("Logarithm base must be positive");
    return;
  }

  final targetScale = _binaryScaleForPrecision(precision);
  final workScale = targetScale - _realExponentGuardBits;

  try {
    final lnValue = _lnMantissa(value, workScale);
    final lnBase = _lnMantissa(base, workScale);

    if (lnBase == BigInt.zero) {
      expression.value = ErrorResult("Logarithm base cannot be 1");
      return;
    }

    final quotient = _divSameScale(lnValue, lnBase, workScale);

    final mantissa = _roundScaleMantissa(quotient, workScale, targetScale);

    expression.value = RealResult(
      mantissa: _applyOutputBias(mantissa, targetScale, precision),
      scale: targetScale,
      precision: precision,
    );
  } on ArgumentError catch (e) {
    expression.value = ErrorResult(e.message.toString());
  }
}
