---
title: "RationalResult"
description: "API documentation for RationalResult class from evaluation_result"
category: "Classes"
library: "evaluation_result"
outline: [2, 3]
editLink: false
prev: false
next: false
---

# RationalResult

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">class</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">RationalResult</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">extends</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><a href="./RealResult" class="type-link">RealResult</a></span></span></div></div>

Variant of [EvaluationResult](/api/package-syntax_tree_evaluation_result/EvaluationResult) for when the result is a rational number, represented as a fraction of two [BigInt](https://api.flutter.dev/flutter/dart-core/BigInt-class.html)s: [numerator](/api/package-syntax_tree_evaluation_result/RationalResult#prop-numerator) and [denominator](/api/package-syntax_tree_evaluation_result/RationalResult#prop-denominator).

The fraction is guaranteed to be in its simplest form and the denominator is always positive, so the sign of the rational number is determined solely by the sign of the numerator.

It extends [RealResult](/api/package-syntax_tree_evaluation_result/RealResult) because there might be a case where an operation will need to be performed on a rational and a real number, and in that case,
the rational number can be converted to a real number by performing the division of the [numerator](/api/package-syntax_tree_evaluation_result/RationalResult#prop-numerator) by the [denominator](/api/package-syntax_tree_evaluation_result/RationalResult#prop-denominator) and adjusting the [mantissa](/api/package-syntax_tree_evaluation_result/RealResult#prop-mantissa) and [scale](/api/package-syntax_tree_evaluation_result/RealResult#prop-scale) accordingly.
By default, the [mantissa](/api/package-syntax_tree_evaluation_result/RealResult#prop-mantissa) and [scale](/api/package-syntax_tree_evaluation_result/RealResult#prop-scale) are set to 0 and are only calculated when necessary.

The [value](/api/package-syntax_tree_evaluation_result/RationalResult#prop-value) getter returns a string in the form of "numerator/denominator" or just "numerator" if the denominator is 1.

:::info Inheritance
Object → [EvaluationResult](/api/package-syntax_tree_evaluation_result/EvaluationResult) → [RealResult](/api/package-syntax_tree_evaluation_result/RealResult) → **RationalResult**
:::

## Constructors {#section-constructors}

### RationalResult() {#ctor-rationalresult}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="fn">RationalResult</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">numerator</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">denominator</span></span><span class="member-signature-token">})</span></span></div></div>

:::details Implementation
```dart
RationalResult({required this.numerator, required this.denominator})
  : super(mantissa: BigInt.zero, scale: 0, precision: 0) {
  &#47;&#47; Check for division by zero
  if (denominator == BigInt.zero) {
    throw ArgumentError('Denominator cannot be zero');
  }

  &#47;&#47; Reduce the fraction to its simplest form
  final gcd = numerator.gcd(denominator);
  numerator = numerator ~&#47; gcd;
  denominator = denominator ~&#47; gcd;

  &#47;&#47; Ensure the denominator is positive
  if (denominator < BigInt.zero) {
    numerator = -numerator;
    denominator = -denominator;
  }
}
```
:::

## Properties {#section-properties}

### decimalValue <Badge type="tip" text="no setter" /> {#prop-decimalvalue}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">decimalValue</span></span></span></div></div>

:::details Implementation
```dart
String get decimalValue => super.value;
```
:::

### denominator <Badge type="tip" text="read / write" /> {#prop-denominator}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">denominator</span></span></span></div></div>

:::details Implementation
```dart
BigInt denominator;
```
:::

### hashCode <Badge type="tip" text="no setter" /> <Badge type="info" text="inherited" /> {#prop-hashcode}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">hashCode</span></span></span></div></div>

The hash code for this object.

A hash code is a single integer which represents the state of the object
that affects [operator ==](/api/package-syntax_tree_evaluation_result/RationalResult#operator-equals) comparisons.

All objects have hash codes.
The default hash code implemented by [Object](https://api.flutter.dev/flutter/dart-core/Object-class.html)
represents only the identity of the object,
the same way as the default [operator ==](/api/package-syntax_tree_evaluation_result/RationalResult#operator-equals) implementation only considers objects
equal if they are identical (see [identityHashCode](https://api.flutter.dev/flutter/dart-core/identityHashCode.html)).

If [operator ==](/api/package-syntax_tree_evaluation_result/RationalResult#operator-equals) is overridden to use the object state instead,
the hash code must also be changed to represent that state,
otherwise the object cannot be used in hash based data structures
like the default [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html) and [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html) implementations.

Hash codes must be the same for objects that are equal to each other
according to [operator ==](/api/package-syntax_tree_evaluation_result/RationalResult#operator-equals).
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

If a subclass overrides [hashCode](/api/package-syntax_tree_evaluation_result/RationalResult#prop-hashcode), it should override the
[operator ==](/api/package-syntax_tree_evaluation_result/RationalResult#operator-equals) operator as well to maintain consistency.

*Inherited from Object.*

:::details Implementation
```dart
external int get hashCode;
```
:::

### isInteger <Badge type="tip" text="no setter" /> <Badge type="info" text="override" /> {#prop-isinteger}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">isInteger</span></span></span></div></div>

Whether the result is an exact integer. This is true only for [RationalResult](/api/package-syntax_tree_evaluation_result/RationalResult)s where the denominator is 1

:::details Implementation
```dart
@override
bool get isInteger => denominator == BigInt.one;
```
:::

### isNegative <Badge type="tip" text="no setter" /> <Badge type="info" text="override" /> {#prop-isnegative}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">isNegative</span></span></span></div></div>

Whether the result is negative (less than zero). Error and indeterminate results are not considered negative.

:::details Implementation
```dart
@override
bool get isNegative => numerator < BigInt.zero;
```
:::

### isZero <Badge type="tip" text="no setter" /> <Badge type="info" text="override" /> {#prop-iszero}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">isZero</span></span></span></div></div>

Whether the result is exactly zero. This is only true for [RationalResult](/api/package-syntax_tree_evaluation_result/RationalResult)s where the numerator is 0 as for [RealResult](/api/package-syntax_tree_evaluation_result/RealResult)s
we can never be sure whether it isn't just an error of approximation.

:::details Implementation
```dart
@override
bool get isZero => numerator == BigInt.zero;
```
:::

### mantissa <Badge type="tip" text="read / write" /> <Badge type="info" text="inherited" /> {#prop-mantissa}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">mantissa</span></span></span></div></div>

*Inherited from RealResult.*

:::details Implementation
```dart
BigInt mantissa;
```
:::

### numerator <Badge type="tip" text="read / write" /> {#prop-numerator}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">numerator</span></span></span></div></div>

:::details Implementation
```dart
BigInt numerator;
```
:::

### precision <Badge type="tip" text="read / write" /> <Badge type="info" text="inherited" /> {#prop-precision}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">precision</span></span></span></div></div>

*Inherited from RealResult.*

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

### scale <Badge type="tip" text="read / write" /> <Badge type="info" text="inherited" /> {#prop-scale}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">scale</span></span></span></div></div>

*Inherited from RealResult.*

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
String get value =>
    denominator == BigInt.one ? "$numerator" : "$numerator&#47;$denominator";
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

