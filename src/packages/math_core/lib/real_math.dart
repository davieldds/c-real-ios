import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';

/// Helper class for evaluating real expressions using constructive real arithmetic.
class RealMath {
  RealMath._();

  /// Scales the mantissa from one precision scale to another.
  static BigInt _scaleMantissa(BigInt mantissa, int fromScale, int toScale) {
    if (fromScale == toScale) return mantissa;
    if (toScale > fromScale) {
      return mantissa * BigInt.from(10).pow(toScale - fromScale);
    } else {
      final diff = fromScale - toScale;
      final divisor = BigInt.from(10).pow(diff);
      final quotient = mantissa ~/ divisor;
      final rem = (mantissa % divisor).abs();
      if (rem * BigInt.two >= divisor) {
        return mantissa.isNegative
            ? quotient - BigInt.one
            : quotient + BigInt.one;
      }
      return quotient;
    }
  }

  /// Evaluates a unary expression in the realm of real numbers.
  static void EvaluateUnaryExpression(
    UnaryExpression expression,
    int precision,
  ) {
    precision = precision < 0 ? 0 : precision;
    switch (expression) {
      case SqrtExpression sqrt:
        return _evaluateSqrtExpression(sqrt, precision);
      case FactExpression fact:
        return _evaluateFactExpression(fact, precision);
      default:
        expression.value = ErrorResult(
          "Unsupported unary operation: ${expression.runtimeType}",
        );
    }
  }

  /// Evaluates a binary expression in the realm of real numbers.
  static void EvaluateBinaryExpression(
    BinaryExpression expression,
    int precision,
  ) {
    precision = precision < 0 ? 0 : precision;
    final left = expression.leftArg?.value;
    final right = expression.rightArg?.value;
    if (left == null ||
        right == null ||
        left is ErrorResult ||
        right is ErrorResult) {
      expression.value = ErrorResult("Invalid arguments");
      return;
    }

    switch (expression) {
      case AddExpression add:
        return _evaluateAddExpression(add, precision);
      case SubExpression sub:
        return _evaluateSubExpression(sub, precision);
      case MulExpression mul:
        return _evaluateMulExpression(mul, precision);
      case DivExpression div:
        return _evaluateDivExpression(div, precision);
      case PwrExpression pwr:
        return _evaluatePwrExpression(pwr, precision);
      default:
        expression.value = ErrorResult("Unsupported binary operation");
    }
  }

  /// Evaluates addition of two real numbers.
  static void _evaluateAddExpression(AddExpression expression, int precision) {
    final leftReal = expression.leftArg!.value as RealResult;
    final rightReal = expression.rightArg!.value as RealResult;
    final targetScale = precision + 2;
    final leftM = _scaleMantissa(
      leftReal.mantissa,
      leftReal.scale,
      targetScale,
    );
    final rightM = _scaleMantissa(
      rightReal.mantissa,
      rightReal.scale,
      targetScale,
    );
    expression.value = RealResult(
      mantissa: _scaleMantissa(leftM + rightM, targetScale, precision),
      scale: precision,
    );
  }

  /// Evaluates subtraction of two real numbers.
  static void _evaluateSubExpression(SubExpression expression, int precision) {
    final leftReal = expression.leftArg!.value as RealResult;
    final rightReal = expression.rightArg!.value as RealResult;
    final targetScale = precision + 2;
    final leftM = _scaleMantissa(
      leftReal.mantissa,
      leftReal.scale,
      targetScale,
    );
    final rightM = _scaleMantissa(
      rightReal.mantissa,
      rightReal.scale,
      targetScale,
    );
    expression.value = RealResult(
      mantissa: _scaleMantissa(leftM - rightM, targetScale, precision),
      scale: precision,
    );
  }

  /// Evaluates multiplication of two real numbers.
  static void _evaluateMulExpression(MulExpression expression, int precision) {
    final leftReal = expression.leftArg!.value as RealResult;
    final rightReal = expression.rightArg!.value as RealResult;
    final targetScale = precision + 2;
    final leftM = _scaleMantissa(
      leftReal.mantissa,
      leftReal.scale,
      targetScale,
    );
    final rightM = _scaleMantissa(
      rightReal.mantissa,
      rightReal.scale,
      targetScale,
    );
    final mul = leftM * rightM;
    expression.value = RealResult(
      mantissa: _scaleMantissa(mul, targetScale + targetScale, precision),
      scale: precision,
    );
  }

  /// Evaluates division of two real numbers.
  static void _evaluateDivExpression(DivExpression expression, int precision) {
    final leftReal = expression.leftArg!.value as RealResult;
    final rightReal = expression.rightArg!.value as RealResult;
    if (rightReal.mantissa == BigInt.zero) {
      expression.value = ErrorResult("Division by zero");
      return;
    }
    final targetScale = precision + 2;
    final leftM = _scaleMantissa(
      leftReal.mantissa,
      leftReal.scale,
      targetScale * 2,
    );
    final rightM = _scaleMantissa(
      rightReal.mantissa,
      rightReal.scale,
      targetScale,
    );
    final div = leftM ~/ rightM;
    expression.value = RealResult(
      mantissa: _scaleMantissa(div, targetScale, precision),
      scale: precision,
    );
  }

  /// Evaluates exponentiation in the realm of real numbers.
  static void _evaluatePwrExpression(PwrExpression expression, int precision) {
    final leftReal = expression.leftArg!.value as RealResult;
    final rightReal = expression.rightArg!.value as RealResult;
    final isInt =
        rightReal.scale <= 0 ||
        (rightReal.mantissa % BigInt.from(10).pow(rightReal.scale) ==
            BigInt.zero);
    if (!isInt) {
      expression.value = ErrorResult("Non-integer exponent");
      return;
    }
    final expVal = rightReal.scale <= 0
        ? (rightReal.mantissa * BigInt.from(10).pow(-rightReal.scale)).toInt()
        : (rightReal.mantissa ~/ BigInt.from(10).pow(rightReal.scale)).toInt();

    if (expVal == 0) {
      if (leftReal.mantissa == BigInt.zero) {
        expression.value = ErrorResult(
          "Zero cannot be raised to a non-positive power",
        );
        return;
      }
      expression.value = RationalResult(
        numerator: BigInt.one,
        denominator: BigInt.one,
      );
      return;
    }

    if (leftReal.mantissa == BigInt.zero && expVal < 0) {
      expression.value = ErrorResult(
        "Zero cannot be raised to a non-positive power",
      );
      return;
    }

    if (expVal < 0) {
      final targetScale = precision + 2;
      final leftM = _scaleMantissa(
        leftReal.mantissa,
        leftReal.scale,
        targetScale,
      );
      final positiveExp = -expVal;
      final denomM = leftM.pow(positiveExp);

      final numM = BigInt.from(10).pow(targetScale * positiveExp + targetScale);
      final resM = numM ~/ denomM;

      expression.value = RealResult(
        mantissa: _scaleMantissa(resM, targetScale, precision),
        scale: precision,
      );
    } else {
      final targetScale = precision + 2;
      final leftM = _scaleMantissa(
        leftReal.mantissa,
        leftReal.scale,
        targetScale,
      );
      final res = leftM.pow(expVal);
      expression.value = RealResult(
        mantissa: _scaleMantissa(res, targetScale * expVal, precision),
        scale: precision,
      );
    }
  }

  static BigInt _integerSquareRoot(BigInt n) {
    if (n < BigInt.zero) throw ArgumentError("Negative");
    if (n == BigInt.zero) return BigInt.zero;
    BigInt x = n;
    BigInt y = (x + BigInt.one) >> 1;
    while (y < x) {
      x = y;
      y = (x + n ~/ x) >> 1;
    }
    return x;
  }

  /// Evaluates a square root expression in the realm of real numbers.
  static void _evaluateSqrtExpression(
    SqrtExpression expression,
    int precision,
  ) {
    final child = expression.arg?.value;
    if (child == null || child is ErrorResult) {
      expression.value = ErrorResult("Invalid argument");
      return;
    }
    final childReal = child as RealResult;
    if (childReal.mantissa < BigInt.zero) {
      expression.value = ErrorResult("Square root of negative value");
      return;
    }

    final targetScale = precision + 2;
    final shift = 2 * targetScale - childReal.scale;
    BigInt scaledMantissa = childReal.mantissa;
    if (shift > 0) {
      scaledMantissa *= BigInt.from(10).pow(shift);
    } else if (shift < 0) {
      scaledMantissa ~/= BigInt.from(10).pow(-shift);
    }

    final rootMantissa = _integerSquareRoot(scaledMantissa);
    expression.value = RealResult(
      mantissa: _scaleMantissa(rootMantissa, targetScale, precision),
      scale: precision,
    );
  }

  /// Evaluates a factorial expression in the realm of real numbers.
  static void _evaluateFactExpression(
    FactExpression expression,
    int precision,
  ) {
    final child = expression.arg?.value;
    if (child == null || child is ErrorResult) {
      expression.value = ErrorResult("Invalid argument");
      return;
    }
    final childReal = child as RealResult;

    final isInt =
        childReal.scale <= 0 ||
        (childReal.mantissa % BigInt.from(10).pow(childReal.scale) ==
            BigInt.zero);
    if (!isInt) {
      expression.value = ErrorResult("Factorial is only defined for integers");
      return;
    }

    final intValue = childReal.scale <= 0
        ? (childReal.mantissa * BigInt.from(10).pow(-childReal.scale)).toInt()
        : (childReal.mantissa ~/ BigInt.from(10).pow(childReal.scale)).toInt();
    if (intValue < 0) {
      expression.value = ErrorResult(
        "Factorial is only defined for non-negative integers",
      );
      return;
    }

    BigInt fact = BigInt.one;
    for (int i = 2; i <= intValue; i++) {
      fact *= BigInt.from(i);
    }

    expression.value = RealResult(
      mantissa: _scaleMantissa(fact, 0, precision),
      scale: precision,
    );
  }
}
