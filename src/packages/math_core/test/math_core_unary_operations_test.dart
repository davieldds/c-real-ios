import 'package:math_core/math_core.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  group('MathCore unary operations', () {
    group('square root', () {
      test('sqrt of perfect square', () {
        final root = sqrt(lit(81));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 9, 12);
      });

      test('sqrt of non-perfect square returns fractional', () {
        final root = sqrt(lit(2));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 1.414213562373, 12);
      });

      test('sqrt of zero', () {
        final root = sqrt(lit(0));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 0, 12);
      });

      test('sqrt of negative number reports error', () {
        final root = sqrt(lit(-1));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectErrorIsNotEmpty(root);
      });
    });

    group('factorial', () {
      test('factorial of zero', () {
        final root = fact(lit(0));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 1, 12);
      });

      test('factorial of one', () {
        final root = fact(lit(1));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 1, 12);
      });

      test('factorial of positive integer', () {
        final root = fact(lit(6));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 720, 12);
      });

      test('factorial of negative integer reports error', () {
        final root = fact(lit(-3));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectErrorIsNotEmpty(root);
      });

      test('factorial of non-integer reports error', () {
        final root = fact(lit(3.5));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectErrorIsNotEmpty(root);
      });
    });

    group('nested unary expressions', () {
      test('sqrt(factorial(4))', () {
        final inner = fact(lit(4));
        final root = sqrt(inner);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(inner, 24, 12);
        expectValueWithinPrecision(root, 4.898979486, 12);
      });

      test('factorial(sqrt(9))', () {
        final inner = sqrt(lit(9));
        final root = fact(inner);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(inner, 3, 12);
        expectValueWithinPrecision(root, 6, 12);
      });

      test('propagates child error to parent', () {
        final inner = sqrt(lit(-9));
        final root = fact(inner);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectErrorIsNotEmpty(inner);
        expectIndeterminate(root);
      });
    });

    group('missing arguments', () {
      test('unary expression without argument reports error', () {
        final root = sqrt(lit(4));
        root.arg = null;
        final tree = treeWith(root);

        MathCore.evaluate(tree, 10);

        expectErrorIsNotEmpty(root);
      });
    });
  });
}
