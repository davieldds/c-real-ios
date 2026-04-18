import "package:math_core/math_core.dart";
import "package:test/test.dart";

import "helpers.dart";

void main() {
  group("MathCore unary operations", () {
    group("square root", () {
      test("sqrt of perfect square", () {
        final root = sqrt(lit("81.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["9", "9.0000"]);
      });

      test("sqrt of non-perfect square", () {
        final root = sqrt(lit("2.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValue(root, "1.4142");
      });

      test("sqrt of zero", () {
        final root = sqrt(lit("0.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["0", "0.0000"]);
      });

      test("sqrt of negative number reports error", () {
        final root = sqrt(sub(lit("0.0"), lit("1.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("sqrt of negative number reports specific error", () {
        final root = sqrt(sub(lit("0.0"), lit("1.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectError(root, "Square root of negative value");
      });
    });

    group("factorial", () {
      test("factorial of zero", () {
        final root = fact(lit("0.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["1", "1.0000"]);
      });

      test("factorial of one", () {
        final root = fact(lit("1.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["1", "1.0000"]);
      });

      test("factorial of positive integer", () {
        final root = fact(lit("6.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["720", "720.0000"]);
      });

      test("factorial of negative integer reports error", () {
        final root = fact(sub(lit("0.0"), lit("3.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("factorial of negative integer reports specific error", () {
        final root = fact(sub(lit("0.0"), lit("3.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectError(
          root,
          "Factorial is only defined for non-negative integers",
        );
      });

      test("factorial of non-integer reports error", () {
        final root = fact(lit("3.5"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("factorial of non-integer reports specific error", () {
        final root = fact(lit("3.5"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectError(root, "Factorial is only defined for integers");
      });
    });

    group("nested unary expressions", () {
      test("sqrt(factorial(4))", () {
        final root = sqrt(fact(lit("4.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValue(root, "4.8989");
      });

      test("factorial(sqrt(9))", () {
        final root = fact(sqrt(lit("9.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["6", "6.0000"]);
      });

      test("propagates child error to parent", () {
        final inner = sqrt(sub(lit("0.0"), lit("1.0")));
        final root = fact(inner);
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(inner);
        expectIndeterminate(root);
      });
    });

    group("missing arguments", () {
      test("unary expression without argument reports error", () {
        final root = sqrt(lit("4.0"));
        root.arg = null;
        final tree = treeWith(root);

        MathCore.evaluate(tree, 10);

        expectErrorIsNotEmpty(root);
      });

      test("unary expression without argument reports specific error", () {
        final root = sqrt(lit("4.0"));
        root.arg = null;
        final tree = treeWith(root);

        MathCore.evaluate(tree, 10);

        expectError(root, "Missing argument");
      });
    });
  });
}
