import 'package:syntax_tree/evaluation_result.dart';

class Expression {
  Expression? parent;
  EvaluationResult? value;

  Expression({this.parent, this.value});

  void replaceWith(Expression replacement) {
    // replace expression with different one
  }

  void applyExpression(Object op, {Expression? nextExpression}) {
    // applies operation onto Expression,
    // optionally bind next Expression and the other argument
  }
}

class BinaryExpression extends Expression {
  Expression? leftArg;
  Expression? rightArg;

  BinaryExpression({super.parent, super.value, this.leftArg, this.rightArg});
}

class UnaryExpression extends Expression {
  Expression? arg;

  UnaryExpression({super.parent, super.value, this.arg});
}
