part of real_math;

/// Precision/scale helpers used across all real operations.

/// Guard bits reserved for fixed-point rounding safety.
const int _guardBits = 8;

/// Converts a requested decimal precision to a conservative binary scale.
///
/// Roughly 4 binary bits are needed per decimal digit (log2(10) ≈ 3.3219).
/// We add extra guard bits so that rounding errors inside intermediate
/// operations do not perturb the final decimal output.
int _binaryScaleForPrecision(int precision) {
  final normalized = precision < 0 ? 0 : precision;
  return -(normalized * 4 + _guardBits);
}

/// Scales mantissa between binary scales while preserving the represented value.
/// Right shifts round toward zero; callers add a bias when decimal truncation is required.
BigInt _scaleMantissa(BigInt mantissa, int fromScale, int toScale) {
  if (fromScale == toScale) return mantissa;
  final shift = fromScale - toScale;
  if (shift > 0) {
    // Need more precision: multiply by 2^shift.
    return mantissa << shift;
  }
  // Need less precision: divide by 2^(-shift) with rounding.
  return _roundDivPow2(mantissa, -shift);
}

/// Truncating division by 2^bits (toward zero).
BigInt _roundDivPow2(BigInt value, int bits) {
  if (bits <= 0) return value;
  final divisor = BigInt.one << bits;
  return value ~/ divisor;
}

/// Truncating integer division (toward zero).
BigInt _roundedDiv(BigInt numerator, BigInt denominator) {
  if (denominator == BigInt.zero) {
    throw ArgumentError("Division by zero");
  }
  return numerator ~/ denominator;
}

/// Multiplies two fixed-point mantissas at the same binary scale.
BigInt _mulSameScale(BigInt a, BigInt b, int scale) {
  final product = a * b;
  if (scale >= 0) return product << scale;
  return _roundDivPow2(product, -scale);
}

/// Divides two fixed-point mantissas and returns a mantissa at [scale].
BigInt _divSameScale(BigInt numerator, BigInt denominator, int scale) {
  if (scale >= 0) {
    return _roundedDiv(numerator, denominator << scale);
  }
  return _roundedDiv(numerator << (-scale), denominator);
}

/// Nearest integer division (half away from zero).
/// Used during argument reduction so exp/log stay symmetric around zero.
BigInt _nearestDiv(BigInt numerator, BigInt denominator) {
  final quotient = numerator ~/ denominator;
  final remainder = numerator.remainder(denominator);
  if (remainder == BigInt.zero) return quotient;

  final absDen = denominator.abs();
  if (remainder.abs() * BigInt.two >= absDen) {
    return quotient +
        (numerator.isNegative == denominator.isNegative
            ? BigInt.one
            : -BigInt.one);
  }
  return quotient;
}

/// Returns the minimum of three integers.
int _min3(int a, int b, int c) {
  int m = a < b ? a : b;
  return m < c ? m : c;
}

/// Applies a half‑ULP decimal bias to favor truncation in decimal output.
///
/// The literal tests expect decimal truncation rather than bankers’ rounding.
/// We bias by half a decimal ULP at the requested precision, expressed in the
/// current binary scale, so that the final decimal representation truncates
/// predictably without perturbing exact integer mantissas.
BigInt _applyOutputBias(BigInt mantissa, int scale, int precision) {
  if (mantissa == BigInt.zero) return mantissa;
  if (precision <= 0) return mantissa;
  if (scale >= 0) return mantissa;
  final unit = BigInt.one << (-scale);
  if (mantissa.remainder(unit) == BigInt.zero) return mantissa;

  final halfUlpMantissa = halfUlpBiasMantissa(scale, precision);

  if (halfUlpMantissa == BigInt.zero) return mantissa;
  return mantissa.isNegative
      ? mantissa + halfUlpMantissa
      : mantissa - halfUlpMantissa;
}
