import "package:math_core/math_core.dart";
import "package:syntax_tree/syntax_tree.dart";
import "package:test/test.dart";

import "helpers.dart";

void main() {
  group("MathCore", () {
    test("evaluates empty tree without throwing", () {
      final tree = SyntaxTree();
      expect(() => MathCore.evaluate(tree, 10), returnsNormally);
      expect(tree.root, isNull);
    });

    test("does not replace root expression", () {
      final root = lit("42");
      final tree = SyntaxTree(root);

      MathCore.evaluate(tree, 5);

      expect(tree.root, same(root));
    });
  });
}
