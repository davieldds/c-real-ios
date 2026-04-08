import 'package:syntax_tree/expression.dart';

class LiteralExpression extends Expression {
  LiteralExpression(num? value, {super.parent, super.error, super.precision})
    : super(value: value);
}

class AddExpression extends BinaryExpression {
  AddExpression({
    super.parent,
    super.error,
    super.value,
    super.precision,
    super.leftArg,
    super.rightArg,
  });
}

class SubExpression extends BinaryExpression {
  SubExpression({
    super.parent,
    super.error,
    super.value,
    super.precision,
    super.leftArg,
    super.rightArg,
  });
}

class MulExpression extends BinaryExpression {
  MulExpression({
    super.parent,
    super.error,
    super.value,
    super.precision,
    super.leftArg,
    super.rightArg,
  });
}

class DivExpression extends BinaryExpression {
  DivExpression({
    super.parent,
    super.error,
    super.value,
    super.precision,
    super.leftArg,
    super.rightArg,
  });
}

class PwrExpression extends BinaryExpression {
  PwrExpression({
    super.parent,
    super.error,
    super.value,
    super.precision,
    super.leftArg,
    super.rightArg,
  });
}

class SqrtExpression extends UnaryExpression {
  SqrtExpression({
    super.parent,
    super.error,
    super.value,
    super.precision,
    super.arg,
  });
}

class FactExpression extends UnaryExpression {
  FactExpression({
    super.parent,
    super.error,
    super.value,
    super.precision,
    super.arg,
  });
}
