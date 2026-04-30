---
title: "RationalMath"
description: "API documentation for RationalMath class from rational_math"
category: "Classes"
library: "rational_math"
outline: [2, 3]
editLink: false
prev: false
next: false
---

# RationalMath

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">class</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">RationalMath</span></span></span></div></div>

Helper class for evaluating rational expressions.

## Properties {#section-properties}

### hashCode <Badge type="tip" text="no setter" /> <Badge type="info" text="inherited" /> {#prop-hashcode}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">hashCode</span></span></span></div></div>

The hash code for this object.

A hash code is a single integer which represents the state of the object
that affects [operator ==](/api/package-math_core_rational_math_rational_math/RationalMath#operator-equals) comparisons.

All objects have hash codes.
The default hash code implemented by [Object](https://api.flutter.dev/flutter/dart-core/Object-class.html)
represents only the identity of the object,
the same way as the default [operator ==](/api/package-math_core_rational_math_rational_math/RationalMath#operator-equals) implementation only considers objects
equal if they are identical (see [identityHashCode](https://api.flutter.dev/flutter/dart-core/identityHashCode.html)).

If [operator ==](/api/package-math_core_rational_math_rational_math/RationalMath#operator-equals) is overridden to use the object state instead,
the hash code must also be changed to represent that state,
otherwise the object cannot be used in hash based data structures
like the default [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html) and [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html) implementations.

Hash codes must be the same for objects that are equal to each other
according to [operator ==](/api/package-math_core_rational_math_rational_math/RationalMath#operator-equals).
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

If a subclass overrides [hashCode](/api/package-math_core_rational_math_rational_math/RationalMath#prop-hashcode), it should override the
[operator ==](/api/package-math_core_rational_math_rational_math/RationalMath#operator-equals) operator as well to maintain consistency.

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

### CanEvaluateBinaryExpression() {#canevaluatebinaryexpression}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">CanEvaluateBinaryExpression</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><a href="../package-syntax_tree_expression/BinaryExpression" class="type-link">BinaryExpression</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">expression</span></span><span class="member-signature-token">)</span></span></div></div>

Helper method that checks, whether a given binary `expression` can be evaluated in the realm of
rational numbers.

:::details Implementation
```dart
static bool CanEvaluateBinaryExpression(BinaryExpression expression) {
  final left = expression.leftArg?.value,
      right = expression.rightArg?.value,
      isLeftRational = left is RationalResult,
      isRightRational = right is RationalResult;

  if (left == null || right == null) return false;

  switch (expression) {
    &#47;&#47; For addition, subtraction, multiplication and division, both arguments must be rational to stay in the rational realm.
    case AddExpression():
    case SubExpression():
    case MulExpression():
    case DivExpression():
      return isLeftRational && isRightRational;

    &#47;&#47; For exponentiation, there are two cases where we can stay in the rational realm:
    &#47;&#47; 1. If the base is rational and the exponent is an integer
    &#47;&#47; 2. The base is not 0 and the exponent is 0
    case PwrExpression():
      if (!left.isZero && right.isZero) return true;

      return (isLeftRational && right.isInteger);

    default:
      &#47;&#47; This codepath should never be reached but we return false just to be safe
      return false;
  }
}
```
:::

### EvaluateBinaryExpression() {#evaluatebinaryexpression}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">EvaluateBinaryExpression</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><a href="../package-syntax_tree_expression/BinaryExpression" class="type-link">BinaryExpression</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">expression</span></span><span class="member-signature-token">)</span></span></div></div>

Evaluates a binary expression in the realm of rational numbers. Trusts the caller to ensure
that both arguments are evaluated, otherwise the behavior is undefined.

:::details Implementation
```dart
static void EvaluateBinaryExpression(BinaryExpression expression) {
  switch (expression) {
    case AddExpression add:
      return _evaluateAddExpression(add);

    case SubExpression sub:
      return _evaluateSubExpression(sub);

    case MulExpression mul:
      return _evaluateMulExpression(mul);

    case DivExpression div:
      return _evaluateDivExpression(div);

    case PwrExpression pwr:
      return _evaluatePwrExpression(pwr);

    default:
      expression.value = ErrorResult(
        "Unsupported binary operation: ${expression.runtimeType}",
      );
  }
}
```
:::

