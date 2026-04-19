import "package:math_core/math_core.dart";
import "package:syntax_tree/evaluation_result.dart";
import "package:test/test.dart";

import "helpers.dart";

void main() {
  group("MathCore Real Arithmetic", () {
    test("evaluates addition", () {
      final root = add(lit("pi"), lit("1.0"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expectValue(root, "4.141592653589");
    });

    test("evaluates subtraction", () {
      final root = sub(lit("pi"), lit("1.0"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expectValue(root, "2.141592653589");
    });

    test("addition pause/resume precision", () {
      final root = add(lit("pi"), lit("1.0"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);
      expectValue(root, "4.1415");

      MathCore.evaluate(tree, 10);
      expectValue(root, "4.1415926535");

      MathCore.evaluate(tree, 4);
      expectValue(root, "4.1415");
    });

    test("multiplication pause/resume precision", () {
      final root = mul(lit("pi"), lit("e"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);
      expectValue(root, "8.5397");

      MathCore.evaluate(tree, 10);
      expectValue(root, "8.5397342226");

      MathCore.evaluate(tree, 4);
      expectValue(root, "8.5397");
    });

    test("evaluates multiplication", () {
      final root = mul(lit("pi"), lit("e"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 10);

      expectValue(root, "8.5397342226");
    });

    test("evaluates division", () {
      final root = div(lit("pi"), lit("e"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 10);

      expectValue(root, "1.1557273497");
    });

    test("does not crash on division by zero", () {
      final root = div(lit("pi"), lit("0.0"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<ErrorResult>());
    });

    test("reports specific error on division by zero", () {
      final root = div(lit("pi"), lit("0.0"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expectError(root, "Division by zero");
    });

    test("evaluates real to the power of 0", () {
      final root = pwr(lit("pi"), lit("0.0"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 10);

      expectValue(root, "1.0000000000");
    });

    test("evaluates real to the power of positive integer", () {
      final root = pwr(lit("pi"), lit("2.0"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 10);

      expectValue(root, "9.8696044010");
    });

    test("evaluates real to the power of negative integer", () {
      final root = pwr(lit("pi"), sub(lit("0.0"), lit("2.0")));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 10);

      expectValue(root, "0.10132118364");
    });

    test("real zero to the power of negative integer reports error", () {
      final root = pwr(lit("0.0"), sub(lit("0.0"), lit("3.0")));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expect(root.value, isA<ErrorResult>());
    });

    test("zero to the power of negative integer reports specific error", () {
      final root = pwr(lit("0.0"), sub(lit("0.0"), lit("3.0")));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectError(root, "Zero cannot be raised to a non-positive power");
    });

    test("evaluates negative rational to even power", () {
      final root = pwr(sub(lit("0.0"), lit("0.5")), lit("2.0"));
      final tree = treeWith(root);

      MathCore.evaluate(tree, 4);

      expectValue(root, "1/4");
      expectDecimalValue(root, "0.2500");
    });

    test("evaluates negative rational to odd power", () {
      final root = pwr(sub(lit("0.0"), lit("0.5")), lit("3.0"));
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
