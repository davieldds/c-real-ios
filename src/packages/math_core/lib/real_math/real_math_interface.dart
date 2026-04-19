part of real_math;

/// Helper class for evaluating real expressions using constructive real arithmetic.
///
/// ### Representation
/// We represent a real number as a fixed-point value:
///   value = mantissa * 2^scale
/// where `mantissa` is an integer and `scale` is a signed power of two.
/// This lets us carry exact integers around and control rounding explicitly.
///
/// ### Precision model
/// The public API asks for decimal precision (number of digits after the
/// decimal point). Internally, we convert that to a conservative binary scale
/// and apply guard bits so intermediate rounding does not leak into the final
/// digits. This is aligned with the constructive real model: operations should
/// be exact descriptions until a concrete approximation is requested.
class RealMath {
  RealMath._();

  /// Evaluates a unary expression in the realm of real numbers.
  static void EvaluateUnaryExpression(
    UnaryExpression expression,
    int precision,
  ) {
    final normalizedPrecision = precision < 0 ? 0 : precision;

    switch (expression) {
      case SqrtExpression sqrt:
        return _evaluateSqrtExpression(sqrt, normalizedPrecision);

      case FactExpression fact:
        return _evaluateFactExpression(fact, normalizedPrecision);

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
    final normalizedPrecision = precision < 0 ? 0 : precision;

    switch (expression) {
      case AddExpression add:
        return _evaluateAddExpression(add, normalizedPrecision);
      case SubExpression sub:
        return _evaluateSubExpression(sub, normalizedPrecision);
      case MulExpression mul:
        return _evaluateMulExpression(mul, normalizedPrecision);
      case DivExpression div:
        return _evaluateDivExpression(div, normalizedPrecision);

      case PwrExpression pwr:
        return _evaluatePwrExpression(pwr, normalizedPrecision);

      default:
        expression.value = ErrorResult(
          "Unsupported binary operation: ${expression.runtimeType}",
        );
    }
  }
}
