import 'package:math_core/math_core.dart';
import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  group('MathCore Rational Arithmetic', () {
    test('keeps literal as rational', () {
      final root = LiteralExpression(
        value: RationalResult(
          numerator: BigInt.from(1),
          denominator: BigInt.from(2),
        ),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<RationalResult>());
    });

    test('evaluates addition of two rationals', () {
      final root = add(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(2),
          ),
        ),
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(3),
          ),
        ),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<RationalResult>());
      final result = root.value as RationalResult;
      expect(result.numerator, BigInt.from(5));
      expect(result.denominator, BigInt.from(6));
    });

    test('evaluates subtraction of two rationals', () {
      final root = sub(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(2),
          ),
        ),
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(3),
          ),
        ),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<RationalResult>());
      final result = root.value as RationalResult;
      expect(result.numerator, BigInt.from(1));
      expect(result.denominator, BigInt.from(6));
    });

    test('evaluates multiplication of two rationals', () {
      final root = mul(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(2),
          ),
        ),
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(3),
          ),
        ),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<RationalResult>());
      final result = root.value as RationalResult;
      expect(result.numerator, BigInt.from(1));
      expect(result.denominator, BigInt.from(6));
    });

    test('evaluates division of two rationals', () {
      final root = div(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(2),
          ),
        ),
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(3),
          ),
        ),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<RationalResult>());
      final result = root.value as RationalResult;
      expect(result.numerator, BigInt.from(3));
      expect(result.denominator, BigInt.from(2));
    });

    test('does not crash on division by zero', () {
      final root = div(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(2),
          ),
        ),
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.zero,
            denominator: BigInt.from(3),
          ),
        ),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<ErrorResult>());
    });

    test('reports specific error on division by zero', () {
      final root = div(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(2),
          ),
        ),
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.zero,
            denominator: BigInt.from(3),
          ),
        ),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expectError(root, 'Division by zero');
    });

    test('evaluates rational to the power of 0', () {
      final root = pwr(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(2),
          ),
        ),
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(0),
            denominator: BigInt.from(1),
          ),
        ),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<RationalResult>());
      final result = root.value as RationalResult;
      expect(result.numerator, BigInt.from(1));
      expect(result.denominator, BigInt.from(1));
    });

    test('evaluates rational to the power of positive integer', () {
      final root = pwr(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(2),
          ),
        ),
        lit(3),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<RationalResult>());
      final result = root.value as RationalResult;
      expect(result.numerator, BigInt.from(1));
      expect(result.denominator, BigInt.from(8));
    });

    test('evaluates rational to the power of negative integer', () {
      final root = pwr(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(1),
            denominator: BigInt.from(2),
          ),
        ),
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(-3),
            denominator: BigInt.from(1),
          ),
        ),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<RationalResult>());
      final result = root.value as RationalResult;
      expect(result.numerator, BigInt.from(8));
      expect(result.denominator, BigInt.from(1));
    });

    test('zero to the power of negative integer reports error', () {
      final root = pwr(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.zero,
            denominator: BigInt.from(1),
          ),
        ),
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(-3),
            denominator: BigInt.from(1),
          ),
        ),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<ErrorResult>());
    });

    test('zero to the power of negative integer reports specific error', () {
      final root = pwr(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.zero,
            denominator: BigInt.from(1),
          ),
        ),
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(-3),
            denominator: BigInt.from(1),
          ),
        ),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expectError(root, 'Zero cannot be raised to a non-positive power');
    });

    test('evaluates negative rational to even power', () {
      final root = pwr(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(-1),
            denominator: BigInt.from(2),
          ),
        ),
        lit(2),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<RationalResult>());
      final result = root.value as RationalResult;
      expect(result.numerator, BigInt.from(1));
      expect(result.denominator, BigInt.from(4));
    });

    test('evaluates negative rational to odd power', () {
      final root = pwr(
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(-1),
            denominator: BigInt.from(2),
          ),
        ),
        lit(3),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<RationalResult>());
      final result = root.value as RationalResult;
      expect(result.numerator, BigInt.from(-1));
      expect(result.denominator, BigInt.from(8));
    });

    test('positive real base to rational power of 0 is rational', () {
      final root = pwr(
        LiteralExpression(
          value: RealResult(mantissa: BigInt.from(1), scale: 0),
        ),
        LiteralExpression(
          value: RationalResult(
            numerator: BigInt.from(0),
            denominator: BigInt.from(1),
          ),
        ),
      );
      final tree = treeWith(root);

      MathCore.evaluate(tree, 12);

      expect(root.value, isA<RationalResult>());
      final result = root.value as RationalResult;
      expect(result.numerator, BigInt.from(1));
      expect(result.denominator, BigInt.from(1));
    });
  });
}
