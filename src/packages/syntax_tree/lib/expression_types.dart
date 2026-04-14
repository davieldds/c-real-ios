import 'package:syntax_tree/expression.dart';

class LiteralExpression extends Expression {
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
