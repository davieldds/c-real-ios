import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:test/test.dart';

void main() {
  group('Expression: ', () {
    test('Default constructor without parameters', () {
      final expr = Expression();

      expect(expr.parent, isNull);
      expect(expr.error, equals(""));
      expect(expr.value, isNull);
      expect(expr.precision, equals(0));
    });

    test('Constructor with parameters', () {
      final parent = Expression();
      final expr = Expression(
        parent: parent,
        error: "Err",
        value: 67,
        precision: 10,
      );

      expect(expr.parent, same(parent));
      expect(expr.error, equals("Err"));
      expect(expr.value, equals(67));
      expect(expr.precision, equals(10));
    });

    test('Constructor with null parameters', () {
      final expr = Expression(parent: null, value: null);

      expect(expr.parent, isNull);
      expect(expr.error, equals(""));
      expect(expr.value, isNull);
      expect(expr.precision, equals(0));
    });
  });

  group('Literal Expression: ', () {
    test('Positive integer', () {
      final expr = LiteralExpression(67);

      expect(expr.value, equals(67));
      expect(expr.parent, isNull);
      expect(expr.error, "");
      expect(expr.precision, equals(0));
    });

    test('Negative integer', () {
      final expr = LiteralExpression(-67);

      expect(expr.value, equals(-67));
      expect(expr.parent, isNull);
      expect(expr.error, "");
      expect(expr.precision, equals(0));
    });

    test('Float', () {
      final expr = LiteralExpression(67.69);

      expect(expr.value, equals(67.69));
      expect(expr.parent, isNull);
      expect(expr.error, "");
      expect(expr.precision, equals(0));
    });
  });

  group('Binary Expression', () {
    late LiteralExpression arg1;
    late LiteralExpression arg2;

    setUp(() {
      arg1 = LiteralExpression(69);
      arg2 = LiteralExpression(420);
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
