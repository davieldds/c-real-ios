import 'package:math_expressions/math_expressions.dart';
import 'package:math_keyboard/math_keyboard.dart';

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

class CustomTeXParser extends TeXParser {
  CustomTeXParser(String inputString) : super(replace(inputString));

  @override
  void addFactorial(List<Expression> result) {
    final operand = result.removeLast();
    result.add(Variable('${operand.toString()}!'));
  }
}
