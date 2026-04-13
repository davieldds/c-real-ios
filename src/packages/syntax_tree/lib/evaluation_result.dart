/// Class encapsulating the partial result of the constructive real arithmetic evaluation of each [Expression] in the [SyntaxTree].
abstract class EvaluationResult {
  /// The string representation of the result of the evaluation of this node.
  String get value;

  /// Whether the result is an exact integer. This is true only for [RationalResult]s where the denominator is 1
  bool get isInteger => false;

  /// Whether the result is negative (less than zero). Error and indeterminate results are not considered negative.
  bool get isNegative => false;

  /// Whether the result is exactly zero. This is only true for [RationalResult]s where the numerator is 0 as for [RealResult]s
  /// we can never be sure whether it isn't just an error of approximation.
  bool get isZero => false;
}

/// Variant of [EvaluationResult] for when the result cannot be calculated in the realm of rational numbers.
/// The value of this evaluation is [mantissa] * 2^[scale], where the [mantissa] is a [BigInt] and the [scale] is an [int].
/// I.e.:
/// - 0.5 would be represented as mantissa = 0b1 and scale = -1
/// - 1.25 would be represented as mantissa = 0b101 and scale = -2
/// - 2 would be represented as mantissa = 0b1 and scale = 1
///
/// The [value] getter returns the string representation of the real number using . as the decimal place separator
class RealResult extends EvaluationResult {
  BigInt mantissa;
  int scale;

  RealResult({required this.mantissa, required this.scale});

  @override
  String get value {
    // If the scale is non-negative, we can simply shift the mantissa to the left by the scale and return it as a string
    if (scale >= 0) {
      return (mantissa << scale).toString();
    }

    // To cheaply calculate the decimal representation, we can use the fact that 2^-n = 5^n / 10^n, so we can multiply
    // the mantissa by 5^-scale, convert to base 10 and then shift it to the right by -scale to get the integer part
    // and the fractional part.

    // Multiply the mantissa by 5^-scale
    final decimalMantissa = mantissa * BigInt.from(5).pow(-scale);

    // Convert the decimal mantissa to a string in base 10
    final decimalString = decimalMantissa.abs().toString();

    // Pad with leading zeros if necessary
    final paddedString = decimalString.padLeft(-scale + 1, '0');

    // Split the string into the integer part and the fractional part
    final integerPart = paddedString.substring(0, paddedString.length + scale);
    final fractionalPart = paddedString.substring(paddedString.length + scale);

    // Add the sign back if the mantissa is negative
    final sign = mantissa < BigInt.zero ? '-' : '';

    // Stitch the integer part and the fractional part together with a decimal point
    return '$sign$integerPart.$fractionalPart';
  }

  @override
  bool get isNegative => mantissa < BigInt.zero;
}

/// Variant of [EvaluationResult] for when the result is a rational number, represented as a fraction of two [BigInt]s: [numerator] and [denominator].
///
/// The fraction is guaranteed to be in its simplest form and the denominator is always positive, so the sign of the rational number is determined solely by the sign of the numerator.
///
/// It extends [RealResult] because there might be a case where an operation will need to be performed on a rational and a real number, and in that case,
/// the rational number can be converted to a real number by performing the division of the [numerator] by the [denominator] and adjusting the [mantissa] and [scale] accordingly.
/// By default, the [mantissa] and [scale] are set to 0 and are only calculated when necessary.
///
/// The [value] getter returns a string in the form of "numerator/denominator".
class RationalResult extends RealResult {
  BigInt numerator;
  BigInt denominator;

  RationalResult({required this.numerator, required this.denominator})
    : super(mantissa: BigInt.zero, scale: 0) {
    // Check for division by zero
    if (denominator == BigInt.zero) {
      throw ArgumentError('Denominator cannot be zero');
    }

    // Reduce the fraction to its simplest form
    final gcd = numerator.gcd(denominator);
    numerator = numerator ~/ gcd;
    denominator = denominator ~/ gcd;

    // Ensure the denominator is positive
    if (denominator < BigInt.zero) {
      numerator = -numerator;
      denominator = -denominator;
    }
  }

  @override
  String get value => '$numerator/$denominator';

  @override
  bool get isInteger => denominator == BigInt.one;

  @override
  bool get isNegative => numerator < BigInt.zero;

  @override
  bool get isZero => numerator == BigInt.zero;
}

/// Variant of [EvaluationResult] for when an error occurs during the evaluation of an [Expression], such as division by zero or invalid input.
/// The [message] field contains a description of the error that occurred.
class ErrorResult extends EvaluationResult {
  final String message;

  ErrorResult(this.message);

  @override
  String get value => 'Error: $message';
}

/// Variant of [EvaluationResult] used when a child node of the given [Expression] results in an error
class IndeterminateResult extends EvaluationResult {
  @override
  String get value => '?';
}
