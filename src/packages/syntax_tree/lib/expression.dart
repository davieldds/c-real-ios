class Expression {
  Expression? parent;
  String error;
  num? value;
  int precision;

  Expression({this.parent, this.error = "", this.value, this.precision = 0});

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

  BinaryExpression({
    super.parent,
    super.error,
    super.value,
    super.precision,
    this.leftArg,
    this.rightArg,
  });
}

class UnaryExpression extends Expression {
  Expression? arg;

  UnaryExpression({
    super.parent,
    super.error,
    super.value,
    super.precision,
    this.arg,
  });
}
