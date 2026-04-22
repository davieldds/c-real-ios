import 'package:test/test.dart';
import 'package:syntax_tree/parser.dart';
import 'package:syntax_tree/expression_types.dart';

void main() {
  group('Constructor', () {
    test('initializes with input string', () {
      final parser = EquationParser('2 + 3');
      expect(parser.input, equals('2 + 3'));
    });
  });

  group('internal methods', () {
    test('_parseAddition', () {
      final parser1 = EquationParser('1+2');
      final expr1 = parser1.parse() as AddExpression;
      expect(expr1.leftArg, isA<LiteralExpression>());
      expect(expr1.rightArg, isA<LiteralExpression>());

      final parser2 = EquationParser('5-3');
      final expr2 = parser2.parse() as SubExpression;
      expect(expr2.leftArg, isA<LiteralExpression>());
      expect(expr2.rightArg, isA<LiteralExpression>());
    });

    test('_parseBinaryOperation', () {
      final parser1 = EquationParser('2*3');
      final expr1 = parser1.parse() as MulExpression;
      expect(expr1.leftArg, isA<LiteralExpression>());
      expect(expr1.rightArg, isA<LiteralExpression>());

      final parser2 = EquationParser('4/2');
      final expr2 = parser2.parse() as DivExpression;
      expect(expr2.leftArg, isA<LiteralExpression>());
      expect(expr2.rightArg, isA<LiteralExpression>());

      final parser3 = EquationParser('2^3');
      final expr3 = parser3.parse() as PwrExpression;
      expect(expr3.leftArg, isA<LiteralExpression>());
      expect(expr3.rightArg, isA<LiteralExpression>());
    });

    test('_parsePostfix', () {
      final parser = EquationParser('5!');
      final expr = parser.parse() as FactExpression;
      expect(expr.arg, isA<LiteralExpression>());
    });

    test('_parsePrimary (Parentheses and Braces)', () {
      final parser1 = EquationParser('(2+3)');
      final expr1 = parser1.parse() as AddExpression;
      expect(expr1.leftArg, isA<LiteralExpression>());

      final parser2 = EquationParser('{4-1}');
      final expr2 = parser2.parse() as SubExpression;
      expect(expr2.leftArg, isA<LiteralExpression>());
    });

    test('_tryParseFunctionCall (Unary functions)', () {
      final unaryFunctions = [
        'ln',
        // 'sin',
        // 'cos',
        // 'tan',
        // 'arcsin',
        // 'arccos',
        // 'arctan',
        // 'abs',
      ];
      for (final func in unaryFunctions) {
        final parser = EquationParser('$func(1)');
        final expr = parser.parse();
        expect(expr, isNotNull);
      }
    });

    test('_tryParseFunctionCall (Binary functions)', () {
      final binaryFunctions = ['log', 'nrt'];
      for (final func in binaryFunctions) {
        final parser = EquationParser('$func(2, 3)');
        final expr = parser.parse();
        expect(expr, isNotNull);
      }
    });

    test('_parseLiteral', () {
      final parser = EquationParser('123.45');
      final expr = parser.parse() as LiteralExpression;
      expect(expr.equationForm, equals('123.45'));
    });

    test('_skipWhitespace', () {
      final parser = EquationParser('  1   +   2  ');
      final expr = parser.parse() as AddExpression;
      expect(expr.leftArg, isA<LiteralExpression>());
      expect(expr.rightArg, isA<LiteralExpression>());
    });
  });

  group('Complex equations', () {
    test('multiple additions', () {
      final expr = EquationParser('1+2+3').parse() as AddExpression;
      expect(expr.leftArg, isA<AddExpression>());
      expect(expr.rightArg, isA<LiteralExpression>());
    });

    test('additions mixed with subtractions', () {
      final expr = EquationParser('1+2-3').parse() as SubExpression;
      expect(expr.leftArg, isA<AddExpression>());
      expect(expr.rightArg, isA<LiteralExpression>());
    });

    test('multiple multiplications', () {
      final expr = EquationParser('2*3*4').parse() as MulExpression;
      expect(expr.leftArg, isA<MulExpression>());
      expect(expr.rightArg, isA<LiteralExpression>());
    });

    test('multiple divisions', () {
      final expr = EquationParser('4/2/2').parse() as DivExpression;
      expect(expr.leftArg, isA<DivExpression>());
      expect(expr.rightArg, isA<LiteralExpression>());
    });

    test('mixed multiplications and divisions', () {
      final expr = EquationParser('2*4/2').parse() as DivExpression;
      expect(expr.leftArg, isA<MulExpression>());
      expect(expr.rightArg, isA<LiteralExpression>());
    });

    test('addition/subtraction inside functions', () {
      final expr = EquationParser('ln(1+2)').parse() as LnExpression;
      expect(expr.arg, isA<AddExpression>());
    });

    test('multiplication/division inside functions', () {
      final expr = EquationParser('ln(2*3)').parse() as LnExpression;
      expect(expr.arg, isA<MulExpression>());
    });

    test('functions inside functions', () {
      final expr = EquationParser('ln(3!)').parse() as LnExpression;
      expect(expr.arg, isA<FactExpression>());
    });
  });

  group('Error handling', () {
    test('FormatException on unexpected token', () {
      final parser = EquationParser('1+2 xyz');
      expect(() => parser.parse(), throwsA(isA<FormatException>()));
    });

    test('FormatException on wrong argument count (Unary)', () {
      final parser = EquationParser('sin(1, 2)');
      expect(() => parser.parse(), throwsA(isA<FormatException>()));
    });

    test('FormatException on wrong argument count (Binary)', () {
      final parser = EquationParser('log(1)');
      expect(() => parser.parse(), throwsA(isA<FormatException>()));
    });

    test('FormatException on expected character', () {
      final parser = EquationParser('(1+2');
      expect(() => parser.parse(), throwsA(isA<FormatException>()));
    });
  });
}
