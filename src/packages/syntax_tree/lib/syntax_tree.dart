import 'package:syntax_tree/expression.dart';

class SyntaxTree {
  Expression? root;

  SyntaxTree([this.root]);

  void clear() {
    // deletes the tree
  }

  void addExpression(Object input) {
    // add expression to tree
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
