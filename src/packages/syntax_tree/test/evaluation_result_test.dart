import "package:syntax_tree/evaluation_result.dart";
import "package:test/test.dart";

void main() {
  group("EvaluationResult types", () {
    test("RealResult correctly handles integers", () {
      final result = RealResult(
        mantissa: BigInt.from(1),
        scale: 0,
        precision: 0,
      );

      expect(result.value, equals("1"));
    });

    test("RealResult correctly handles negative integers", () {
      final result = RealResult(
        mantissa: BigInt.from(-3),
        scale: 0,
        precision: 0,
      );

      expect(result.value, equals("-3"));
    });

    test("RealResult correctly handles large integers", () {
      final result = RealResult(mantissa: BigInt.one, scale: 2, precision: 0);

      expect(result.value, equals("4"));
    });

    test("RealResult correctly handles negative large integers", () {
      final result = RealResult(mantissa: -BigInt.one, scale: 2, precision: 0);

      expect(result.value, equals("-4"));
    });

    test("RealResult correctly handles decimals", () {
      final result = RealResult(
        mantissa: BigInt.from(5),
        scale: -2,
        precision: 2,
      );

      expect(result.value, equals("1.25"));
    });

    test("RealResult correctly handles negative decimals", () {
      final result = RealResult(
        mantissa: BigInt.from(-5),
        scale: -2,
        precision: 2,
      );

      expect(result.value, equals("-1.25"));
    });

    test("RealResult correctly handles numbers between 0 and 1", () {
      final result = RealResult(
        mantissa: BigInt.from(1),
        scale: -3,
        precision: 3,
      );

      expect(result.value, equals("0.125"));
    });

    test("RealResult correctly handles negative numbers between 0 and -1", () {
      final result = RealResult(
        mantissa: BigInt.from(-1),
        scale: -3,
        precision: 3,
      );

      expect(result.value, equals("-0.125"));
    });

    test("RealResult respects precision", () {
      final result = RealResult(
        mantissa: BigInt.from(1),
        scale: -3,
        precision: 2,
      );

      expect(result.value, equals("0.13"));
    });

    test("RealResult correctly handles zero", () {
      final result = RealResult(mantissa: BigInt.zero, scale: 0, precision: 0);

      expect(result.value, equals("0"));
    });

    test("RealResult correctly handles zero with large scale", () {
      final result = RealResult(
        mantissa: BigInt.zero,
        scale: -10,
        precision: 10,
      );

      expect(result.value, equals("0.0000000000"));
    });

    test("ErrorResult formats value with message", () {
      final result = ErrorResult("division by zero");

      expect(result.value, equals("Error: division by zero"));
    });

    test("IndeterminateResult bubbles error message", () {
      final error = ErrorResult("division by zero");

      final result = IndeterminateResult(error);

      expect(result.value, equals(error.value));
    });

    test("RationalResult is also a RealResult", () {
      final result = RationalResult(
        numerator: BigInt.from(1),
        denominator: BigInt.from(2),
      );

      expect(result, isA<RealResult>());
    });
  });

  group("RationalResult normalization", () {
    test("reduces fraction to simplest terms", () {
      final result = RationalResult(
        numerator: BigInt.from(10),
        denominator: BigInt.from(20),
      );

      expect(result.value, equals("1/2"));
      expect(result.numerator, equals(BigInt.from(1)));
      expect(result.denominator, equals(BigInt.from(2)));
    });

    test("ensures denominator is positive", () {
      final result = RationalResult(
        numerator: BigInt.from(1),
        denominator: BigInt.from(-3),
      );

      expect(result.value, equals("-1/3"));
      expect(result.numerator, equals(BigInt.from(-1)));
      expect(result.denominator, equals(BigInt.from(3)));
    });

    test("normalizes double-negative fraction", () {
      final result = RationalResult(
        numerator: BigInt.from(-4),
        denominator: BigInt.from(-8),
      );

      expect(result.value, equals("1/2"));
      expect(result.numerator, equals(BigInt.from(1)));
      expect(result.denominator, equals(BigInt.from(2)));
    });

    test("normalizes zero numerator", () {
      final result = RationalResult(
        numerator: BigInt.zero,
        denominator: BigInt.from(5),
      );

      expect(result.value, equals("0"));
      expect(result.numerator, equals(BigInt.zero));
      expect(result.denominator, equals(BigInt.from(1)));
    });
  });
}
