---
title: "PiCache"
description: "API documentation for PiCache class from series_cache"
category: "Classes"
library: "series_cache"
outline: [2, 3]
editLink: false
prev: false
next: false
---

# PiCache

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">class</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">PiCache</span></span></span></div></div>

Cache for the two atan series in Machin’s formula:
  π/4 = 4*atan(1/5) − atan(1/239).
This lets us reuse the exact sums for any requested precision.

## Constructors {#section-constructors}

### PiCache() {#ctor-picache}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="fn">PiCache</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">scale</span></span><span class="member-signature-token">)</span></span></div></div>

:::details Implementation
```dart
PiCache(int scale)
  : atan5 = AtanReciprocalCache(scale, 5),
    atan239 = AtanReciprocalCache(scale, 239);
```
:::

## Properties {#section-properties}

### atan239 <Badge type="tip" text="final" /> {#prop-atan239}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">final</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><a href="./AtanReciprocalCache" class="type-link">AtanReciprocalCache</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">atan239</span></span></span></div></div>

:::details Implementation
```dart
final AtanReciprocalCache atan239;
```
:::

### atan5 <Badge type="tip" text="final" /> {#prop-atan5}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">final</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><a href="./AtanReciprocalCache" class="type-link">AtanReciprocalCache</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">atan5</span></span></span></div></div>

:::details Implementation
```dart
final AtanReciprocalCache atan5;
```
:::

### hashCode <Badge type="tip" text="no setter" /> <Badge type="info" text="inherited" /> {#prop-hashcode}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">hashCode</span></span></span></div></div>

The hash code for this object.

A hash code is a single integer which represents the state of the object
that affects [operator ==](/api/package-math_core_literals_series_cache/PiCache#operator-equals) comparisons.

All objects have hash codes.
The default hash code implemented by [Object](https://api.flutter.dev/flutter/dart-core/Object-class.html)
represents only the identity of the object,
the same way as the default [operator ==](/api/package-math_core_literals_series_cache/PiCache#operator-equals) implementation only considers objects
equal if they are identical (see [identityHashCode](https://api.flutter.dev/flutter/dart-core/identityHashCode.html)).

If [operator ==](/api/package-math_core_literals_series_cache/PiCache#operator-equals) is overridden to use the object state instead,
the hash code must also be changed to represent that state,
otherwise the object cannot be used in hash based data structures
like the default [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html) and [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html) implementations.

Hash codes must be the same for objects that are equal to each other
according to [operator ==](/api/package-math_core_literals_series_cache/PiCache#operator-equals).
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

If a subclass overrides [hashCode](/api/package-math_core_literals_series_cache/PiCache#prop-hashcode), it should override the
[operator ==](/api/package-math_core_literals_series_cache/PiCache#operator-equals) operator as well to maintain consistency.

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

### evaluate() {#evaluate}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><a href="../package-syntax_tree_evaluation_result/RealResult" class="type-link">RealResult</a></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">evaluate</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">requestedScale</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">precision</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BigInt</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">halfUlpMantissa</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">);</span></span></div></div>

:::details Implementation
```dart
RealResult evaluate(
  int requestedScale,
  int precision,
  BigInt halfUlpMantissa,
) {
  final cached = _cachedResult;
  if (cached != null) {
    if (cached.scale == requestedScale) {
      return cached;
    }

    if (cached.scale < requestedScale && _cachedPiRational != null) {
      return RealResult(
        mantissa: roundRationalToScale(_cachedPiRational!, requestedScale) -
            halfUlpMantissa,
        scale: requestedScale,
        precision: precision,
      );
    }
  }

  &#47;&#47; Ensure both atan series are extended far enough for this scale.
  atan5.ensurePrecision(requestedScale);
  atan239.ensurePrecision(requestedScale);

  &#47;&#47; Combine exact rational sums using Machin's formula:
  &#47;&#47; pi = 16*atan(1&#47;5) - 4*atan(1&#47;239).
  final atan5Sum = atan5.sumRational;
  final atan239Sum = atan239.sumRational;
  final term1 = atan5Sum.multiplyInt(BigInt.from(16));
  final term2 = atan239Sum.multiplyInt(BigInt.from(4));
  final piRational = RationalSum.subtract(term1, term2);

  &#47;&#47; Round to the requested scale and apply the half-ULP bias.
  final mantissa = roundRationalToScale(piRational, requestedScale) -
      halfUlpMantissa;

  final result = RealResult(
    mantissa: mantissa,
    scale: requestedScale,
    precision: precision,
  );
  _cachedPiRational = piRational;
  if (_cachedResult == null || result.scale < _cachedResult!.scale) {
    _cachedResult = result;
  }
  return result;
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

