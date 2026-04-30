---
title: "bigint_helpers"
description: "API documentation for the bigint_helpers library"
outline: [2, 3]
editLink: false
prev: false
next: false
---

# bigint_helpers

## Functions {#section-functions}

| Function | Description |
|---|---|
| [factorialBigInt](/api/package-math_core_bigint_helpers/factorialBigInt) | Helper function that calculates the factorial of a [BigInt](https://api.flutter.dev/flutter/dart-core/BigInt-class.html) n, defined as n! = n * (n-1)! with 0! = 1. |
| [halfUlpBiasMantissa](/api/package-math_core_bigint_helpers/halfUlpBiasMantissa) | Computes half of a decimal ULP expressed in mantissa units for the given binary `scale` and decimal `precision`. Returns zero when no bias is applicable. |
| [powBigInt](/api/package-math_core_bigint_helpers/powBigInt) | Helper function, that calculates `base` raised to the power of `exp` where both are [BigInt](https://api.flutter.dev/flutter/dart-core/BigInt-class.html)s. Uses exponentiation by squaring for efficiency, assumes that `exp` is a non-negative integer. i.e. a^n = (a^(n/2))^2 if n is even, and a^n = (a^((n-1)/2))^2 * a if n is odd. |
| [shiftRightRounded](/api/package-math_core_bigint_helpers/shiftRightRounded) | Shifts right by `shift` bits with rounding to nearest integer (half away from zero). This is used when downscaling a binary-fixed-point mantissa. |
| [sqrtBigInt](/api/package-math_core_bigint_helpers/sqrtBigInt) | Helper function that calculates the integer square root of a [BigInt](https://api.flutter.dev/flutter/dart-core/BigInt-class.html) value using the Babylonian method. |

