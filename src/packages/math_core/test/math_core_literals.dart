import "package:math_core/math_core.dart";
import "package:math_core/series_cache.dart";
import "package:test/test.dart";

import "helpers.dart";

void main() {
  group("MathCore literal evaluation", () {
    group("rational numbers", () {
      test("zero", () {
        final root = lit("0.0");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValue(root, "0");
        expectDecimalValue(root, "0.0000");
      });

      test("zero with zero precision", () {
        final root = lit("0.0");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 0);

        expectValue(root, "0");
        expectDecimalValue(root, "0");
      });

      test("positive integer", () {
        final root = lit("42.0");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValue(root, "42");
        expectDecimalValue(root, "42.0000");
      });

      test("positive decimal smaller than 1", () {
        final root = lit("0.7177");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValue(root, "7177/10000");
        expectDecimalValue(root, "0.7177");
      });

      test("positive decimal larger than 1", () {
        final root = lit("3.1415");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValue(root, "6283/2000");
        expectDecimalValue(root, "3.1415");
      });

      test("very small decimal", () {
        final root = lit("0.000000000123");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 12);

        expectValue(root, "123/1000000000000");
        expectDecimalValue(root, "0.000000000123");
      });

      test("very large decimal", () {
        final root = lit("12345678901234567890.0");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValue(root, "12345678901234567890");
        expectDecimalValue(root, "12345678901234567890.0000");
      });
    });

    group("irrational numbers", () {
      test("pi", () {
        final root = lit("pi");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 10);

        expectValue(root, "3.1415926535");
      });

      test("e", () {
        final root = lit("e");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 10);

        expectValue(root, "2.7182818284");
      });

      test("pi pause/resume calculation", () {
        resetSeriesCaches();

        final root = lit("pi");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValue(root, "3.1415");

        MathCore.evaluate(tree, 10);

        expectValue(root, "3.1415926535");

        MathCore.evaluate(tree, 4);

        expectValue(root, "3.1415");
      });

      test("e pause/resume calculation", () {
        resetSeriesCaches();

        final root = lit("e");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectValue(root, "2.7182");

        MathCore.evaluate(tree, 10);

        expectValue(root, "2.7182818284");

        MathCore.evaluate(tree, 4);

        expectValue(root, "2.7182");
      });
    });

    group("malformed arguments", () {
      test("literal with empty argument reports error", () {
        final root = lit("");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test(
        "literal with invalid argument reports error (missing decimal separator)",
        () {
          final root = lit("1");
          final tree = treeWith(root);

          MathCore.evaluate(tree, 4);

          expectErrorIsNotEmpty(root);
        },
      );

      test(
        "literal with invalid argument reports error (multiple decimal separators)",
        () {
          final root = lit("1.2.3");
          final tree = treeWith(root);

          MathCore.evaluate(tree, 4);

          expectErrorIsNotEmpty(root);
        },
      );

      test("literal with invalid argument reports error (non-numeric)", () {
        final root = lit("abc.def");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });

      test("literal with invalid argument reports error (negative number)", () {
        final root = lit("-1");
        final tree = treeWith(root);

        MathCore.evaluate(tree, 4);

        expectErrorIsNotEmpty(root);
      });
    });
  });
}
