import "package:math_core/math_core.dart";
import "package:syntax_tree/evaluation_result.dart";
import "package:syntax_tree/expression.dart";
import "package:test/test.dart";

import "helpers.dart";

String _value(Expression exp) {
  final result = exp.value;
  expect(result, isNotNull);
  return (result as EvaluationResult).value;
}

void _expectPrecisionPrefix(
  Expression Function() build,
  int lowPrecision,
  int highPrecision,
) {
  final root = build();
  final tree = treeWith(root);
  MathCore.evaluate(tree, lowPrecision);
  final lowValue = _value(root);

  MathCore.evaluate(tree, highPrecision);
  final highValue = _value(root);

  MathCore.evaluate(tree, lowPrecision);
  final lowValue2 = _value(root);

  expect(
    highValue.startsWith(lowValue),
    isTrue,
    reason:
        "Expected high precision '$highValue' to start with low precision '$lowValue'",
  );

  expect(
    [lowValue, highValue].contains(lowValue2),
    isTrue,
    reason:
        "Expected 2nd low precision value '$lowValue2' to match original low precision '$lowValue' or high precision '$highValue'",
  );
}

void main() {
  group("MathCore Error Budgeting", () {
    test("mixed operations keep stable prefix", () {
      Expression build() {
        return sub(
          div(
            mul(lit("pi"), add(lit("e"), lit("1.0"))),
            add(sqrt(lit("2.0")), lit("1.0")),
          ),
          lit("0.1"),
        );
      }

      _expectPrecisionPrefix(build, 4, 10);
    });

    test("small denominator budgeting remains consistent", () {
      Expression build() {
        return mul(
          div(lit("1.0"), sub(lit("pi"), lit("3.0"))),
          sub(lit("e"), lit("2.0")),
        );
      }

      _expectPrecisionPrefix(build, 4, 10);
    });

    test("nested real exponent and sqrt are stable", () {
      Expression build() {
        return div(
          pwr(add(lit("2.0"), div(lit("1.0"), lit("7.0"))), sqrt(lit("2.0"))),
          add(lit("1.0"), sqrt(lit("3.0"))),
        );
      }

      _expectPrecisionPrefix(build, 4, 10);
    });

    test("large and tiny magnitudes preserve prefix", () {
      Expression build() {
        return add(
          mul(lit("123456.0"), lit("pi")),
          div(lit("1.0"), mul(lit("e"), lit("10000.0"))),
        );
      }

      _expectPrecisionPrefix(build, 4, 10);
    });
  });
}
