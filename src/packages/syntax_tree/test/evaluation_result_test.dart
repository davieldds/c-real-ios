import 'package:syntax_tree/evaluation_result.dart';
import 'package:test/test.dart';

void main() {
  group('EvaluationResult types', () {
    test('RealResult formats value as mantissa e -scale', () {
      final result = RealResult(mantissa: BigInt.from(12345), scale: 3);

      expect(result.value, equals('12345e-3'));
    });

    test('ErrorResult formats value with message', () {
      final result = ErrorResult('division by zero');

      expect(result.value, equals('Error: division by zero'));
    });

    test('IndeterminateResult uses question mark', () {
      final result = IndeterminateResult();

      expect(result.value, equals('?'));
    });

    test('RationalResult is also a RealResult', () {
      final result = RationalResult(
        numerator: BigInt.from(1),
        denominator: BigInt.from(2),
      );

      expect(result, isA<RealResult>());
    });
  });

  group('RationalResult normalization', () {
    test('reduces fraction to simplest terms', () {
      final result = RationalResult(
        numerator: BigInt.from(10),
        denominator: BigInt.from(20),
      );

      expect(result.value, equals('1/2'));
      expect(result.numerator, equals(BigInt.from(1)));
      expect(result.denominator, equals(BigInt.from(2)));
    });

    test('ensures denominator is positive', () {
      final result = RationalResult(
        numerator: BigInt.from(1),
        denominator: BigInt.from(-3),
      );

      expect(result.value, equals('-1/3'));
      expect(result.numerator, equals(BigInt.from(-1)));
      expect(result.denominator, equals(BigInt.from(3)));
    });

    test('normalizes double-negative fraction', () {
      final result = RationalResult(
        numerator: BigInt.from(-4),
        denominator: BigInt.from(-8),
      );

      expect(result.value, equals('1/2'));
      expect(result.numerator, equals(BigInt.from(1)));
      expect(result.denominator, equals(BigInt.from(2)));
    });

    test('normalizes zero numerator', () {
      final result = RationalResult(
        numerator: BigInt.zero,
        denominator: BigInt.from(5),
      );

      expect(result.value, equals('0/1'));
      expect(result.numerator, equals(BigInt.zero));
      expect(result.denominator, equals(BigInt.from(1)));
    });
  });
}
