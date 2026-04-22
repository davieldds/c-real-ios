import 'package:syntax_tree/evaluation_result.dart';

/// @author Lukas Pollak
/// This file defines the base classes for expressions in the syntax tree, including binary and unary expressions.

/// Base class for all expressions in the syntax tree.
/// Construtor: [Expression] - Initializes an expression with an optional evaluation result value.
class Expression {
  Expression? parent;
  EvaluationResult? value;

  Expression({this.value});
}

/// Represents a binary expression with two arguments of type [Expression].
class BinaryExpression extends Expression {
  Expression? leftArg;
  Expression? rightArg;

  BinaryExpression({super.value, this.leftArg, this.rightArg});
}

/// Represents a unary expression with a single argument of type [Expression].
class UnaryExpression extends Expression {
  Expression? arg;

  UnaryExpression({super.value, this.arg});
}
