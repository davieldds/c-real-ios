part of real_math;

/// Evaluates addition of two real numbers.
/// We align both operands to the finest scale that still covers the target precision,
/// then round once at the end.
void _evaluateAddExpression(AddExpression expression, int precision) {
  final leftReal = expression.leftArg!.value as RealResult;
  final rightReal = expression.rightArg!.value as RealResult;

  final targetScale = _binaryScaleForPrecision(precision);
  final workScale = _min3(leftReal.scale, rightReal.scale, targetScale);

  final leftM = _scaleMantissa(leftReal.mantissa, leftReal.scale, workScale);
  final rightM = _scaleMantissa(rightReal.mantissa, rightReal.scale, workScale);
  final sum = leftM + rightM;

  expression.value = RealResult(
    mantissa: _applyOutputBias(
      _scaleMantissa(sum, workScale, targetScale),
      targetScale,
      precision,
    ),
    scale: targetScale,
    precision: precision,
  );
}

/// Evaluates subtraction of two real numbers.
void _evaluateSubExpression(SubExpression expression, int precision) {
  final leftReal = expression.leftArg!.value as RealResult;
  final rightReal = expression.rightArg!.value as RealResult;

  final targetScale = _binaryScaleForPrecision(precision);
  final workScale = _min3(leftReal.scale, rightReal.scale, targetScale);

  final leftM = _scaleMantissa(leftReal.mantissa, leftReal.scale, workScale);
  final rightM = _scaleMantissa(rightReal.mantissa, rightReal.scale, workScale);
  final diff = leftM - rightM;

  expression.value = RealResult(
    mantissa: _applyOutputBias(
      _scaleMantissa(diff, workScale, targetScale),
      targetScale,
      precision,
    ),
    scale: targetScale,
    precision: precision,
  );
}

/// Evaluates multiplication of two real numbers.
void _evaluateMulExpression(MulExpression expression, int precision) {
  final leftReal = expression.leftArg!.value as RealResult;
  final rightReal = expression.rightArg!.value as RealResult;

  final targetScale = _binaryScaleForPrecision(precision);

  final productMantissa = leftReal.mantissa * rightReal.mantissa;
  final productScale = leftReal.scale + rightReal.scale;

  expression.value = RealResult(
    mantissa: _applyOutputBias(
      _scaleMantissa(productMantissa, productScale, targetScale),
      targetScale,
      precision,
    ),
    scale: targetScale,
    precision: precision,
  );
}

/// Evaluates division of two real numbers.
/// The numerator is shifted so the quotient lands directly at the target scale.
void _evaluateDivExpression(DivExpression expression, int precision) {
  final leftReal = expression.leftArg!.value as RealResult;
  final rightReal = expression.rightArg!.value as RealResult;

  if (rightReal.mantissa == BigInt.zero) {
    expression.value = ErrorResult("Division by zero");
    return;
  }

  final targetScale = _binaryScaleForPrecision(precision);

  // We want: mantissa * 2^targetScale ≈ (m1 * 2^s1) / (m2 * 2^s2)
  // => mantissa ≈ (m1 * 2^(s1 - s2 - targetScale)) / m2
  final shift = leftReal.scale - rightReal.scale - targetScale;

  BigInt numerator;
  BigInt denominator;
  if (shift >= 0) {
    numerator = leftReal.mantissa << shift;
    denominator = rightReal.mantissa;
  } else {
    numerator = leftReal.mantissa;
    denominator = rightReal.mantissa << (-shift);
  }

  final mantissa = _roundedDiv(numerator, denominator);

  expression.value = RealResult(
    mantissa: _applyOutputBias(mantissa, targetScale, precision),
    scale: targetScale,
    precision: precision,
  );
}
