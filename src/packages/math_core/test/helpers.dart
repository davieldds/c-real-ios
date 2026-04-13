import 'dart:math' as math;

import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:syntax_tree/syntax_tree.dart';
import 'package:test/test.dart';

/// Shared helpers for building and asserting syntax trees in tests.

SyntaxTree treeWith(Expression root) => SyntaxTree(root);

LiteralExpression lit(num? value, {Expression? parent}) {
  return LiteralExpression(parent: parent, value: _evalValueFromNum(value));
}

EvaluationResult? _evalValueFromNum(num? value) {
  if (value == null) {
    return null;
  }

  if (value is int) {
    return RationalResult(
      numerator: BigInt.from(value),
      denominator: BigInt.one,
    );
  }

  final stringValue = value.toString();
  final parts = stringValue.split('.');
  if (parts.length == 1) {
    return RationalResult(
      numerator: BigInt.parse(parts[0]),
      denominator: BigInt.one,
    );
  }

  final integerPart = parts[0];
  final fractionalPart = parts[1];
  final mantissaStr = '$integerPart$fractionalPart';

  return RealResult(
    mantissa: BigInt.parse(mantissaStr),
    scale: fractionalPart.length,
  );
}

AddExpression add(Expression left, Expression right, {Expression? parent}) {
  return AddExpression(parent: parent, leftArg: left, rightArg: right);
}

SubExpression sub(Expression left, Expression right, {Expression? parent}) {
  return SubExpression(parent: parent, leftArg: left, rightArg: right);
}

MulExpression mul(Expression left, Expression right, {Expression? parent}) {
  return MulExpression(parent: parent, leftArg: left, rightArg: right);
}

DivExpression div(Expression left, Expression right, {Expression? parent}) {
  return DivExpression(parent: parent, leftArg: left, rightArg: right);
}

PwrExpression pwr(Expression left, Expression right, {Expression? parent}) {
  return PwrExpression(parent: parent, leftArg: left, rightArg: right);
}

SqrtExpression sqrt(Expression arg, {Expression? parent}) {
  return SqrtExpression(parent: parent, arg: arg);
}

FactExpression fact(Expression arg, {Expression? parent}) {
  return FactExpression(parent: parent, arg: arg);
}

EvaluationResult _requireResult(Expression exp) {
  expect(exp.value, isNotNull);
  return exp.value!;
}

double _resultToDouble(EvaluationResult result) {
  if (result is RationalResult) {
    return result.numerator.toDouble() / result.denominator.toDouble();
  }
  if (result is RealResult) {
    final scaleFactor = math.pow(10, result.scale).toDouble();
    return result.mantissa.toDouble() / scaleFactor;
  }
  return double.nan;
}

void expectValue(Expression exp, num? value) {
  final result = _requireResult(exp);
  final actual = _resultToDouble(result);
  expect(actual, equals(value));
}

void expectError(Expression exp, String message) {
  expect(exp.value, isA<ErrorResult>());
  final error = exp.value as ErrorResult;
  expect(error.message, equals(message));
}

void expectPrecision(Expression exp, int precision) {
  expect(exp.value, isNotNull);
  final result = exp.value!;
  if (result is RationalResult) {
    return;
  }
  if (result is RealResult) {
    expect(result.scale, greaterThanOrEqualTo(precision));
    return;
  }
  if (result is ErrorResult || result is IndeterminateResult) {
    return;
  }
  fail('Expected a RealResult for precision checks.');
}

void expectRealScale(Expression exp, int expectedScale) {
  final result = _requireResult(exp);
  expect(result, isA<RealResult>());
  final real = result as RealResult;
  expect(real.scale, equals(expectedScale));
}

void expectBinaryArgs(BinaryExpression exp, Expression left, Expression right) {
  expect(exp.leftArg, same(left));
  expect(exp.rightArg, same(right));
}

void expectUnaryArg(UnaryExpression exp, Expression arg) {
  expect(exp.arg, same(arg));
}

void expectNoError(Expression exp) {
  expect(exp.value, isNot(isA<ErrorResult>()));
}

void expectIndeterminate(Expression exp) {
  expect(exp.value, isA<IndeterminateResult>());
}

void expectParent(Expression exp, Expression? parent) {
  expect(exp.parent, same(parent));
}

void expectTreeRoot(SyntaxTree tree, Expression? root) {
  expect(tree.root, same(root));
}

Iterable<Expression> traversePreOrder(Expression root) sync* {
  yield root;
  if (root is BinaryExpression) {
    if (root.leftArg != null) {
      yield* traversePreOrder(root.leftArg!);
    }
    if (root.rightArg != null) {
      yield* traversePreOrder(root.rightArg!);
    }
  } else if (root is UnaryExpression) {
    if (root.arg != null) {
      yield* traversePreOrder(root.arg!);
    }
  }
}

void expectAllNodesPrecision(Expression root, int precision) {
  for (final node in traversePreOrder(root)) {
    expectPrecision(node, precision);
  }
}

void expectValueCloseTo(
  Expression exp,
  num expected, {
  double tolerance = 1e-12,
}) {
  final result = _requireResult(exp);
  final actual = _resultToDouble(result);
  expect((actual - expected).abs(), lessThanOrEqualTo(tolerance));
}

void expectValueWithinPrecision(Expression exp, num expected, int precision) {
  final result = _requireResult(exp);
  final actual = _resultToDouble(result);
  final tolerance = math.pow(10, -precision).toDouble();
  expect((actual - expected).abs(), lessThanOrEqualTo(tolerance));
}

void expectValueIsInteger(Expression exp) {
  final result = _requireResult(exp);
  final actual = _resultToDouble(result);
  expect(actual == actual.roundToDouble(), isTrue);
}

void expectErrorIsNotEmpty(Expression exp) {
  expect(exp.value, isA<ErrorResult>());
  final error = exp.value as ErrorResult;
  expect(error.message, isNotEmpty);
}
