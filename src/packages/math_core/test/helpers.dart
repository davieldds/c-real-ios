import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:syntax_tree/syntax_tree.dart';
import 'package:test/test.dart';

/// Shared helpers for building and asserting syntax trees in tests.

/// Creates a [SyntaxTree] with the given [root] expression.
SyntaxTree treeWith(Expression root) => SyntaxTree(root);

/// Creates a [LiteralExpression] with the given string [value].
LiteralExpression lit(String value) {
  return LiteralExpression(equationForm: value);
}

/// Creates a [AddExpression] with the given [left] and [right] expressions.
AddExpression add(Expression left, Expression right) {
  return AddExpression(leftArg: left, rightArg: right);
}

/// Creates a [SubExpression] with the given [left] and [right] expressions.
SubExpression sub(Expression left, Expression right) {
  return SubExpression(leftArg: left, rightArg: right);
}

/// Creates a [MulExpression] with the given [left] and [right] expressions.
MulExpression mul(Expression left, Expression right) {
  return MulExpression(leftArg: left, rightArg: right);
}

/// Creates a [DivExpression] with the given [left] and [right] expressions.
DivExpression div(Expression left, Expression right) {
  return DivExpression(leftArg: left, rightArg: right);
}

/// Creates a [PwrExpression] with the given [left] and [right] expressions.
PwrExpression pwr(Expression left, Expression right) {
  return PwrExpression(leftArg: left, rightArg: right);
}

/// Creates a [SqrtExpression] with the given [arg] expression.
SqrtExpression sqrt(Expression arg) {
  return SqrtExpression(arg: arg);
}

/// Creates a [FactExpression] with the given [arg] expression.
FactExpression fact(Expression arg) {
  return FactExpression(arg: arg);
}

/// Creates a [LnExpression] with the given [arg] expression.
LnExpression ln(Expression arg) {
  return LnExpression(arg: arg);
}

/// Creates a [LogExpression] with the given [left] and [right] expressions.
LogExpression log(Expression left, Expression right) {
  return LogExpression(leftArg: left, rightArg: right);
}

/// Helper to assert that an [expression] has a non-null value and return it for further assertions.
EvaluationResult _requireResult(Expression expression) {
  expect(expression.value, isNotNull);
  return expression.value!;
}

/// Asserts that the [expression]'s value is a string equal to [value].
void expectValue(Expression expression, String value) {
  final result = _requireResult(expression);
  expect(result.value, equals(value));
}

/// Asserts that the [expression]'s value is a string contained in [possibleValues].
void expectValueOneOf(Expression expression, List<String> possibleValues) {
  final result = _requireResult(expression);
  expect(possibleValues, contains(result.value));
}

/// Asserts that the result of the [expression] is a [RationalResult] with a decimal value equal to [value].
void expectDecimalValue(Expression expression, String value) {
  final result = _requireResult(expression);
  expect(result, isA<RationalResult>());
  final rational = result as RationalResult;
  expect(rational.decimalValue, equals(value));
}

/// Asserts that the result of the [expression] is a [RationalResult] with a decimal value contained in [possibleValues].
void expectDecimalValueOneOf(
  Expression expression,
  List<String> possibleValues,
) {
  final result = _requireResult(expression);
  expect(result, isA<RationalResult>());
  final rational = result as RationalResult;
  expect(possibleValues, contains(rational.decimalValue));
}

/// Asserts that the evaluation of the [expression] results in an error with the given [message].
void expectError(Expression expression, String message) {
  expect(expression.value, isA<ErrorResult>());
  final error = expression.value as ErrorResult;
  expect(error.message, equals(message));
}

/// Asserts that the evaluation of the [expression] results in an indeterminate result.
void expectIndeterminate(Expression expression) {
  expect(expression.value, isA<IndeterminateResult>());
}

/// Asserts that the evaluation of the [expression] results in an error with a non-empty message.
void expectErrorIsNotEmpty(Expression exp) {
  expect(exp.value, isA<ErrorResult>());
  final error = exp.value as ErrorResult;
  expect(error.message, isNotEmpty);
}
