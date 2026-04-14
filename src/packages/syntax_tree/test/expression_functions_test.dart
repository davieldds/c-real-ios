import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';
import 'package:test/test.dart';

void main() {
  late Expression expr;

  setUp(() {
    expr = Expression();
  });

  test('Expression.replaceWith', () {
    final replacement = Expression();
    final originalParent = expr.parent;
    expr.replaceWith(replacement);

    expect(expr.parent, same(originalParent));
    expect(expr.value, equals(replacement.value));
  });

  group('Expression.applyExpression', () {
    late LiteralExpression nextExpression;
    setUp(() {
      nextExpression = LiteralExpression(
        equationForm: '69',
        value: RationalResult(
          numerator: BigInt.from(69),
          denominator: BigInt.one,
        ),
      );
    });
    group('Binary Expression', () {
      test('Binding next', () {
        final originalParent = expr.parent;
        expr.applyExpression(BinaryExpression, nextExpression: nextExpression);
        expect(expr.parent, isA<BinaryExpression>());
        final parent = expr.parent as BinaryExpression;
        expect(parent.parent, same(originalParent));
        expect(parent.rightArg, same(nextExpression));
        expect(parent.leftArg, same(expr));
      });
      test('Not binding next', () {
        final originalParent = expr.parent;
        expr.applyExpression(BinaryExpression);
        expect(expr.parent, isA<BinaryExpression>());
        final parent = expr.parent as BinaryExpression;
        expect(parent.parent, same(originalParent));
        expect(parent.rightArg, isNull);
        expect(parent.leftArg, same(expr));
      });
    });
    group('Unary Expression', () {
      test('Binding next', () {
        expect(
          () => expr.applyExpression(
            UnaryExpression,
            nextExpression: nextExpression,
          ),
          throwsException,
        );
      });
      test('Not binding next', () {
        final originalParent = expr.parent;
        expr.applyExpression(UnaryExpression);
        expect(expr.parent, isA<UnaryExpression>());
        final parent = expr.parent as UnaryExpression;
        expect(parent.parent, same(originalParent));
        expect(parent.arg, same(expr));
      });
    });
  });
}
