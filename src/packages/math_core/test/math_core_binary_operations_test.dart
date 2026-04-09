import 'package:math_core/math_core.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  group('MathCore binary operations', () {
    group('addition', () {
      test('adds two positive integers', () {
        final left = lit(2);
        final right = lit(3);
        final root = add(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 8);

        expectValueWithinPrecision(root, 5, 8);
      });

      test('adds a negative and a positive integer', () {
        final left = lit(-4);
        final right = lit(10);
        final root = add(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 8);

        expectValueWithinPrecision(root, 6, 8);
      });

      test('adds floating point values', () {
        final left = lit(2.5);
        final right = lit(3.25);
        final root = add(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 5.75, 12);
      });
    });

    group('subtraction', () {
      test('subtracts two positive integers', () {
        final left = lit(10);
        final right = lit(3);
        final root = sub(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 8);

        expectValueWithinPrecision(root, 7, 8);
      });

      test('subtracts resulting in negative', () {
        final left = lit(2);
        final right = lit(9);
        final root = sub(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 8);

        expectValueWithinPrecision(root, -7, 8);
      });

      test('subtracts floating point values', () {
        final left = lit(10.5);
        final right = lit(3.2);
        final root = sub(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 7.3, 12);
      });
    });

    group('multiplication', () {
      test('multiplies two positive integers', () {
        final left = lit(6);
        final right = lit(7);
        final root = mul(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 8);

        expectValueWithinPrecision(root, 42, 8);
      });

      test('multiplies by zero', () {
        final left = lit(123);
        final right = lit(0);
        final root = mul(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 8);

        expectValueWithinPrecision(root, 0, 8);
      });

      test('multiplies negatives', () {
        final left = lit(-3);
        final right = lit(-5);
        final root = mul(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 8);

        expectValueWithinPrecision(root, 15, 8);
      });

      test('multiplies floating point values', () {
        final left = lit(2.5);
        final right = lit(4);
        final root = mul(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 10.0, 12);
      });
    });

    group('division', () {
      test('divides two positive integers', () {
        final left = lit(10);
        final right = lit(2);
        final root = div(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 5, 12);
      });

      test('divides resulting in fractional value', () {
        final left = lit(7);
        final right = lit(2);
        final root = div(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 3.5, 12);
      });

      test('division by zero records an error', () {
        final left = lit(10);
        final right = lit(0);
        final root = div(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectErrorIsNotEmpty(root);
      });
    });

    group('power', () {
      test('raises to a positive integer power', () {
        final left = lit(2);
        final right = lit(3);
        final root = pwr(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 8, 12);
      });

      test('raises to zero power', () {
        final left = lit(5);
        final right = lit(0);
        final root = pwr(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 1, 12);
      });

      test('raises to a negative integer power', () {
        final left = lit(2);
        final right = lit(-3);
        final root = pwr(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 0.125, 12);
      });

      test('raises zero to a positive power', () {
        final left = lit(0);
        final right = lit(4);
        final root = pwr(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 0, 12);
      });

      test('raises a negative base to an odd power', () {
        final left = lit(-2);
        final right = lit(3);
        final root = pwr(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, -8, 12);
      });

      test('raises a negative base to an even power', () {
        final left = lit(-2);
        final right = lit(4);
        final root = pwr(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(root, 16, 12);
      });

      test('raises zero to a negative power reports error', () {
        final left = lit(0);
        final right = lit(-2);
        final root = pwr(left, right);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectErrorIsNotEmpty(root);
      });
    });

    group('nested binary expressions', () {
      test('evaluates a mixed tree left-to-right', () {
        final left = add(lit(1), lit(2));
        final root = mul(left, lit(3));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValueWithinPrecision(left, 3, 12);
        expectValueWithinPrecision(root, 9, 12);
      });

      test('propagates errors from child expressions', () {
        final left = div(lit(1), lit(0));
        final root = add(left, lit(2));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectErrorIsNotEmpty(left);
        expectIndeterminate(root);
      });
    });

    group('missing arguments', () {
      test('binary expression without left argument reports error', () {
        final root = AddExpression(rightArg: lit(1));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 10);

        expectErrorIsNotEmpty(root);
      });

      test('binary expression without right argument reports error', () {
        final root = AddExpression(leftArg: lit(1));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 10);

        expectErrorIsNotEmpty(root);
      });

      test('binary expression without any arguments reports error', () {
        final root = AddExpression();
        final tree = treeWith(root);

        MathCore.evaluate(tree, 10);

        expectErrorIsNotEmpty(root);
      });
    });

    group('parent relationships', () {
      test('does not require parent to evaluate correctly', () {
        final root = mul(lit(4), lit(5));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 8);

        expectValueWithinPrecision(root, 20, 8);
      });

      test('respects explicit parent links during evaluation', () {
        final root = add(lit(2), lit(2));
        final tree = treeWith(root);
        root.leftArg?.parent = root;
        root.rightArg?.parent = root;

        MathCore.evaluate(tree, 8);

        expectParent(root.leftArg as Expression, root);
        expectParent(root.rightArg as Expression, root);
        expectValueWithinPrecision(root, 4, 8);
      });
    });
  });
}
