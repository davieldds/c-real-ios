import 'package:syntax_tree/expression.dart';
import 'package:syntax_tree/expression_types.dart';

/// @author Lukas Pollak
/// This file defines the [EquationParser] class, which is responsible for parsing a mathematical equation from a string input and constructing a syntax tree representation of the equation using various expression types defined in the [expression_types.dart] file. The parser handles operator precedence, function calls, and supports a variety

class EquationParser {
  final String input;
  int _index = 0;

  EquationParser(this.input);

  /// Parses the input string and constructs a syntax tree representation of the equation.
  /// Return: The root [Expression] of the constructed syntax tree.
  Expression parse() {
    final expr = _parseAddition();
    _skipWhitespace();

    if (!_isAtEnd) {
      throw FormatException(
        'Unexpected token "${input[_index]}" at position $_index.',
      );
    }

    return expr;
  }

  Expression _parseAddition() {
    var left = _parseBinaryOperation();

    while (true) {
      _skipWhitespace();

      BinaryExpression? expr;

      if (_match('+')) {
        expr = AddExpression(leftArg: left);
      } else if (_match('-')) {
        expr = SubExpression(leftArg: left);
      } else {
        return left;
      }

      final right = _parseBinaryOperation();

      left.parent = expr;
      expr.rightArg = right;
      right.parent = expr;

      left = expr;
    }
  }

  Expression _parseBinaryOperation() {
    var left = _parsePostfix();

    while (true) {
      _skipWhitespace();

      BinaryExpression? expr;

      if (_match('*')) {
        expr = MulExpression(leftArg: left);
      } else if (_match('/')) {
        expr = DivExpression(leftArg: left);
      } else if (_match('^')) {
        expr = PwrExpression(leftArg: left);
      } else {
        return left;
      }

      final right = _parsePostfix();

      left.parent = expr;
      expr.rightArg = right;
      right.parent = expr;

      left = expr;
    }
  }

  Expression _parsePostfix() {
    var expr = _parsePrimary();

    while (true) {
      _skipWhitespace();

      if (!_match('!')) {
        return expr;
      }

      final fact = FactExpression(arg: expr);
      expr.parent = fact;
      expr = fact;
    }
  }

  Expression _parsePrimary() {
    _skipWhitespace();

    final functionCall = _tryParseFunctionCall();
    if (functionCall != null) {
      return functionCall;
    }

    if (_match('(')) {
      final expr = _parseAddition();
      _skipWhitespace();
      _expect(')');
      return expr;
    }

    if (_match('{')) {
      final expr = _parseAddition();
      _skipWhitespace();
      _expect('}');
      return expr;
    }

    return _parseLiteral();
  }

  Expression? _tryParseFunctionCall() {
    _skipWhitespace();

    final start = _index;
    final functionName = _tryReadFunctionName();

    if (functionName == null) {
      return null;
    }

    _skipWhitespace();

    if (!_match('(')) {
      _index = start;
      return null;
    }

    final firstArg = _parseAddition();
    _skipWhitespace();

    Expression? secondArg;
    if (_match(',')) {
      secondArg = _parseAddition();
      _skipWhitespace();
    }

    _expect(')');

    final unary = _makeUnaryFunction(functionName);
    if (unary != null) {
      if (secondArg != null) {
        throw FormatException(
          'Function "$functionName" expects 1 argument, got 2 at position $_index.',
        );
      }

      unary.arg = firstArg;
      firstArg.parent = unary;
      return unary;
    }

    final binary = _makeBinaryFunction(functionName);
    if (binary != null) {
      if (secondArg == null) {
        throw FormatException(
          'Function "$functionName" expects 2 arguments, got 1 at position $_index.',
        );
      }

      binary.leftArg = firstArg;
      binary.rightArg = secondArg;
      firstArg.parent = binary;
      secondArg.parent = binary;
      return binary;
    }

    throw FormatException(
      'Unknown function "$functionName" at position $start.',
    );
  }

  String? _tryReadFunctionName() {
    if (_matchWord('ln')) return 'ln';
    if (_matchWord('nrt')) return 'nrt';
    if (_matchWord('log')) return 'log';
    if (_matchWord('abs')) return 'abs';

    // if (_matchWord('sin')) return 'sin';
    // if (_matchWord('cos')) return 'cos';
    // if (_matchWord('tan')) return 'tan';
    // if (_matchWord('arcsin')) return 'arcsin';
    // if (_matchWord('arccos')) return 'arccos';
    // if (_matchWord('arctan')) return 'arctan';

    return null;
  }

  UnaryExpression? _makeUnaryFunction(String functionName) {
    if (functionName == 'ln') return LnExpression();
    // if (functionName == 'arcsin') return ASinExpression();
    // if (functionName == 'arccos') return ACosExpression();
    // if (functionName == 'arctan') return ATanExpression();
    // if (functionName == 'sin') return SinExpression();
    // if (functionName == 'cos') return CosExpression();
    // if (functionName == 'tan') return TanExpression();

    return null;
  }

  BinaryExpression? _makeBinaryFunction(String functionName) {
    if (functionName == 'nrt') return RootExpression();
    if (functionName == 'log') return LogExpression();

    return null;
  }

  Expression _parseLiteral() {
    _skipWhitespace();

    final start = _index;
    late String number;

    while (!_isAtEnd && !_isDelimiter(input[_index])) {
      _index++;
    }

    if (start == _index) {
      throw FormatException('Expected literal at position $_index.');
    }

    number = input.substring(start, _index);
    if (!number.contains('.')) {
      number += '.0';
    }

    return LiteralExpression(equationForm: input.substring(start, _index));
  }

  void _skipWhitespace() {
    while (!_isAtEnd && input[_index].trim().isEmpty) {
      _index++;
    }
  }

  void _expect(String char) {
    if (!_match(char)) {
      throw FormatException('Expected "$char" at position $_index.');
    }
  }

  bool _match(String char) {
    if (_isAtEnd || input[_index] != char) {
      return false;
    }

    _index++;
    return true;
  }

  bool _matchWord(String word) {
    final end = _index + word.length;

    if (end > input.length) {
      return false;
    }

    final part = input.substring(_index, end).toLowerCase();
    if (part != word) {
      return false;
    }

    _index = end;
    return true;
  }

  bool _isDelimiter(String char) {
    return char.trim().isEmpty ||
        char == '-' ||
        char == '+' ||
        char == '*' ||
        char == '^' ||
        char == '/' ||
        char == '(' ||
        char == ')' ||
        char == '{' ||
        char == '}' ||
        char == '!' ||
        char == ',';
  }

  bool get _isAtEnd => _index >= input.length;
}
