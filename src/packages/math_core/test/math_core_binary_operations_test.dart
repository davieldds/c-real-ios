import "package:math_core/math_core.dart";
import "package:syntax_tree/expression_types.dart";
import "package:test/test.dart";

import "helpers.dart";

void main() {
  group("MathCore binary operations", () {
    group("addition", () {
      test("adds two positive integers", () {
        final root = add(lit("2.0"), lit("3.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["5", "5.0000"]);
      });

      test("adds a negative and a positive integer", () {
        final root = add(sub(lit("0.0"), lit("4.0")), lit("10.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["6", "6.0000"]);
      });

      test("add decimal values", () {
        final root = add(lit("2.5"), lit("3.25"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["23/4", "5.7500"]);
      });
    });

    group("subtraction", () {
      test("subtracts two positive integers", () {
        final root = sub(lit("10.0"), lit("3.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["7", "7.0000"]);
      });

      test("subtracts resulting in negative", () {
        final root = sub(lit("3.0"), lit("10.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["-7", "-7.0000"]);
      });

      test("subtracts decimal values", () {
        final root = sub(lit("10.5"), lit("3.2"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["73/10", "7.3000"]);
      });
    });

    group("multiplication", () {
      test("multiplies two positive integers", () {
        final root = mul(lit("6.0"), lit("7.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["42", "42.0000"]);
      });

      test("multiplies by zero", () {
        final root = mul(lit("10.0"), lit("0.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["0", "0.0000"]);
      });

      test("multiplies negatives", () {
        final root = mul(
          sub(lit("0.0"), lit("3.0")),
          sub(lit("0.0"), lit("5.0")),
        );
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["15", "15.0000"]);
      });

      test("multiplies decimal values", () {
        final root = mul(lit("1.5"), lit("2.5"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["15/4", "3.7500"]);
      });
    });

    group("division", () {
      test("divides two positive integers", () {
        final root = div(lit("10.0"), lit("2.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["5", "5.0000"]);
      });

      test("divides resulting in fractional value", () {
        final root = div(lit("7.0"), lit("2.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["7/2", "3.5000"]);
      });

      test("division by zero records an error", () {
        final root = div(lit("10.0"), lit("0.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("division of zero by zero records an error", () {
        final root = div(lit("0.0"), lit("0.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });
    });

    group("power", () {
      test("raises to a positive integer power", () {
        final root = pwr(lit("2.0"), lit("3.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["8", "8.0000"]);
      });

      test("raises to zero power", () {
        final root = pwr(lit("2.0"), lit("0.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["1", "1.0000"]);
      });

      test("raises to a negative integer power", () {
        final root = pwr(lit("2.0"), sub(lit("0.0"), lit("3.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["1/8", "0.1250"]);
      });

      test("raises to a non-integer power", () {
        final root = pwr(lit("9.0"), lit("0.5"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["3", "3.0000"]);
      });

      test("raises to irrational power", () {
        final root = pwr(pwr(lit("2.0"), sqrt(lit("2.0"))), sqrt(lit("2.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["4", "4.0000"]);
      });

      test("raises to real exponent derived from sqrt", () {
        final root = pwr(lit("9.0"), sqrt(lit("0.25")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["3", "3.0000"]);
      });

      test("raises to irrational real exponent", () {
        final root = pwr(lit("2.0"), sqrt(lit("2.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValue(root, "2.6651");
      });

      test("negative base to irrational exponent reports error", () {
        final root = pwr(sub(lit("0.0"), lit("2.0")), sqrt(lit("2.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("raises zero to a positive power", () {
        final root = pwr(lit("0.0"), lit("3.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["0", "0.0000"]);
      });

      test("raises a negative base to an odd power", () {
        final root = pwr(sub(lit("0.0"), lit("2.0")), lit("3.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["-8", "-8.0000"]);
      });

      test("raises a negative base to an even power", () {
        final root = pwr(sub(lit("0.0"), lit("2.0")), lit("4.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["16", "16.0000"]);
      });

      test("raises a negative to a non-integer power reports error", () {
        final root = pwr(sub(lit("0.0"), lit("2.0")), lit("0.5"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("raises zero to a negative power reports error", () {
        final root = pwr(lit("0.0"), sub(lit("0.0"), lit("3.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("raises zero to zero power reports error", () {
        final root = pwr(lit("0.0"), lit("0.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });
    });

    group("ln and log", () {
      test("evaluates natural logarithm", () {
        final root = ln(lit("e"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["1", "1.0000"]);
      });

      test("evaluates natural logarithm at higher precision", () {
        final root = ln(lit("e"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 10);

        expectValueOneOf(root, ["1", "1.0000000000"]);
      });

      test("evaluates log base e of e", () {
        final root = log(lit("e"), lit("e"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 10);

        expectValueOneOf(root, ["1", "1.0000000000"]);
      });

      test("evaluates common logarithm", () {
        final root = log(lit("10.0"), lit("100.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["2", "2.0000"]);
      });

      test("evaluates log100(10) as exactly 0.5", () {
        final root = log(lit("100.0"), lit("10.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["1/2", "0.5000"]);
      });

      test("ln of a negative number reports error", () {
        final root = ln(sub(lit("0.0"), lit("1.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("log of a negative number reports error", () {
        final root = log(lit("10.0"), sub(lit("0.0"), lit("1.0")));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("ln of zero reports error", () {
        final root = ln(lit("0.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("log with base 1 reports error", () {
        final root = log(lit("1.0"), lit("10.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("log with non-positive base reports error", () {
        final root = log(sub(lit("0.0"), lit("2.0")), lit("10.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });
    });

    group("nested binary expressions", () {
      test("evaluates a mixed tree left-to-right", () {
        final root = mul(add(lit("1.0"), lit("2.0")), lit("3.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValueOneOf(root, ["9", "9.0000"]);
      });

      test("propagates errors from child expressions", () {
        final left = div(lit("1.0"), lit("0.0"));
        final root = add(left, lit("2.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(left);
        expectIndeterminate(root);
      });
    });

    group("missing arguments", () {
      test("binary expression without left argument reports error", () {
        final root = AddExpression(rightArg: lit("1.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("binary expression without right argument reports error", () {
        final root = AddExpression(leftArg: lit("1.0"));
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("binary expression without any arguments reports error", () {
        final root = AddExpression();
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });
    });
  });
}
