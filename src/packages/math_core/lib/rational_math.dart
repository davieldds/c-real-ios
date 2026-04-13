import 'package:math_core/bigint_helpers.dart';
import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';

/// Helper class for evaluating rational expressions.
class RationalMath {
  RationalMath._();

  /// Helper method that checks, whether a given binary [expression] can be evaluated in the realm of
  /// rational numbers.
  static bool CanEvaluateBinaryExpression(BinaryExpression expression) {
    final left = expression.leftArg as EvaluationResult,
        right = expression.rightArg as EvaluationResult,
        isLeftRational = left is RationalResult,
        isRightRational = right is RationalResult;

    switch (expression) {
      // For addition, subtraction, multiplication and division, both arguments must be rational to stay in the rational realm.
      case AddExpression():
      case SubExpression():
      case MulExpression():
      case DivExpression():
        return isLeftRational && isRightRational;

      // For exponentiation, there are two cases where we can stay in the rational realm:
      // 1. If the base is rational and the exponent is an integer
      // 2. The base is not 0 and the exponent is 0
      case PwrExpression():
        if (!left.isZero && right.isZero) return true;

        return (isLeftRational && right.isInteger);

      default:
        // This codepath should never be reached but we return false just to be safe
        return false;
    }
  }

  /// Evaluates a binary expression in the realm of rational numbers. Trusts the caller to ensure
  /// that both arguments are evaluated, otherwise the behavior is undefined.
  static void EvaluateBinaryExpression(BinaryExpression expression) {
    switch (expression) {
      case AddExpression add:
        return _evaluateAddExpression(add);

      case SubExpression sub:
        return _evaluateSubExpression(sub);

      case MulExpression mul:
        return _evaluateMulExpression(mul);

      case DivExpression div:
        return _evaluateDivExpression(div);

      case PwrExpression pwr:
        return _evaluatePwrExpression(pwr);

      default:
        expression.value = ErrorResult(
          "Unsupported binary operation: ${expression.runtimeType}",
        );
    }
  }

  /// Evaluates addition of two rational numbers.
  /// Uses the formula: a/b + c/d = (ad + bc) / bd
  static void _evaluateAddExpression(AddExpression expression) {
    RationalResult left = expression.leftArg!.value as RationalResult,
        right = expression.rightArg!.value as RationalResult;

    final commonDenominator = left.denominator * right.denominator;
    final leftNumerator = left.numerator * right.denominator;
    final rightNumerator = right.numerator * left.denominator;
    final resultNumerator = leftNumerator + rightNumerator;

    expression.value = RationalResult(
      numerator: resultNumerator,
      denominator: commonDenominator,
    );
  }

  /// Evaluates subtraction of two rational numbers.
  /// Uses the formula: a/b - c/d = (ad - bc) / bd
  static void _evaluateSubExpression(SubExpression expression) {
    RationalResult left = expression.leftArg!.value as RationalResult,
        right = expression.rightArg!.value as RationalResult;

    final commonDenominator = left.denominator * right.denominator;
    final leftNumerator = left.numerator * right.denominator;
    final rightNumerator = right.numerator * left.denominator;
    final resultNumerator = leftNumerator - rightNumerator;

    expression.value = RationalResult(
      numerator: resultNumerator,
      denominator: commonDenominator,
    );
  }

  /// Evaluates multiplication of two rational numbers.
  /// Uses the formula: a/b * c/d = (ac) / (bd)
  static void _evaluateMulExpression(MulExpression expression) {
    RationalResult left = expression.leftArg!.value as RationalResult,
        right = expression.rightArg!.value as RationalResult;

    final resultNumerator = left.numerator * right.numerator;
    final resultDenominator = left.denominator * right.denominator;

    expression.value = RationalResult(
      numerator: resultNumerator,
      denominator: resultDenominator,
    );
  }

  /// Evaluates division of two rational numbers.
  /// Uses the formula: (a/b) / (c/d) = (ad) / (bc)
  static void _evaluateDivExpression(DivExpression expression) {
    RationalResult left = expression.leftArg!.value as RationalResult,
        right = expression.rightArg!.value as RationalResult;

    if (right.isZero) {
      expression.value = ErrorResult("Division by zero");
      return;
    }

    final resultNumerator = left.numerator * right.denominator;
    final resultDenominator = left.denominator * right.numerator;

    expression.value = RationalResult(
      numerator: resultNumerator,
      denominator: resultDenominator,
    );
  }

  /// Evaluates exponentiation in the realm of rational numbers.
  ///
  /// Uses the formula: (a/b)^n =
  /// - 1 if n = 0 and a/b != 0
  /// - (a^n) / (b^n) if n > 0
  /// - (b^(-n)) / (a^(-n)) if n < 0
  static void _evaluatePwrExpression(PwrExpression expression) {
    // First handle the special case of x^0 where x != 0, which is equal to 1, because x does not have to be rational
    if (!expression.leftArg!.value!.isZero &&
        expression.rightArg!.value!.isZero) {
      expression.value = RationalResult(
        numerator: BigInt.one,
        denominator: BigInt.one,
      );
      return;
    }

    RationalResult base = expression.leftArg!.value as RationalResult,
        exponent = expression.rightArg!.value as RationalResult;

    if (base.isZero && (exponent.isNegative || exponent.isZero)) {
      expression.value = ErrorResult(
        "Zero cannot be raised to a non-positive power",
      );
      return;
    }

    // As the exponent is guaranteed to be an integer, we can take only the numerator, as the denominator must be 1
    final exp = exponent.numerator;

    if (!exponent.isNegative)
      expression.value = RationalResult(
        numerator: powBigInt(base.numerator, exp),
        denominator: powBigInt(base.denominator, exp),
      );
    else
      expression.value = RationalResult(
        numerator: powBigInt(base.denominator, -exp),
        denominator: powBigInt(base.numerator, -exp),
      );
  }
}
