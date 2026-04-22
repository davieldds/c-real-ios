import 'package:syntax_tree/expression.dart';

/// @author Lukas Pollak
/// This file defines specific expression types that extend the base [Expression] class, including literals and various mathematical operations.

/// Represents a literal expression, which can be a number, or any constant value in the equation. It includes an [equationForm] to store the original string representation of the literal.
class LiteralExpression extends Expression {
  /// The string representation of the literal, e.g. "1", "0.5", "pi", "e", etc.
  /// Decimal separator is a dot, thousands separator isn't used.
  /// Whole numbers must be represented with a decimal point, e.g. "1" must be represented as "1.0".
  /// Numbers between 0 and 1 must have a leading zero, e.g. "0.5" instead of ".5".
  /// Literal expressions can't be negative
  late String equationForm;

  LiteralExpression({required this.equationForm, super.value});
}

/// Represents an addition operation in the syntax tree, extending the [BinaryExpression] class. It takes two arguments, [leftArg] and [rightArg], which represent the operands of the addition.
class AddExpression extends BinaryExpression {
  AddExpression({super.value, super.leftArg, super.rightArg});
}

/// Represents a subtraction operation in the syntax tree, extending the [BinaryExpression] class. It takes two arguments, [leftArg] and [rightArg], which represent the operands of the subtraction.
class SubExpression extends BinaryExpression {
  SubExpression({super.value, super.leftArg, super.rightArg});
}

/// Represents a multiplication operation in the syntax tree, extending the [BinaryExpression] class. It takes two arguments, [leftArg] and [rightArg], which represent the operands of the multiplication
class MulExpression extends BinaryExpression {
  MulExpression({super.value, super.leftArg, super.rightArg});
}

/// Represents a division operation in the syntax tree, extending the [BinaryExpression] class. It takes two arguments, [leftArg] and [rightArg], which represent the operands of the division.
class DivExpression extends BinaryExpression {
  DivExpression({super.value, super.leftArg, super.rightArg});
}

/// Represents a power operation in the syntax tree, extending the [BinaryExpression] class. It takes two arguments, [leftArg] and [rightArg], which represent the base and exponent of the power operation, respectively.
class PwrExpression extends BinaryExpression {
  PwrExpression({super.value, super.leftArg, super.rightArg});
}

/// Represents a root operation in the syntax tree, extending the [BinaryExpression] class. It takes two arguments, [leftArg] and [rightArg], which represent the degree of the root and the radicand, respectively.
class RootExpression extends BinaryExpression {
  RootExpression({super.value, super.leftArg, super.rightArg});
}

/// Represents a logarithm operation in the syntax tree, extending the [BinaryExpression] class. It takes two arguments, [leftArg] and [rightArg], which represent the base and the argument of the logarithm, respectively.
class LogExpression extends BinaryExpression {
  LogExpression({super.value, super.leftArg, super.rightArg});
}

/// Represents a square root operation in the syntax tree, extending the [UnaryExpression] class. It takes one argument, [arg], which represents the value under the square root.
class SqrtExpression extends UnaryExpression {
  SqrtExpression({super.value, super.arg});
}

/// Represents a natural logarithm operation in the syntax tree, extending the [UnaryExpression] class. It takes one argument, [arg], which represents the value for the natural logarithm operation.
class LnExpression extends UnaryExpression {
  LnExpression({super.value, super.arg});
}

/// Represents a factorial operation in the syntax tree, extending the [UnaryExpression] class. It takes one argument, [arg], which represents the operand of the factorial.
class FactExpression extends UnaryExpression {
  FactExpression({super.value, super.arg});
}

// class SinExpression extends UnaryExpression {
//   SinExpression({super.value, super.arg});
// }

// class CosExpression extends UnaryExpression {
//   CosExpression({super.value, super.arg});
// }

// class ASinExpression extends UnaryExpression {
//   ASinExpression({super.value, super.arg});
// }

// class ACosExpression extends UnaryExpression {
//   ACosExpression({super.value, super.arg});
// }

// class ATanExpression extends UnaryExpression {
//   ATanExpression({super.value, super.arg});
// }

// class TanExpression extends UnaryExpression {
//   TanExpression({super.value, super.arg});
// }
