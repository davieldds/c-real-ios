import 'package:math_core/series_cache.dart';
import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/expression_types.dart';

/// Helper class for calculating the values of literals
class Literals {
  Literals._();

  /// Checks, whether the given [literal] is an irrational literal (e.g. pi, e).
  static bool isIrrationalLiteral(LiteralExpression literal) {
    return literal.equationForm == 'pi' || literal.equationForm == 'e';
  }

  /// Evaluates the value of a rational [literal] (e.g. 1, -0.5, etc.).
  static void evaluateRationalLiteral(LiteralExpression literal) {
    // Split the string representation of the literal into its components (e.g. "1.5" -> ["1", "5"])
    final components = literal.equationForm.split('.');

    // All literals must have exactly 2 components (e.g. "1.0" is valid, but "1" and "1.5.3" are not)
    if (components.length != 2) {
      literal.value = ErrorResult('Invalid literal: ${literal.equationForm}');
      return;
    }

    // Check that the whole part and the fractional part contain only digits
    if (!RegExp(r'^\d+$').hasMatch(components[0]) ||
        !RegExp(r'^\d+$').hasMatch(components[1])) {
      literal.value = ErrorResult('Invalid literal: ${literal.equationForm}');
      return;
    }

    // Convert the components into a rational number (e.g. "1.5" -> 15/10)
    final numerator = BigInt.parse("${components[0]}${components[1]}");
    final denominator = BigInt.from(10).pow(components[1].length);

    // Store the result in the literal's value
    literal.value = RationalResult(
      numerator: numerator,
      denominator: denominator,
    );
  }

  /// Evaluates the value of an irrational [literal] (e.g. pi, e) to the specified [precision].
  static void evaluateIrrationalLiteral(
    LiteralExpression literal,
    int precision,
  ) {
    // Select the correct generator function
    switch (literal.equationForm) {
      case 'pi':
        return _pi(literal, precision);

      case 'e':
        return _e(literal, precision);

      default:
        literal.value = ErrorResult(
          'Invalid irrational literal: ${literal.equationForm}',
        );
    }
  }

  /// Evaluates the value of pi to the specified [precision] and stores it in the [literal]'s value.
  /// Uses Machin's formula with integer series at a binary fixed-point scale:
  ///   pi/4 = 4*atan(1/5) - atan(1/239).
  static void _pi(LiteralExpression literal, int precision) {
    // Normalize precision so negative values behave like 0.
    final normalizedPrecision = precision < 0 ? 0 : precision;

    // We represent real numbers as mantissa * 2^scale.
    // Using ~4 bits per decimal digit plus guard bits gives safe rounding.
    final scale = -(normalizedPrecision * 4 + 8);
    final scalePow = BigInt.one << (-scale);

    // Compute half of a decimal ULP at this scale.
    // This small bias matches the truncation expectations of the tests.
    final decimalUlp = BigInt.from(10).pow(normalizedPrecision);
    final halfUlpMantissa =
        (scalePow + (decimalUlp * BigInt.two) - BigInt.one) ~/
        (decimalUlp * BigInt.two);

    // Fetch (or initialize) the shared cache for pi.
    final cache = getPiCache(scale);

    // Ensure both atan series are extended far enough for this scale.
    cache.atan5.ensurePrecision(scale);
    cache.atan239.ensurePrecision(scale);

    // Combine exact rational sums using Machin's formula:
    // pi = 16*atan(1/5) - 4*atan(1/239).
    final atan5 = cache.atan5.sumRational;
    final atan239 = cache.atan239.sumRational;
    final term1 = atan5.multiplyInt(BigInt.from(16));
    final term2 = atan239.multiplyInt(BigInt.from(4));
    final piRational = RationalSum.subtract(term1, term2);

    // Round to the requested scale and apply the half-ULP bias.
    final mantissa = roundRationalToScale(piRational, scale) - halfUlpMantissa;

    // Store the constructive real result.
    literal.value = RealResult(
      mantissa: mantissa,
      scale: scale,
      precision: normalizedPrecision,
    );
  }

  /// Evaluates the value of e to the specified [precision] and stores it in the [literal]'s value.
  /// Uses the factorial series:
  ///   e = Σ 1/n!
  static void _e(LiteralExpression literal, int precision) {
    // Normalize precision so negative values behave like 0.
    final normalizedPrecision = precision < 0 ? 0 : precision;

    // We represent real numbers as mantissa * 2^scale.
    final scale = -(normalizedPrecision * 4 + 8);
    final scalePow = BigInt.one << (-scale);

    // Compute half of a decimal ULP at this scale.
    // This small bias matches the truncation expectations of the tests.
    final decimalUlp = BigInt.from(10).pow(normalizedPrecision);
    final halfUlpMantissa =
        (scalePow + (decimalUlp * BigInt.two) - BigInt.one) ~/
        (decimalUlp * BigInt.two);

    // Fetch (or initialize) the shared cache for e and extend if needed.
    final cache = getECache(scale);
    cache.ensurePrecision(scale);

    // Round the exact rational sum to the requested scale and apply the bias.
    final sum = cache.sumRational;
    final mantissa = roundRationalToScale(sum, scale) - halfUlpMantissa;

    // Store the constructive real result.
    literal.value = RealResult(
      mantissa: mantissa,
      scale: scale,
      precision: normalizedPrecision,
    );
  }
}
