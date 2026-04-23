import 'package:math_core/math_core_config.dart';
import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';

/// Helper class to enforce memory limits during expression evaluation,
/// preventing operations that result in numbers too large to be safely stored.
class SizeLimits {
  SizeLimits._();

  /// Checks if evaluating the given [expression] would exceed memory limits.
  /// Returns an [ErrorResult] if it does, or `null` if it is safe to evaluate.
  static ErrorResult? checkLimits(Expression expression) {
    switch (expression) {
      case PwrExpression():
        return _checkPwrLimits(expression);
      case FactExpression():
        return _checkFactLimits(expression);
      default:
        return null;
    }
  }

  static ErrorResult? _checkPwrLimits(PwrExpression expression) {
    final left = expression.leftArg?.value;
    final right = expression.rightArg?.value;

    if (left == null || right == null) return null;

    // Ignore cases where limits don't apply or base is 0/1/-1
    if (_isBaseTrivial(left)) return null;

    final baseBitLength = _getBitLength(left);
    final exponentValue = _getAbsoluteIntegerValue(right);

    if (exponentValue != null) {
      // Calculate projected bit length of result: base_bits * exponent
      if (BigInt.from(baseBitLength) * exponentValue >
          BigInt.from(MathCoreConfig.maxBitLength)) {
        return ErrorResult(
          "Exponentiation result too large: exceeds reasonable memory limits",
        );
      }
    } else {
      // If the exponent is not an exact integer, we approximate its magnitude
      final expMag = _getMagnitude(right);

      // If magnitude > 31 (i.e. > 2^31), it will definitely overflow
      if (expMag > 31) {
        return ErrorResult(
          "Exponent too large: result would exceed reasonable memory limits",
        );
      }
    }

    return null;
  }

  static ErrorResult? _checkFactLimits(FactExpression expression) {
    final arg = expression.arg?.value;
    if (arg == null) return null;

    final value = _getAbsoluteIntegerValue(arg);
    if (value != null && value > BigInt.from(MathCoreConfig.maxFactorial)) {
      return ErrorResult(
        "Factorial result too large: exceeds reasonable memory limits",
      );
    }

    return null;
  }

  static bool _isBaseTrivial(EvaluationResult result) {
    if (result is RationalResult) {
      if (result.numerator == BigInt.zero) return true;
      if (result.numerator.abs() == BigInt.one &&
          result.denominator == BigInt.one)
        return true;
    } else if (result is RealResult) {
      if (result.mantissa == BigInt.zero) return true;
    }
    return false;
  }

  static int _getBitLength(EvaluationResult result) {
    if (result is RationalResult) {
      return result.numerator.bitLength;
    } else if (result is RealResult) {
      return result.mantissa.bitLength;
    }
    return 0;
  }

  static BigInt? _getAbsoluteIntegerValue(EvaluationResult result) {
    if (result is RationalResult && result.denominator == BigInt.one) {
      return result.numerator.abs();
    } else if (result is RealResult) {
      if (result.scale >= 0) {
        return (result.mantissa << result.scale).abs();
      } else {
        final denom = BigInt.one << (-result.scale);
        if (result.mantissa.remainder(denom) == BigInt.zero) {
          return (result.mantissa ~/ denom).abs();
        }
      }
    }
    return null;
  }

  static int _getMagnitude(EvaluationResult result) {
    if (result is RationalResult) {
      if (result.numerator == BigInt.zero) return 0;
      return result.numerator.abs().bitLength - result.denominator.bitLength;
    } else if (result is RealResult) {
      if (result.mantissa == BigInt.zero) return 0;
      return result.mantissa.abs().bitLength + result.scale;
    }
    return 0;
  }
}
