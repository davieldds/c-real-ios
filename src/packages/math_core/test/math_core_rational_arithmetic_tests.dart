import "package:math_core/math_core.dart";
import "package:syntax_tree/evaluation_result.dart";
import "package:test/test.dart";

import "helpers.dart";

void main() {
  group("MathCore Rational Arithmetic", () {
    test("evaluates addition of two rationals", () {
      final root = add(lit("0.5"), lit("0.3"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectValue(root, "4/5");
      expectDecimalValue(root, "0.8000");
    });

    test("evaluates subtraction of two rationals", () {
      final root = sub(lit("0.5"), lit("0.3"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectValue(root, "1/5");
      expectDecimalValue(root, "0.2000");
    });

    test("evaluates multiplication of two rationals", () {
      final root = mul(lit("0.5"), lit("0.3"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectValue(root, "3/20");
      expectDecimalValue(root, "0.1500");
    });

    test("evaluates division of two rationals", () {
      final root = div(lit("0.5"), lit("0.3"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectValue(root, "5/3");
      expectDecimalValue(root, "1.6666");
    });

    test("does not crash on division by zero", () {
      final root = div(lit("0.5"), lit("0.3"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expect(root.value, isA<ErrorResult>());
    });

    test("reports specific error on division by zero", () {
      final root = div(lit("0.5"), lit("0.3"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectError(root, "Division by zero");
    });

    test("evaluates rational to the power of 0", () {
      final root = pwr(lit("0.5"), lit("0.0"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectValue(root, "1");
      expectDecimalValue(root, "1.0000");
    });

    test("evaluates rational to the power of positive integer", () {
      final root = pwr(lit("0.5"), lit("3"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectValue(root, "1/8");
      expectDecimalValue(root, "0.1250");
    });

    test("evaluates rational to the power of negative integer", () {
      final root = pwr(lit("0.5"), sub(lit("0"), lit("3")));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectValue(root, "8");
      expectDecimalValue(root, "8.0000");
    });

    test("zero to the power of negative integer reports error", () {
      final root = pwr(lit("0"), sub(lit("0"), lit("3")));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expect(root.value, isA<ErrorResult>());
    });

    test("zero to the power of negative integer reports specific error", () {
      final root = pwr(lit("0"), sub(lit("0"), lit("3")));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectError(root, "Zero cannot be raised to a non-positive power");
    });

    test("evaluates negative rational to even power", () {
      final root = pwr(sub(lit("0"), lit("0.5")), lit("2"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectValue(root, "1/4");
      expectDecimalValue(root, "0.2500");
    });

    test("evaluates negative rational to odd power", () {
      final root = pwr(sub(lit("0"), lit("0.5")), lit("3"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectValue(root, "-1/8");
      expectDecimalValue(root, "-0.1250");
    });

    test("positive real base to rational power of 0 is rational", () {
      final root = pwr(lit("pi"), lit("0.0"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectValue(root, "1");
      expectDecimalValue(root, "1.0000");
    });
  });
}
