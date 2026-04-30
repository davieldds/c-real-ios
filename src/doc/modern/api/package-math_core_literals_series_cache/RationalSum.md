---
title: "RationalSum"
description: "API documentation for RationalSum class from series_cache"
category: "Classes"
library: "series_cache"
outline: [2, 3]
editLink: false
prev: false
next: false
---

# RationalSum

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">class</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">RationalSum</span></span></span></div></div>

A simple exact rational number used by the series caches.
We keep the sum as a fraction (numerator/denominator) so we can
round correctly to *any* binary scale later.

## Constructors {#section-constructors}

### RationalSum() {#ctor-rationalsum}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="fn">RationalSum</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">numerator</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">denominator</span></span><span class="member-signature-token">)</span></span></div></div>

:::details Implementation
```dart
RationalSum(this.numerator, this.denominator) {
  _normalize();
}
```
:::

## Properties {#section-properties}

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
that affects [operator ==](/api/package-math_core_literals_series_cache/RationalSum#operator-equals) comparisons.

All objects have hash codes.
The default hash code implemented by [Object](https://api.flutter.dev/flutter/dart-core/Object-class.html)
represents only the identity of the object,
the same way as the default [operator ==](/api/package-math_core_literals_series_cache/RationalSum#operator-equals) implementation only considers objects
equal if they are identical (see [identityHashCode](https://api.flutter.dev/flutter/dart-core/identityHashCode.html)).

If [operator ==](/api/package-math_core_literals_series_cache/RationalSum#operator-equals) is overridden to use the object state instead,
the hash code must also be changed to represent that state,
otherwise the object cannot be used in hash based data structures
like the default [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html) and [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html) implementations.

Hash codes must be the same for objects that are equal to each other
according to [operator ==](/api/package-math_core_literals_series_cache/RationalSum#operator-equals).
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

If a subclass overrides [hashCode](/api/package-math_core_literals_series_cache/RationalSum#prop-hashcode), it should override the
[operator ==](/api/package-math_core_literals_series_cache/RationalSum#operator-equals) operator as well to maintain consistency.

*Inherited from Object.*

:::details Implementation
```dart
external int get hashCode;
```
:::

### numerator <Badge type="tip" text="read / write" /> {#prop-numerator}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">numerator</span></span></span></div></div>

:::details Implementation
```dart
BigInt numerator;
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

### multiplyInt() {#multiplyint}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><a href="./RationalSum" class="type-link">RationalSum</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">multiplyInt</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">factor</span></span><span class="member-signature-token">)</span></span></div></div>

:::details Implementation
```dart
RationalSum multiplyInt(BigInt factor) {
  if (factor == BigInt.zero) return RationalSum.zero();
  if (factor == BigInt.one) return RationalSum(numerator, denominator);
  return RationalSum(numerator * factor, denominator);
}
```
:::

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

### add() {#add}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><a href="./RationalSum" class="type-link">RationalSum</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">add</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><a href="./RationalSum" class="type-link">RationalSum</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">a</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><a href="./RationalSum" class="type-link">RationalSum</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">b</span></span><span class="member-signature-token">)</span></span></div></div>

:::details Implementation
```dart
static RationalSum add(RationalSum a, RationalSum b) {
  &#47;&#47; Fast-paths avoid unnecessary large integer work.
  if (a.numerator == BigInt.zero)
    return RationalSum(b.numerator, b.denominator);
  if (b.numerator == BigInt.zero)
    return RationalSum(a.numerator, a.denominator);

  if (a.denominator == b.denominator) {
    return RationalSum(a.numerator + b.numerator, a.denominator);
  }

  &#47;&#47; Cross-cancel common factors between denominators before multiplying.
  &#47;&#47; This keeps intermediate numerators&#47;denominators smaller while preserving exactness.
  final denGcd = a.denominator.gcd(b.denominator);
  final aDenReduced = a.denominator ~&#47; denGcd;
  final bDenReduced = b.denominator ~&#47; denGcd;

  final num = a.numerator * bDenReduced + b.numerator * aDenReduced;
  final den = aDenReduced * b.denominator;
  return RationalSum(num, den);
}
```
:::

### addUnreduced() {#addunreduced}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><a href="./RationalSum" class="type-link">RationalSum</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">addUnreduced</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><a href="./RationalSum" class="type-link">RationalSum</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">a</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><a href="./RationalSum" class="type-link">RationalSum</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">b</span></span><span class="member-signature-token">)</span></span></div></div>

Adds two rationals exactly but skips gcd reduction of the result.

Useful in binary splitting where many intermediate nodes are short-lived
and fully normalizing each one is expensive.

:::details Implementation
```dart
static RationalSum addUnreduced(RationalSum a, RationalSum b) {
  if (a.numerator == BigInt.zero) {
    return RationalSum._raw(b.numerator, b.denominator);
  }
  if (b.numerator == BigInt.zero) {
    return RationalSum._raw(a.numerator, a.denominator);
  }

  if (a.denominator == b.denominator) {
    return RationalSum._raw(a.numerator + b.numerator, a.denominator);
  }

  final denGcd = a.denominator.gcd(b.denominator);
  final aDenReduced = a.denominator ~&#47; denGcd;
  final bDenReduced = b.denominator ~&#47; denGcd;

  final num = a.numerator * bDenReduced + b.numerator * aDenReduced;
  final den = aDenReduced * b.denominator;
  return RationalSum._raw(num, den);
}
```
:::

### subtract() {#subtract}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><a href="./RationalSum" class="type-link">RationalSum</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">subtract</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><a href="./RationalSum" class="type-link">RationalSum</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">a</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><a href="./RationalSum" class="type-link">RationalSum</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">b</span></span><span class="member-signature-token">)</span></span></div></div>

:::details Implementation
```dart
static RationalSum subtract(RationalSum a, RationalSum b) {
  if (a.numerator == BigInt.zero)
    return RationalSum(-b.numerator, b.denominator);
  if (b.numerator == BigInt.zero)
    return RationalSum(a.numerator, a.denominator);

  if (a.denominator == b.denominator) {
    return RationalSum(a.numerator - b.numerator, a.denominator);
  }

  final denGcd = a.denominator.gcd(b.denominator);
  final aDenReduced = a.denominator ~&#47; denGcd;
  final bDenReduced = b.denominator ~&#47; denGcd;

  final num = a.numerator * bDenReduced - b.numerator * aDenReduced;
  final den = aDenReduced * b.denominator;
  return RationalSum(num, den);
}
```
:::

### zero() {#zero}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><a href="./RationalSum" class="type-link">RationalSum</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">zero</span></span><span class="member-signature-token">()</span></span></div></div>

:::details Implementation
```dart
static RationalSum zero() => RationalSum(BigInt.zero, BigInt.one);
```
:::

