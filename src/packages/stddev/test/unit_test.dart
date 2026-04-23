import 'package:test/test.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:syntax_tree/evaluation_result.dart';

import '../bin/stddev.dart';

void main() {
  group('loadPrecisionFromArgs', () {
    test('returns default precision when no arguments provided', () {
      expect(loadPrecisionFromArgs([]), equals(DEFAULT_PRECISION));
    });

    test('parses precision from -p flag', () {
      expect(loadPrecisionFromArgs(['-p', '5']), equals(5));
    });

    test('parses precision from --precision flag', () {
      expect(loadPrecisionFromArgs(['--precision', '20']), equals(20));
    });

    test('throws ArgumentError when value is missing', () {
      expect(() => loadPrecisionFromArgs(['-p']), throwsArgumentError);
    });

    test('throws ArgumentError when value is invalid', () {
      expect(() => loadPrecisionFromArgs(['-p', 'abc']), throwsArgumentError);
      expect(() => loadPrecisionFromArgs(['-p', '-5']), throwsArgumentError);
    });
  });

  group('buildBalancedAdditionExpression', () {
    test('returns 0 for empty list', () {
      final expr = buildBalancedAdditionExpression([], (x) => x);
      expect(expr, isA<LiteralExpression>());
      expect((expr as LiteralExpression).value?.value, equals('0'));
    });

    test('returns the element itself for a single element list', () {
      final literal = LiteralExpression(
        equationForm: "5",
        value: RationalResult(
          numerator: BigInt.from(5),
          denominator: BigInt.one,
        ),
      );
      final expr = buildBalancedAdditionExpression([literal], (x) => x);
      expect(expr, equals(literal));
    });

    test('builds a balanced addition tree for multiple elements', () {
      final literals = List.generate(
        4,
        (i) => LiteralExpression(
          equationForm: "$i",
          value: RationalResult(
            numerator: BigInt.from(i),
            denominator: BigInt.one,
          ),
        ),
      );

      final expr = buildBalancedAdditionExpression(literals, (x) => x);
      expect(expr, isA<AddExpression>());

      final addExpr = expr as AddExpression;
      expect(addExpr.leftArg, isA<AddExpression>());
      expect(addExpr.rightArg, isA<AddExpression>());
    });
  });

  group('buildStddevExpression', () {
    test('builds a SqrtExpression', () {
      final literals = List.generate(
        3,
        (i) => LiteralExpression(
          equationForm: "$i",
          value: RationalResult(
            numerator: BigInt.from(i),
            denominator: BigInt.one,
          ),
        ),
      );

      final expr = buildStddevExpression(literals);
      expect(expr, isA<SqrtExpression>());
    });
  });
}
