import 'package:math_expressions/math_expressions.dart';
import 'package:math_keyboard/math_keyboard.dart';

/// Normalizes TeX input to match the expectations of `TeXParser`.
///
/// We wrap special constants like π and e so they behave like grouped atoms
/// during parsing (e.g., `{\\pi}` becomes `({\\pi})`).
String replace(String input) {
  return input
      .replaceAll(
        r'{\pi}',
        '('
            r'{\pi}'
            ')',
      )
      .replaceAll('{e}', '({e})');
}

/// Custom TeX parser that adds calculator-specific behavior.
class CustomTeXParser extends TeXParser {
  /// Creates a parser with normalized input.
  CustomTeXParser(String inputString) : super(replace(inputString));

  @override
  void addFactorial(List<Expression> result) {
    // Convert factorial into a variable token so it is kept as a postfix symbol.
    final operand = result.removeLast();
    result.add(Variable('${operand.toString()}!'));
  }
}
