import 'package:math_core/math_core.dart';
import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:syntax_tree/syntax_tree.dart';
import 'package:test/test.dart';

void main() {
  group('MathCore', () {
    test('evaluates empty tree without throwing', () {
      final tree = SyntaxTree();
      expect(() => MathCore.evaluate(tree, 10), returnsNormally);
      expect(tree.root, isNull);
    });

    test('does not replace root expression', () {
      final root = LiteralExpression(
        value: RationalResult(
          numerator: BigInt.from(42),
          denominator: BigInt.one,
        ),
      );
      final tree = SyntaxTree(root);

      MathCore.evaluate(tree, 5);

      expect(tree.root, same(root));
    });

    test('evaluates literal expression without throwing', () {
      final root = LiteralExpression(
        value: RealResult(mantissa: BigInt.from(314), scale: 2),
      );
      final tree = SyntaxTree(root);

      expect(() => MathCore.evaluate(tree, 8), returnsNormally);
    });

    test('does not throw when literal has existing evaluation result', () {
      final root = LiteralExpression(value: ErrorResult('custom error'));
      final tree = SyntaxTree(root);

      expect(() => MathCore.evaluate(tree, 12), returnsNormally);
    });
  });
}
