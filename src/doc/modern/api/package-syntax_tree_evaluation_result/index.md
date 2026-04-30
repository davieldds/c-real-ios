---
title: "evaluation_result"
description: "API documentation for the evaluation_result library"
outline: [2, 3]
editLink: false
prev: false
next: false
---

# evaluation_result

## Classes {#section-classes}

| Class | Description |
|---|---|
| [ErrorResult](/api/package-syntax_tree_evaluation_result/ErrorResult) | Variant of [EvaluationResult](/api/package-syntax_tree_evaluation_result/EvaluationResult) for when an error occurs during the evaluation of an [Expression](/api/package-syntax_tree_expression/Expression), such as division by zero or invalid input. The [message](/api/package-syntax_tree_evaluation_result/ErrorResult#prop-message) field contains a description of the error that occurred. |
| [EvaluationResult](/api/package-syntax_tree_evaluation_result/EvaluationResult) | Class encapsulating the partial result of the constructive real arithmetic evaluation of each [Expression](/api/package-syntax_tree_expression/Expression) in the [SyntaxTree](/api/package-syntax_tree_syntax_tree/SyntaxTree). |
| [IndeterminateResult](/api/package-syntax_tree_evaluation_result/IndeterminateResult) | Variant of [EvaluationResult](/api/package-syntax_tree_evaluation_result/EvaluationResult) used when a child node of the given [Expression](/api/package-syntax_tree_expression/Expression) results in an error. The [cause](/api/package-syntax_tree_evaluation_result/IndeterminateResult#prop-cause) field contains the [ErrorResult](/api/package-syntax_tree_evaluation_result/ErrorResult) that has caused the indeterminate result. The [value](/api/package-syntax_tree_evaluation_result/IndeterminateResult#prop-value) getter returns the value of the cause, which is the error message. |
| [RationalResult](/api/package-syntax_tree_evaluation_result/RationalResult) | Variant of [EvaluationResult](/api/package-syntax_tree_evaluation_result/EvaluationResult) for when the result is a rational number, represented as a fraction of two [BigInt](https://api.flutter.dev/flutter/dart-core/BigInt-class.html)s: [numerator](/api/package-syntax_tree_evaluation_result/RationalResult#prop-numerator) and [denominator](/api/package-syntax_tree_evaluation_result/RationalResult#prop-denominator). |
| [RealResult](/api/package-syntax_tree_evaluation_result/RealResult) | Variant of [EvaluationResult](/api/package-syntax_tree_evaluation_result/EvaluationResult) for when the result cannot be calculated in the realm of rational numbers. The value of this evaluation is [mantissa](/api/package-syntax_tree_evaluation_result/RealResult#prop-mantissa) * 2^[scale](/api/package-syntax_tree_evaluation_result/RealResult#prop-scale), where the [mantissa](/api/package-syntax_tree_evaluation_result/RealResult#prop-mantissa) is a [BigInt](https://api.flutter.dev/flutter/dart-core/BigInt-class.html) and the [scale](/api/package-syntax_tree_evaluation_result/RealResult#prop-scale) is an [int](https://api.flutter.dev/flutter/dart-core/int-class.html). I.e.: |

