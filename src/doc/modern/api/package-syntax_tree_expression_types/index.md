---
title: "expression_types"
description: "API documentation for the expression_types library"
outline: [2, 3]
editLink: false
prev: false
next: false
---

# expression_types

## Classes {#section-classes}

| Class | Description |
|---|---|
| [AddExpression](/api/package-syntax_tree_expression_types/AddExpression) | Represents an addition operation in the syntax tree, extending the [BinaryExpression](/api/package-syntax_tree_expression/BinaryExpression) class. It takes two arguments, [leftArg](/api/package-syntax_tree_expression/BinaryExpression#prop-leftarg) and [rightArg](/api/package-syntax_tree_expression/BinaryExpression#prop-rightarg), which represent the operands of the addition. |
| [DivExpression](/api/package-syntax_tree_expression_types/DivExpression) | Represents a division operation in the syntax tree, extending the [BinaryExpression](/api/package-syntax_tree_expression/BinaryExpression) class. It takes two arguments, [leftArg](/api/package-syntax_tree_expression/BinaryExpression#prop-leftarg) and [rightArg](/api/package-syntax_tree_expression/BinaryExpression#prop-rightarg), which represent the operands of the division. |
| [FactExpression](/api/package-syntax_tree_expression_types/FactExpression) | Represents a factorial operation in the syntax tree, extending the [UnaryExpression](/api/package-syntax_tree_expression/UnaryExpression) class. It takes one argument, [arg](/api/package-syntax_tree_expression/UnaryExpression#prop-arg), which represents the operand of the factorial. |
| [LiteralExpression](/api/package-syntax_tree_expression_types/LiteralExpression) | @author Lukas Pollak This file defines specific expression types that extend the base [Expression](/api/package-syntax_tree_expression/Expression) class, including literals and various mathematical operations. Represents a literal expression, which can be a number, or any constant value in the equation. It includes an [equationForm](/api/package-syntax_tree_expression_types/LiteralExpression#prop-equationform) to store the original string representation of the literal. |
| [LnExpression](/api/package-syntax_tree_expression_types/LnExpression) | Represents a natural logarithm operation in the syntax tree, extending the [UnaryExpression](/api/package-syntax_tree_expression/UnaryExpression) class. It takes one argument, [arg](/api/package-syntax_tree_expression/UnaryExpression#prop-arg), which represents the value for the natural logarithm operation. |
| [LogExpression](/api/package-syntax_tree_expression_types/LogExpression) | Represents a logarithm operation in the syntax tree, extending the [BinaryExpression](/api/package-syntax_tree_expression/BinaryExpression) class. It takes two arguments, [leftArg](/api/package-syntax_tree_expression/BinaryExpression#prop-leftarg) and [rightArg](/api/package-syntax_tree_expression/BinaryExpression#prop-rightarg), which represent the base and the argument of the logarithm, respectively. |
| [MulExpression](/api/package-syntax_tree_expression_types/MulExpression) | Represents a multiplication operation in the syntax tree, extending the [BinaryExpression](/api/package-syntax_tree_expression/BinaryExpression) class. It takes two arguments, [leftArg](/api/package-syntax_tree_expression/BinaryExpression#prop-leftarg) and [rightArg](/api/package-syntax_tree_expression/BinaryExpression#prop-rightarg), which represent the operands of the multiplication |
| [PwrExpression](/api/package-syntax_tree_expression_types/PwrExpression) | Represents a power operation in the syntax tree, extending the [BinaryExpression](/api/package-syntax_tree_expression/BinaryExpression) class. It takes two arguments, [leftArg](/api/package-syntax_tree_expression/BinaryExpression#prop-leftarg) and [rightArg](/api/package-syntax_tree_expression/BinaryExpression#prop-rightarg), which represent the base and exponent of the power operation, respectively. |
| [RootExpression](/api/package-syntax_tree_expression_types/RootExpression) | Represents a root operation in the syntax tree, extending the [BinaryExpression](/api/package-syntax_tree_expression/BinaryExpression) class. It takes two arguments, [leftArg](/api/package-syntax_tree_expression/BinaryExpression#prop-leftarg) and [rightArg](/api/package-syntax_tree_expression/BinaryExpression#prop-rightarg), which represent the degree of the root and the radicand, respectively. |
| [SqrtExpression](/api/package-syntax_tree_expression_types/SqrtExpression) | Represents a square root operation in the syntax tree, extending the [UnaryExpression](/api/package-syntax_tree_expression/UnaryExpression) class. It takes one argument, [arg](/api/package-syntax_tree_expression/UnaryExpression#prop-arg), which represents the value under the square root. |
| [SubExpression](/api/package-syntax_tree_expression_types/SubExpression) | Represents a subtraction operation in the syntax tree, extending the [BinaryExpression](/api/package-syntax_tree_expression/BinaryExpression) class. It takes two arguments, [leftArg](/api/package-syntax_tree_expression/BinaryExpression#prop-leftarg) and [rightArg](/api/package-syntax_tree_expression/BinaryExpression#prop-rightarg), which represent the operands of the subtraction. |

