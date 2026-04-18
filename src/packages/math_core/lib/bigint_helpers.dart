/// Helper function, that calculates [base] raised to the power of [exp] where both are [BigInt]s.
/// Uses exponentiation by squaring for efficiency, assumes that [exp] is a non-negative integer.
/// i.e. a^n = (a^(n/2))^2 if n is even, and a^n = (a^((n-1)/2))^2 * a if n is odd.
BigInt powBigInt(BigInt base, BigInt exp) {
  if (exp == BigInt.zero) return BigInt.one;
  if (exp == BigInt.one) return base;

  final halfExp = exp ~/ BigInt.two;
  final halfPow = powBigInt(base, halfExp);

  if (exp.isEven)
    return halfPow * halfPow;
  else
    return halfPow * halfPow * base;
}

/// Helper function that calculates the factorial of a [BigInt] n, defined as n! = n * (n-1)! with 0! = 1.
BigInt factorialBigInt(BigInt n) {
  if (n < BigInt.zero)
    throw ArgumentError("Factorial is not defined for negative numbers");

  if (n == BigInt.zero) return BigInt.one;

  BigInt result = BigInt.one;
  for (BigInt i = BigInt.one; i <= n; i += BigInt.one) result *= i;

  return result;
}

/// Helper function that calculates the integer square root of a [BigInt] value using the Babylonian method.
BigInt sqrtBigInt(BigInt value) {
  BigInt z = value;
  BigInt x = BigInt.from(value / BigInt.from(2)) + BigInt.one;

  while (x < z) {
    z = x;
    x = BigInt.from((BigInt.from(value / x) + x) / BigInt.from(2));
  }

  return z;
}

/// Shifts right by `shift` bits with rounding to nearest integer (half away from zero).
/// This is used when downscaling a binary-fixed-point mantissa.
BigInt shiftRightRounded(BigInt value, int shift) {
  if (shift <= 0) return value;
  final divisor = BigInt.one << shift;
  final quotient = value ~/ divisor;
  final remainder = value.remainder(divisor).abs();
  if (remainder * BigInt.two >= divisor) {
    return value.isNegative ? quotient - BigInt.one : quotient + BigInt.one;
  }
  return quotient;
}
