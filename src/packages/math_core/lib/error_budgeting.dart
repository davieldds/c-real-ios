import 'package:math_core/math_core.dart';
import 'package:math_core/math_core_config.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:syntax_tree/evaluation_result.dart';

/// Helper class to calculate the required dynamic precision for child expressions
/// based on mathematical operations and their evaluated magnitudes.
class ErrorBudgeting {
  ErrorBudgeting._();

  /// Iteratively evaluates an expression to estimate its true magnitude.
  ///
  /// In Constructive Real Arithmetic, evaluating to precision `0` gives an error
  /// bound of 2^0 = 1. For numbers >= 1, this immediately yields a good estimate of
  /// the Most Significant Bit (MSB). However, for numbers close to 0 (e.g., 0.0001),
  /// precision `0` just returns `0 +/- 1`, masking the true negative magnitude.
  ///
  /// To budget errors correctly (especially for operations like division where a
  /// tiny denominator massively scales the error), we must iteratively increase
  /// the precision until a non-zero digit is found, revealing the true MSB.
  static void evaluateMagnitude(Expression expression, [int depth = 0]) {
    int precision = 0;

    // Start with a quick evaluation at low precision to catch large magnitudes without overhead
    MathCore.evaluateExpression(expression, precision, depth);

    // If we already have a non-zero representation, the magnitude is already measurable
    if ((expression.value is RealResult &&
            (expression.value as RealResult).mantissa != BigInt.zero) ||
        expression.value is RationalResult ||
        expression.value is ErrorResult ||
        expression.value is IndeterminateResult)
      return;

    // Start the iterative search for the MSB
    precision = 4;
    while (true) {
      MathCore.evaluateExpression(expression, precision, depth);

      // If we found a non-zero representation, the magnitude is now measurable
      if (expression.value is RealResult &&
          (expression.value as RealResult).mantissa != BigInt.zero)
        return;

      // To prevent infinite loops on very small numbers
      if (precision > MathCoreConfig.assumeZeroPrecision) return;

      // Increase precision exponentially to quickly find the MSB
      precision <<= 1;
    }
  }

  /// Calculates the dynamic precision required for a unary expression's child.
  static int getUnaryPrecision(
    UnaryExpression unary,
    int precision,
    EvaluationResult? childResult,
  ) {
    final normalizedPrecision = precision < 0 ? 0 : precision;

    switch (unary) {
      case SqrtExpression():
      case FactExpression():
        // Sqrt and Fact have derivative properties such that their absolute error growth
        // remains linearly bounded. 2 guard bits strictly absorb rounding and guarantee precision.
        return normalizedPrecision + 2;

      case LnExpression():
        // ln(x) has derivative 1/x. When |x| < 1, absolute error is amplified,
        // so we budget extra bits equal to the negative magnitude plus guard bits.
        final mag = _getMagnitude(childResult);
        final extra = mag < 0 ? -mag + 3 : 3;
        return normalizedPrecision + extra;

      default:
        // This code path should never be reached but just to be safe we return a default precision budget of 2 guard bits
        return normalizedPrecision + 2;
    }
  }

  /// Calculates the dynamic precision required for a binary expression's children.
  static (int, int) getBinaryPrecisions(
    BinaryExpression binary,
    int precision,
  ) {
    final normalizedPrecision = precision < 0 ? 0 : precision;

    switch (binary) {
      // Non-linear operations scale the absolute error by the magnitude of their operands.
      // For instance, the absolute error of (A * B) is roughly (A * error_B) + (B * error_A).
      // To guarantee the target precision, we must budget extra bits proportional to the
      // Base-2 magnitude (MSB) of the *other* operand, plus 3 guard bits to absorb rounding.
      case MulExpression():
      case DivExpression():
      case PwrExpression():
        final leftMag = _getMagnitude(binary.leftArg!.value);
        final rightMag = _getMagnitude(binary.rightArg!.value);
        return (
          normalizedPrecision + rightMag + 3,
          normalizedPrecision + leftMag + 3,
        );

      case LogExpression():
        // log_a(b) = ln(b) / ln(a) behaves like a division of two non-linear functions,
        // so we budget magnitude-based guard bits for both operands.
        final leftMag = _getMagnitude(binary.leftArg!.value);
        final rightMag = _getMagnitude(binary.rightArg!.value);
        return (
          normalizedPrecision + rightMag + 3,
          normalizedPrecision + leftMag + 3,
        );

      // Linear operations (A + B, A - B) don't scale the absolute error by magnitude.
      // Adding 2 fixed guard bits is mathematically sufficient to absorb the carry
      // and guarantee the required precision in the final result.
      default:
        return (normalizedPrecision + 2, normalizedPrecision + 2);
    }
  }

  /// Estimates the base-2 magnitude (MSB) of an evaluation result.
  static int _getMagnitude(EvaluationResult? result) {
    if (result is RationalResult) {
      if (result.numerator == BigInt.zero) return 0;

      // The base-2 magnitude of a fraction N/D is roughly log2(|N/D|) = log2(|N|) - log2(|D|).
      // Since the bitLength of an integer X is floor(log2(|X|)) + 1, we can approximate
      // the magnitude of the fraction using fast integer arithmetic by subtracting the bit lengths.
      return result.numerator.abs().bitLength - result.denominator.bitLength;
    } else if (result is RealResult) {
      if (result.mantissa == BigInt.zero) return 0;

      // The mathematical value is mantissa * 2^scale.
      // Its base-2 magnitude is log2(|mantissa| * 2^scale) = log2(|mantissa|) + scale.
      // We approximate log2(|mantissa|) using its bitLength.
      return result.mantissa.abs().bitLength + result.scale;
    }

    return 0;
  }
}
