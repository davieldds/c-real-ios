import 'package:math_core/math_core.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  group('MathCore precision propagation', () {
    test('applies requested precision to a single literal', () {
      final root = lit(1.2345);
      final tree = treeWith(root);

      MathCore.evaluate(tree, 6);

      expectPrecision(root, 6);
    });

    test('propagates precision to all nodes in a nested tree', () {
      final left = add(lit(1), lit(2));
      final right = mul(lit(3), lit(4));
      final root = sub(left, right);
      final tree = treeWith(root);

      MathCore.evaluate(tree, 9);

      expectAllNodesPrecision(root, 9);
    });

    test('keeps precision consistent across mixed unary/binary tree', () {
      final inner = pwr(lit(2), lit(3));
      final root = sqrt(add(inner, lit(9)));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 7);

      expectAllNodesPrecision(root, 7);
    });

    test('precision propagation still occurs when an error is produced', () {
      final root = div(lit(1), lit(0));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 5);

      expectAllNodesPrecision(root, 5);
      expectErrorIsNotEmpty(root);
    });

    test('budgets correct precision for unary child evaluation', () {
      final child = lit(2.25);
      final root = sqrt(child);
      final tree = treeWith(root);

      MathCore.evaluate(tree, 3);

      expectRealScale(child, 5);
      expectRealScale(root, 3);
    });

    test('budgets correct precision for additive operands', () {
      final left = lit(1.1);
      final right = lit(2.2);
      final root = add(left, right);
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectRealScale(left, 6);
      expectRealScale(right, 6);
      expectRealScale(root, 4);
    });

    test('budgets correct precision for multiplicative operands', () {
      final left = lit(1.2);
      final right = lit(3.4);
      final root = mul(left, right);
      final tree = treeWith(root);

      MathCore.evaluate(tree, 3);

      expectRealScale(left, 13);
      expectRealScale(right, 11);
      expectRealScale(root, 3);
    });

    test('budgets correct precision for division operands', () {
      final left = lit(7.5);
      final right = lit(2.5);
      final root = div(left, right);
      final tree = treeWith(root);

      MathCore.evaluate(tree, 2);

      expectRealScale(left, 11);
      expectRealScale(right, 13);
      expectRealScale(root, 2);
    });

    test('budgets correct precision for power base', () {
      final base = lit(1.2);
      final exponent = lit(3);
      final root = pwr(base, exponent);
      final tree = treeWith(root);

      MathCore.evaluate(tree, 2);

      expectRealScale(base, 6);
      expectRealScale(root, 2);
    });

    test('normalizes negative precision for budgeting', () {
      final child = lit(2.25);
      final root = sqrt(child);
      final tree = treeWith(root);

      MathCore.evaluate(tree, -3);

      expectRealScale(child, 2);
      expectRealScale(root, 0);
    });
  });

  group('MathCore mixed expression evaluation', () {
    test('evaluates a deeply nested mixed tree', () {
      // ((3 + 5) * (2 ^ 3)) / sqrt(16) = (8 * 8) / 4 = 16
      final sum = add(lit(3), lit(5));
      final power = pwr(lit(2), lit(3));
      final product = mul(sum, power);
      final root = div(product, sqrt(lit(16)));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expectValueWithinPrecision(sum, 8, 12);
      expectValueWithinPrecision(power, 8, 12);
      expectValueWithinPrecision(product, 64, 12);
      expectValueWithinPrecision(root, 16, 12);
    });

    test('handles alternating unary and binary operations', () {
      // factorial(3) + sqrt(9) * 2 = 6 + 3 * 2 = 12
      final left = fact(lit(3));
      final right = mul(sqrt(lit(9)), lit(2));
      final root = add(left, right);
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expectValueWithinPrecision(left, 6, 12);
      expectValueWithinPrecision(right, 6, 12);
      expectValueWithinPrecision(root, 12, 12);
    });

    test('propagates child error through mixed tree', () {
      final errorNode = sqrt(lit(-4));
      final root = add(errorNode, mul(lit(2), lit(3)));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 10);

      expectErrorIsNotEmpty(errorNode);
      expectIndeterminate(root);
    });

    test('evaluates 0^0 as an error', () {
      final base = lit(0);
      final exponent = lit(0);
      final root = pwr(base, exponent);
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expectErrorIsNotEmpty(root);
    });

    test('handles division by a really small number', () {
      final left = lit(1);
      final right = div(lit(1), lit(1000000000000000));
      final root = div(left, right);
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expectValueWithinPrecision(root, 1000000000000000, 12);
    });
  });
}
