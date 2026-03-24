import 'package:math_core/math_core.dart';
import 'package:syntax_tree/syntax_tree.dart';
import 'package:test/test.dart';

void main() {
  group('MathCore', () {
    test('evaluates empty tree', () {
      final tree = SyntaxTree();
      MathCore.evaluate(tree, 10);
      expect(tree.root, isNull);
    });
  });
}
