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
