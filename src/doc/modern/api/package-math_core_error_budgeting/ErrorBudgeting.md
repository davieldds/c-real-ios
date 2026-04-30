---
title: "ErrorBudgeting"
description: "API documentation for ErrorBudgeting class from error_budgeting"
category: "Classes"
library: "error_budgeting"
outline: [2, 3]
editLink: false
prev: false
next: false
---

# ErrorBudgeting

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">class</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">ErrorBudgeting</span></span></span></div></div>

Helper class to calculate the required dynamic precision for child expressions
based on mathematical operations and their evaluated magnitudes.

## Properties {#section-properties}

### hashCode <Badge type="tip" text="no setter" /> <Badge type="info" text="inherited" /> {#prop-hashcode}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">hashCode</span></span></span></div></div>

The hash code for this object.

A hash code is a single integer which represents the state of the object
that affects [operator ==](/api/package-math_core_error_budgeting/ErrorBudgeting#operator-equals) comparisons.

All objects have hash codes.
The default hash code implemented by [Object](https://api.flutter.dev/flutter/dart-core/Object-class.html)
represents only the identity of the object,
the same way as the default [operator ==](/api/package-math_core_error_budgeting/ErrorBudgeting#operator-equals) implementation only considers objects
equal if they are identical (see [identityHashCode](https://api.flutter.dev/flutter/dart-core/identityHashCode.html)).

If [operator ==](/api/package-math_core_error_budgeting/ErrorBudgeting#operator-equals) is overridden to use the object state instead,
the hash code must also be changed to represent that state,
otherwise the object cannot be used in hash based data structures
like the default [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html) and [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html) implementations.

Hash codes must be the same for objects that are equal to each other
according to [operator ==](/api/package-math_core_error_budgeting/ErrorBudgeting#operator-equals).
The hash code of an object should only change if the object changes
in a way that affects equality.
There are no further requirements for the hash codes.
They need not be consistent between executions of the same program
and there are no distribution guarantees.

Objects that are not equal are allowed to have the same hash code.
It is even technically allowed that all instances have the same hash code,
but if clashes happen too often,
it may reduce the efficiency of hash-based data structures
like [HashSet](https://api.flutter.dev/flutter/dart-collection/HashSet-class.html) or [HashMap](https://api.flutter.dev/flutter/dart-collection/HashMap-class.html).

If a subclass overrides [hashCode](/api/package-math_core_error_budgeting/ErrorBudgeting#prop-hashcode), it should override the
[operator ==](/api/package-math_core_error_budgeting/ErrorBudgeting#operator-equals) operator as well to maintain consistency.

*Inherited from Object.*

:::details Implementation
```dart
external int get hashCode;
```
:::

### runtimeType <Badge type="tip" text="no setter" /> <Badge type="info" text="inherited" /> {#prop-runtimetype}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Type</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">runtimeType</span></span></span></div></div>

A representation of the runtime type of the object.

*Inherited from Object.*

:::details Implementation
```dart
external Type get runtimeType;
```
:::

## Methods {#section-methods}

### noSuchMethod() <Badge type="info" text="inherited" /> {#nosuchmethod}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">dynamic</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">noSuchMethod</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">Invocation</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">invocation</span></span><span class="member-signature-token">)</span></span></div></div>

Invoked when a nonexistent method or property is accessed.

A dynamic member invocation can attempt to call a member which
doesn't exist on the receiving object. Example:

```dart
dynamic object = 1;
object.add(42); // Statically allowed, run-time error
```

This invalid code will invoke the `noSuchMethod` method
of the integer `1` with an [Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.html) representing the
`.add(42)` call and arguments (which then throws).

Classes can override [noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.html) to provide custom behavior
for such invalid dynamic invocations.

A class with a non-default [noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.html) invocation can also
omit implementations for members of its interface.
Example:

```dart
class MockList<T> implements List<T> {
  noSuchMethod(Invocation invocation) {
    log(invocation);
    super.noSuchMethod(invocation); // Will throw.
  }
}
void main() {
  MockList().add(42);
}
```

This code has no compile-time warnings or errors even though
the `MockList` class has no concrete implementation of
any of the `List` interface methods.
Calls to `List` methods are forwarded to `noSuchMethod`,
so this code will `log` an invocation similar to
`Invocation.method(#add, [42])` and then throw.

If a value is returned from `noSuchMethod`,
it becomes the result of the original invocation.
If the value is not of a type that can be returned by the original
invocation, a type error occurs at the invocation.

The default behavior is to throw a [NoSuchMethodError](https://api.flutter.dev/flutter/dart-core/NoSuchMethodError-class.html).

*Inherited from Object.*

:::details Implementation
```dart
@pragma("vm:entry-point")
@pragma("wasm:entry-point")
external dynamic noSuchMethod(Invocation invocation);
```
:::

### toString() <Badge type="info" text="inherited" /> {#tostring}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">toString</span></span><span class="member-signature-token">()</span></span></div></div>

A string representation of this object.

Some classes have a default textual representation,
often paired with a static `parse` function (like [int.parse](https://api.flutter.dev/flutter/dart-core/int/parse.html)).
These classes will provide the textual representation as
their string representation.

Other classes have no meaningful textual representation
that a program will care about.
Such classes will typically override `toString` to provide
useful information when inspecting the object,
mainly for debugging or logging.

*Inherited from Object.*

:::details Implementation
```dart
external String toString();
```
:::

## Operators {#section-operators}

### operator ==() <Badge type="info" text="inherited" /> {#operator-equals}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">operator ==</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">Object</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">other</span></span><span class="member-signature-token">)</span></span></div></div>

The equality operator.

The default behavior for all [Object](https://api.flutter.dev/flutter/dart-core/Object-class.html)s is to return true if and
only if this object and `other` are the same object.

Override this method to specify a different equality relation on
a class. The overriding method must still be an equivalence relation.
That is, it must be:

- Total: It must return a boolean for all arguments. It should never throw.

- Reflexive: For all objects `o`, `o == o` must be true.

- Symmetric: For all objects `o1` and `o2`, `o1 == o2` and `o2 == o1` must
either both be true, or both be false.

- Transitive: For all objects `o1`, `o2`, and `o3`, if `o1 == o2` and
`o2 == o3` are true, then `o1 == o3` must be true.

The method should also be consistent over time,
so whether two objects are equal should only change
if at least one of the objects was modified.

If a subclass overrides the equality operator, it should override
the [hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.html) method as well to maintain consistency.

*Inherited from Object.*

:::details Implementation
```dart
external bool operator ==(Object other);
```
:::

## Static Methods {#section-static-methods}

### evaluateMagnitude() {#evaluatemagnitude}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">evaluateMagnitude</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><a href="../package-syntax_tree_expression/Expression" class="type-link">Expression</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">expression</span></span><span class="member-signature-token">, [</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">depth</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">])</span></span></div></div>

Iteratively evaluates an expression to estimate its true magnitude.

In Constructive Real Arithmetic, evaluating to precision `0` gives an error
bound of 2^0 = 1. For numbers >= 1, this immediately yields a good estimate of
the Most Significant Bit (MSB). However, for numbers close to 0 (e.g., 0.0001),
precision `0` just returns `0 +/- 1`, masking the true negative magnitude.

To budget errors correctly (especially for operations like division where a
tiny denominator massively scales the error), we must iteratively increase
the precision until a non-zero digit is found, revealing the true MSB.

:::details Implementation
```dart
static void evaluateMagnitude(Expression expression, [int depth = 0]) {
  int precision = 0;

  &#47;&#47; Start with a quick evaluation at low precision to catch large magnitudes without overhead
  MathCore.evaluateExpression(expression, precision, depth);

  &#47;&#47; If we already have a non-zero representation, the magnitude is already measurable
  if ((expression.value is RealResult &&
          (expression.value as RealResult).mantissa != BigInt.zero) ||
      expression.value is RationalResult ||
      expression.value is ErrorResult ||
      expression.value is IndeterminateResult)
    return;

  &#47;&#47; Start the iterative search for the MSB
  precision = 4;
  while (true) {
    MathCore.evaluateExpression(expression, precision, depth);

    &#47;&#47; If we found a non-zero representation, the magnitude is now measurable
    if (expression.value is RealResult &&
        (expression.value as RealResult).mantissa != BigInt.zero)
      return;

    &#47;&#47; To prevent infinite loops on very small numbers
    if (precision > MathCoreConfig.assumeZeroPrecision) return;

    &#47;&#47; Increase precision exponentially to quickly find the MSB
    precision <<= 1;
  }
}
```
:::

### getBinaryPrecisions() {#getbinaryprecisions}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Record</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">getBinaryPrecisions</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><a href="../package-syntax_tree_expression/BinaryExpression" class="type-link">BinaryExpression</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">binary</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">precision</span></span><span class="member-signature-token">)</span></span></div></div>

Calculates the dynamic precision required for a binary expression's children.

:::details Implementation
```dart
static (int, int) getBinaryPrecisions(
  BinaryExpression binary,
  int precision,
) {
  final normalizedPrecision = precision < 0 ? 0 : precision;

  switch (binary) {
    &#47;&#47; Non-linear operations scale the absolute error by the magnitude of their operands.
    &#47;&#47; For instance, the absolute error of (A * B) is roughly (A * error_B) + (B * error_A).
    &#47;&#47; To guarantee the target precision, we must budget extra bits proportional to the
    &#47;&#47; Base-2 magnitude (MSB) of the *other* operand, plus 3 guard bits to absorb rounding.
    case MulExpression():
    case DivExpression():
    case PwrExpression():
      final leftMag = _getMagnitude(binary.leftArg!.value);
      final rightMag = _getMagnitude(binary.rightArg!.value);
      return (
        normalizedPrecision + rightMag + 3,
        normalizedPrecision + leftMag + 3,
      );

    case LogExpression():
      &#47;&#47; log_a(b) = ln(b) &#47; ln(a) behaves like a division of two non-linear functions,
      &#47;&#47; so we budget magnitude-based guard bits for both operands.
      final leftMag = _getMagnitude(binary.leftArg!.value);
      final rightMag = _getMagnitude(binary.rightArg!.value);
      return (
        normalizedPrecision + rightMag + 3,
        normalizedPrecision + leftMag + 3,
      );

    &#47;&#47; Linear operations (A + B, A - B) don't scale the absolute error by magnitude.
    &#47;&#47; Adding 2 fixed guard bits is mathematically sufficient to absorb the carry
    &#47;&#47; and guarantee the required precision in the final result.
    default:
      return (normalizedPrecision + 2, normalizedPrecision + 2);
  }
}
```
:::

### getUnaryPrecision() {#getunaryprecision}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">getUnaryPrecision</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><a href="../package-syntax_tree_expression/UnaryExpression" class="type-link">UnaryExpression</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">unary</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">precision</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><a href="../package-syntax_tree_evaluation_result/EvaluationResult" class="type-link">EvaluationResult</a></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">childResult</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">);</span></span></div></div>

Calculates the dynamic precision required for a unary expression's child.

:::details Implementation
```dart
static int getUnaryPrecision(
  UnaryExpression unary,
  int precision,
  EvaluationResult? childResult,
) {
  final normalizedPrecision = precision < 0 ? 0 : precision;

  switch (unary) {
    case SqrtExpression():
    case FactExpression():
      &#47;&#47; Sqrt and Fact have derivative properties such that their absolute error growth
      &#47;&#47; remains linearly bounded. 2 guard bits strictly absorb rounding and guarantee precision.
      return normalizedPrecision + 2;

    case LnExpression():
      &#47;&#47; ln(x) has derivative 1&#47;x. When |x| < 1, absolute error is amplified,
      &#47;&#47; so we budget extra bits equal to the negative magnitude plus guard bits.
      final mag = _getMagnitude(childResult);
      final extra = mag < 0 ? -mag + 3 : 3;
      return normalizedPrecision + extra;

    default:
      &#47;&#47; This code path should never be reached but just to be safe we return a default precision budget of 2 guard bits
      return normalizedPrecision + 2;
  }
}
```
:::

