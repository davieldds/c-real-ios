class Expression {
  Expression? parent;
  String? error;
  num? value = 0;
  int? precision = 0;
  Expression();
}

enum Operation { add, sub, mul, div }

class BinaryExpression extends Expression {
  Expression? leftArg;
  Expression? rightArg;
  Operation op;
  BinaryExpression(this.op, this.leftArg, this.rightArg);
}

enum Func { pwr, sqrt, fact }

class UnaryExpression extends Expression {
  Expression? arg;
  Func op;
  UnaryExpression(this.op, this.arg);
}

class SyntaxTree {
  Expression? root;

  void clear() {
    // deletes the tree
  }

  void addExpression(Object input) {
    // add expression to tree
  }

  void replaceExpression(Expression target, Expression replacement) {
    // replace expresion with different one
  }

  void applyUnaryExpression(Expression target, Func function) {
    //applies function onto a Expression
  }

  void applyBinaryExpression(
    Expression target,
    Operation op, {
    required bool shouldBindNext,
    Expression? nextExpression,
  }) {
    // applies operation onto Expression, optionaly bind next Expression and the other argument
  }

  void removeExpression(Expression exp) {
    // remove expression from tree
  }

  List<Expression>? getErrorExpresions() {
    // returns list of expressions with error
    return null;
  }

  List<Expression>? getLeafExpressions() {
    // returns list of leaf expressions
    return null;
  }
}
