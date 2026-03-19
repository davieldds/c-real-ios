class Expresion {
  Expresion? parent;
  num? value = 0;
  int? precision = 0;
  Expresion();
}

enum Operation { add, sub, mul, div }

class BinaryExpresion extends Expresion {
  Expresion? leftArg;
  Expresion? rightArg;
  Operation op;
  BinaryExpresion(this.op, this.leftArg, this.rightArg);
}

enum Func { pwr, sqrt, fact }

class UnaryExpresion extends Expresion {
  Expresion? arg;
  Func op;
  UnaryExpresion(this.op, this.arg);
}

class SyntaxTree {
  Expresion? root;

  void addExpresion(Object input) {
    // add expresion to tree
  }

  void removeExpresion(Expresion exp) {
    // remove expresion from tree
  }

  List<Expresion>? getLeafExpresions() {
    // return list of leaf nodes
  }
}
