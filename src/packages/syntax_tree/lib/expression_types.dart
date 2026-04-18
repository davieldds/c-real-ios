import 'package:syntax_tree/expression.dart';

class LiteralExpression extends Expression {
  /// The string representation of the literal, e.g. "1", "0.5", "pi", "e", etc.
  /// Decimal separator is a dot, thousands separator isn't used.
  /// Whole numbers must be represented with a decimal point, e.g. "1" must be represented as "1.0".
  /// Numbers between 0 and 1 must have a leading zero, e.g. "0.5" instead of ".5".
  /// Literal expressions can't be negative
  late String equationForm;

  LiteralExpression({super.parent, required this.equationForm, super.value});
}

class AddExpression extends BinaryExpression {
  AddExpression({super.parent, super.value, super.leftArg, super.rightArg});
}

class SubExpression extends BinaryExpression {
  SubExpression({super.parent, super.value, super.leftArg, super.rightArg});
}

class MulExpression extends BinaryExpression {
  MulExpression({super.parent, super.value, super.leftArg, super.rightArg});
}

class DivExpression extends BinaryExpression {
  DivExpression({super.parent, super.value, super.leftArg, super.rightArg});
}

class PwrExpression extends BinaryExpression {
  PwrExpression({super.parent, super.value, super.leftArg, super.rightArg});
}

class SqrtExpression extends UnaryExpression {
  SqrtExpression({super.parent, super.value, super.arg});
}

class FactExpression extends UnaryExpression {
  FactExpression({super.parent, super.value, super.arg});
}
