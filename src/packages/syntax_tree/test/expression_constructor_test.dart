import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:test/test.dart';

void main() {
  group('Expression: ', () {
    test('Default constructor without parameters', () {
      final expr = Expression();

      expect(expr.parent, isNull);
      expect(expr.value, isNull);
    });

    test('Constructor with parameters', () {
      final parent = Expression();
      final result = ErrorResult('Err');
      final expr = Expression(parent: parent, value: result);

      expect(expr.parent, same(parent));
      expect(expr.value, same(result));
    });

    test('Constructor with null parameters', () {
      final expr = Expression(parent: null, value: null);

      expect(expr.parent, isNull);
      expect(expr.value, isNull);
    });
  });

  group('Literal Expression: ', () {
    test('Positive integer', () {
      final value = RationalResult(
        numerator: BigInt.from(67),
        denominator: BigInt.one,
      );
      final expr = LiteralExpression(equationForm: '67', value: value);

      expect(expr.value, same(value));
      expect(expr.parent, isNull);
    });

    test('Negative integer', () {
      final value = RationalResult(
        numerator: BigInt.from(-67),
        denominator: BigInt.one,
      );
      final expr = LiteralExpression(equationForm: '-67', value: value);

      expect(expr.value, same(value));
      expect(expr.parent, isNull);
    });

    test('Float', () {
      final value = RationalResult(
        numerator: BigInt.from(6769),
        denominator: BigInt.from(100),
      );
      final expr = LiteralExpression(equationForm: '67.69', value: value);

      expect(expr.value, same(value));
      expect(expr.parent, isNull);
    });
  });

  group('Binary Expression', () {
    late LiteralExpression arg1;
    late LiteralExpression arg2;

    setUp(() {
      arg1 = LiteralExpression(
        equationForm: '69',
        value: RationalResult(
          numerator: BigInt.from(69),
          denominator: BigInt.one,
        ),
      );
      arg2 = LiteralExpression(
        equationForm: '420',
        value: RationalResult(
          numerator: BigInt.from(420),
          denominator: BigInt.one,
        ),
      );
    });

    test('both args', () {
      final expr = BinaryExpression(leftArg: arg1, rightArg: arg2);

      expect(expr.leftArg, same(arg1));
      expect(expr.rightArg, same(arg2));
    });

    test('left arg', () {
      final expr = BinaryExpression(leftArg: arg1, rightArg: null);

      expect(expr.leftArg, same(arg1));
      expect(expr.rightArg, isNull);
    });

    test('right arg', () {
      final expr = BinaryExpression(leftArg: null, rightArg: arg2);

      expect(expr.leftArg, isNull);
      expect(expr.rightArg, same(arg2));
    });

    test('no args', () {
      final expr = BinaryExpression();

      expect(expr.leftArg, isNull);
      expect(expr.rightArg, isNull);
    });
  });

  group('Unary Expression', () {
    late Expression arg;

    setUp(() {
      arg = Expression();
    });

    test('no argument', () {
      final expr = UnaryExpression();

      expect(expr.arg, isNull);
    });

    test('with argument', () {
      final expr = UnaryExpression(arg: arg);

      expect(expr.arg, same(arg));
    });
  });
}
