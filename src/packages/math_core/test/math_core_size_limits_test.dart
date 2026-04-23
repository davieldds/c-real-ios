import 'package:test/test.dart';
import 'package:math_core/math_core.dart';
import 'package:syntax_tree/syntax_tree.dart';
import 'package:syntax_tree/evaluation_result.dart';

import 'helpers.dart';

void main() {
  group('Size Limits Tests', () {
    test('Exponentiation exceeding limits should return an ErrorResult', () {
      // 2 ^ 100000001 (exceeds the 100,000,000 bit length approximation)
      final tree = treeWith(pwr(lit("2.0"), lit("100000001.0")));

      MathCore.evaluate(tree, 10);

      expectErrorIsNotEmpty(tree.root!);
      expect((tree.root!.value as ErrorResult).message, contains("too large"));
    });

    test(
      'Nested exponentiation exceeding limits should return an ErrorResult',
      () {
        final tree = treeWith(
          pwr(lit("2.0"), pwr(lit("3.0"), pwr(lit("4.0"), lit("5.0")))),
        );

        MathCore.evaluate(tree, 10);

        expectErrorIsNotEmpty(tree.root!);
        expect(
          (tree.root!.value as ErrorResult).message,
          contains("too large"),
        );
      },
    );

    test('Trivial bases (1) with large exponent should not exceed limits', () {
      // 1 ^ 100000001
      final tree = treeWith(pwr(lit("1.0"), lit("100000001.0")));

      MathCore.evaluate(tree, 10);

      expect(tree.root!.value, isNot(isA<ErrorResult>()));
      expect(tree.root!.value, isA<RationalResult>());
    });

    test('Trivial bases (0) with large exponent should not exceed limits', () {
      // 0 ^ 100000001
      final tree = treeWith(pwr(lit("0.0"), lit("100000001.0")));

      MathCore.evaluate(tree, 10);

      expect(tree.root!.value, isNot(isA<ErrorResult>()));
    });

    test('Safe exponentiation should not exceed limits', () {
      // 2 ^ 10
      final tree = treeWith(pwr(lit("2.0"), lit("10.0")));

      MathCore.evaluate(tree, 10);

      expect(tree.root!.value, isNot(isA<ErrorResult>()));
    });

    test('Factorial exceeding limits should return an ErrorResult', () {
      // 5000001! (exceeds the 5,000,000 max limit)
      final tree = treeWith(fact(lit("5000001.0")));

      MathCore.evaluate(tree, 10);

      expectErrorIsNotEmpty(tree.root!);
      expect((tree.root!.value as ErrorResult).message, contains("too large"));
    });

    test('Safe factorial should not exceed limits', () {
      // 100!
      final tree = treeWith(fact(lit("100.0")));

      MathCore.evaluate(tree, 10);

      expect(tree.root!.value, isNot(isA<ErrorResult>()));
    });

    test('Cyclic tree should return an IndeterminateResult', () {
      final tree = SyntaxTree();
      final addExpr = add(lit("1.0"), lit("1.0"));
      addExpr.leftArg = addExpr; // Create cycle
      tree.root = addExpr;

      MathCore.evaluate(tree, 10);

      expectIndeterminate(tree.root!);
    });
  });
}
