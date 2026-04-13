import 'package:syntax_tree/evaluation_result.dart';

/// Divides [dividend] by [divisor] and rounds to nearest, halves away from zero.
BigInt _roundDiv(BigInt dividend, BigInt divisor) {
  final quotient = dividend ~/ divisor;
  final rem = dividend % divisor;
  final absRem = rem.abs();
  final absDiv = divisor.abs();

  final shouldRoundUp = absRem * BigInt.from(2) >= absDiv;
  if (!shouldRoundUp) {
    return quotient;
  }

  final negativeResult = dividend.isNegative != divisor.isNegative;
  return negativeResult ? quotient - BigInt.one : quotient + BigInt.one;
}

/// Approximates [rational] to the requested decimal [precision].
/// Uses cached mantissa/scale when possible to avoid recomputation.
void approximateRationalToPrecision(RationalResult rational, int precision) {
  if (precision < 0) {
    precision = 0;
  }

  /// If we've already approximated beyond this precision, round cached mantissa down.
  /// For zero precision, only skip when mantissa has been computed.
  if (rational.scale > precision) {
    final scaleDiff = rational.scale - precision;
    final divisor = BigInt.from(10).pow(scaleDiff);
    rational.mantissa = _roundDiv(rational.mantissa, divisor);
    rational.scale = precision;
    return;
  }
  if (rational.scale == precision) {
    if (precision > 0) {
      return;
    }
    if (rational.mantissa != BigInt.zero || rational.numerator == BigInt.zero) {
      return;
    }
  }

  final currentScale = rational.scale;
  final extraScale = precision - currentScale;
  final extraFactor = BigInt.from(10).pow(extraScale);
  final currentScaleFactor = BigInt.from(10).pow(currentScale);

  final remainder =
      rational.numerator * currentScaleFactor -
      rational.mantissa * rational.denominator;
  final scaledRemainder = remainder * extraFactor;

  final roundedDelta = _roundDiv(scaledRemainder, rational.denominator);

  rational.mantissa = rational.mantissa * extraFactor + roundedDelta;
  rational.scale = precision;
}
