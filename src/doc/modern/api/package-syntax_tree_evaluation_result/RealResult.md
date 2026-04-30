---
title: "RealResult"
description: "API documentation for RealResult class from evaluation_result"
category: "Classes"
library: "evaluation_result"
outline: [2, 3]
editLink: false
prev: false
next: false
---

# RealResult

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">class</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">RealResult</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">extends</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><a href="./EvaluationResult" class="type-link">EvaluationResult</a></span></span></div></div>

Variant of [EvaluationResult](/api/package-syntax_tree_evaluation_result/EvaluationResult) for when the result cannot be calculated in the realm of rational numbers.
The value of this evaluation is [mantissa](/api/package-syntax_tree_evaluation_result/RealResult#prop-mantissa) * 2^[scale](/api/package-syntax_tree_evaluation_result/RealResult#prop-scale), where the [mantissa](/api/package-syntax_tree_evaluation_result/RealResult#prop-mantissa) is a [BigInt](https://api.flutter.dev/flutter/dart-core/BigInt-class.html) and the [scale](/api/package-syntax_tree_evaluation_result/RealResult#prop-scale) is an [int](https://api.flutter.dev/flutter/dart-core/int-class.html).
I.e.:

- 0.5 would be represented as mantissa = 0b1 and scale = -1
- 1.25 would be represented as mantissa = 0b101 and scale = -2
- 2 would be represented as mantissa = 0b1 and scale = 1

The [value](/api/package-syntax_tree_evaluation_result/RealResult#prop-value) getter returns the string representation of the real number using . as the decimal place separator.
The number of digits after the decimal point is determined by [precision](/api/package-syntax_tree_evaluation_result/RealResult#prop-precision), which is the number of digits considered
to be correct in base 10.

:::info Inheritance
Object → [EvaluationResult](/api/package-syntax_tree_evaluation_result/EvaluationResult) → **RealResult**
:::

:::info Implementers
- [RationalResult](/api/package-syntax_tree_evaluation_result/RationalResult)
:::

## Constructors {#section-constructors}

### RealResult() {#ctor-realresult}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="fn">RealResult</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">mantissa</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">scale</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">precision</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

:::details Implementation
```dart
RealResult({
  required this.mantissa,
  required this.scale,
  required this.precision,
});
```
:::

## Properties {#section-properties}

### hashCode <Badge type="tip" text="no setter" /> <Badge type="info" text="inherited" /> {#prop-hashcode}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">hashCode</span></span></span></div></div>

The hash code for this object.

A hash code is a single integer which represents the state of the object
that affects [operator ==](/api/package-syntax_tree_evaluation_result/RealResult#operator-equals) comparisons.

All objects have hash codes.
The default hash code implemented by [Object](https://api.flutter.dev/flutter/dart-core/Object-class.html)
represents only the identity of the object,
the same way as the default [operator ==](/api/package-syntax_tree_evaluation_result/RealResult#operator-equals) implementation only considers objects
equal if they are identical (see [identityHashCode](https://api.flutter.dev/flutter/dart-core/identityHashCode.html)).

If [operator ==](/api/package-syntax_tree_evaluation_result/RealResult#operator-equals) is overridden to use the object state instead,
the hash code must also be changed to represent that state,
otherwise the object cannot be used in hash based data structures
like the default [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html) and [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html) implementations.

Hash codes must be the same for objects that are equal to each other
according to [operator ==](/api/package-syntax_tree_evaluation_result/RealResult#operator-equals).
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

If a subclass overrides [hashCode](/api/package-syntax_tree_evaluation_result/RealResult#prop-hashcode), it should override the
[operator ==](/api/package-syntax_tree_evaluation_result/RealResult#operator-equals) operator as well to maintain consistency.

*Inherited from Object.*

:::details Implementation
```dart
external int get hashCode;
```
:::

### isInteger <Badge type="tip" text="no setter" /> <Badge type="info" text="inherited" /> {#prop-isinteger}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">isInteger</span></span></span></div></div>

Whether the result is an exact integer. This is true only for [RationalResult](/api/package-syntax_tree_evaluation_result/RationalResult)s where the denominator is 1

*Inherited from EvaluationResult.*

:::details Implementation
```dart
bool get isInteger => false;
```
:::

### isNegative <Badge type="tip" text="no setter" /> <Badge type="info" text="override" /> {#prop-isnegative}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">isNegative</span></span></span></div></div>

Whether the result is negative (less than zero). Error and indeterminate results are not considered negative.

:::details Implementation
```dart
@override
bool get isNegative => mantissa < BigInt.zero;
```
:::

### isZero <Badge type="tip" text="no setter" /> <Badge type="info" text="inherited" /> {#prop-iszero}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">isZero</span></span></span></div></div>

Whether the result is exactly zero. This is only true for [RationalResult](/api/package-syntax_tree_evaluation_result/RationalResult)s where the numerator is 0 as for [RealResult](/api/package-syntax_tree_evaluation_result/RealResult)s
we can never be sure whether it isn't just an error of approximation.

*Inherited from EvaluationResult.*

:::details Implementation
```dart
bool get isZero => false;
```
:::

### mantissa <Badge type="tip" text="read / write" /> {#prop-mantissa}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">mantissa</span></span></span></div></div>

:::details Implementation
```dart
BigInt mantissa;
```
:::

### precision <Badge type="tip" text="read / write" /> {#prop-precision}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">precision</span></span></span></div></div>

:::details Implementation
```dart
int precision;
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

### scale <Badge type="tip" text="read / write" /> {#prop-scale}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">scale</span></span></span></div></div>

:::details Implementation
```dart
int scale;
```
:::

### value <Badge type="tip" text="no setter" /> <Badge type="info" text="override" /> {#prop-value}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">value</span></span></span></div></div>

The string representation of the result of the evaluation of this node.

:::details Implementation
```dart
@override
String get value {
  &#47;&#47; If the scale is non-negative, we can simply shift the mantissa to the left by the scale and return it as a string
  if (scale >= 0) {
    return (mantissa << scale).toString();
  }

  &#47;&#47; To cheaply calculate the decimal representation, we can use the fact that 2^-n = 5^n &#47; 10^n, so we can multiply
  &#47;&#47; the mantissa by 5^-scale, convert to base 10 and then shift it to the right by -scale to get the integer part
  &#47;&#47; and the fractional part.

  final sign = mantissa < BigInt.zero ? '-' : '';
  final absMantissa = mantissa.abs();

  &#47;&#47; Multiply the mantissa by 5^-scale
  final decimalMantissa = absMantissa * BigInt.from(5).pow(-scale);
  final totalFractionDigits = -scale;

  &#47;&#47; If we need fewer digits than the exact fractional length, round to the requested precision.
  if (precision < totalFractionDigits) {
    final drop = totalFractionDigits - precision;
    final divisor = BigInt.from(10).pow(drop);

    var rounded = decimalMantissa ~&#47; divisor;
    final remainder = decimalMantissa.remainder(divisor);

    &#47;&#47; Round to nearest integer (half away from zero).
    if (remainder * BigInt.from(2) >= divisor) {
      rounded += BigInt.one;
    }

    final roundedString = rounded.toString();
    if (precision == 0) {
      return '$sign$roundedString';
    }

    final padded = roundedString.padLeft(precision + 1, '0');
    final integerPart = padded.substring(0, padded.length - precision);
    final fractionalPart = padded.substring(padded.length - precision);
    return '$sign$integerPart.$fractionalPart';
  }

  &#47;&#47; Otherwise, format the full fractional part and pad with zeros if needed.
  final decimalString = decimalMantissa.toString();
  final paddedString = decimalString.padLeft(totalFractionDigits + 1, '0');
  final integerPart = paddedString.substring(
    0,
    paddedString.length - totalFractionDigits,
  );
  var fractionalPart = paddedString.substring(
    paddedString.length - totalFractionDigits,
  );

  if (precision > totalFractionDigits) {
    fractionalPart = fractionalPart.padRight(precision, '0');
  }

  return precision == 0
      ? '$sign$integerPart'
      : '$sign$integerPart.$fractionalPart';
}
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

### toDouble() <Badge type="info" text="inherited" /> {#todouble}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">toDouble</span></span><span class="member-signature-token">()</span></span></div></div>

*Inherited from EvaluationResult.*

:::details Implementation
```dart
double toDouble() {
  return double.tryParse(value) ?? double.nan;
}
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

*Inherited from EvaluationResult.*

:::details Implementation
```dart
@override
toString() => value;
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

