/// Class encapsulating the partial result of the constructive real arithmetic evaluation of each [Expression] in the [SyntaxTree].
///
/// The [value] getter is implemented by the subclasses to return the string representation of the result of the evaluation of this node.
abstract class EvaluationResult {
  String get value;
}

/// Variant of [EvaluationResult] for when the result cannot be calculated in the realm of rational numbers.
/// The value of this evaluation is [mantissa] * 10^(-[scale]), where the [mantissa] is a [BigInt] and the [scale] is an [int].
///
/// The [value] getter returns the string representation of the real number in the form of "mantissa e -scale", which is a common way to represent real numbers in scientific notation.
class RealResult extends EvaluationResult {
  BigInt mantissa;
  int scale;

  RealResult({required this.mantissa, required this.scale});

  @override
  String get value => '${mantissa}e-${scale}';
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
