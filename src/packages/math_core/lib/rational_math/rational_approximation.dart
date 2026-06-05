import 'package:syntax_tree/evaluation_result.dart';

/// Approximates [rational] to the requested decimal [precision].
void approximateRationalToPrecision(RationalResult rational, int precision) {
  if (precision < 0)
    precision = 0;
    // throw ArgumentError("Precision must be non-negative, got $precision");


  // We need enough binary digits to round correctly to `precision` decimal
  // digits. Since log2(10) ≈ 3.3219, we use 4 bits per decimal digit plus
  // guard bits to avoid off-by-one in the least significant decimal digit.
  final scale = -(precision * 4 + 8);

  final scaledNumerator = rational.numerator << (-scale);

  var mantissa = scaledNumerator ~/ rational.denominator;
  final remainder = scaledNumerator.remainder(rational.denominator);

  // Round to nearest integer (half away from zero).
  if ((remainder.abs() << 1) >= rational.denominator)
    mantissa += BigInt.from(scaledNumerator.sign);

  rational.mantissa = mantissa;
  rational.scale = scale;
  rational.precision = precision;
}
