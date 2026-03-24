import 'package:math_core/math_core.dart';
import 'package:syntax_tree/syntax_tree.dart';

void main(List<String> args) {
  var tree = SyntaxTree();
  MathCore.evaluate(tree, 10);
}
