---
title: "CalculatorResultViewportController"
description: "API documentation for CalculatorResultViewportController class from calculator_result_viewport"
category: "Classes"
library: "calculator_result_viewport"
outline: [2, 3]
editLink: false
prev: false
next: false
---

# CalculatorResultViewportController

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">class</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">CalculatorResultViewportController</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">extends</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">ChangeNotifier</span></span></span></div></div>

Controller used to drive result viewport navigation actions.

:::info Inheritance
Object → ChangeNotifier → **CalculatorResultViewportController**
:::

## Constructors {#section-constructors}

### CalculatorResultViewportController() {#ctor-calculatorresultviewportcontroller}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="fn">CalculatorResultViewportController</span></span><span class="member-signature-token">()</span></span></div></div>

## Properties {#section-properties}

### canJumpToMostSignificantDigit <Badge type="tip" text="no setter" /> {#prop-canjumptomostsignificantdigit}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">canJumpToMostSignificantDigit</span></span></span></div></div>

Whether jumping to the leftmost visible overflow digit is currently possible.

:::details Implementation
```dart
bool get canJumpToMostSignificantDigit => _canJumpToMostSignificantDigit;
```
:::

### hashCode <Badge type="tip" text="no setter" /> <Badge type="info" text="inherited" /> {#prop-hashcode}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">hashCode</span></span></span></div></div>

The hash code for this object.

A hash code is a single integer which represents the state of the object
that affects [operator ==](/api/package-ivs_projekt_2_widgets_display_calculator_result_viewport/CalculatorResultViewportController#operator-equals) comparisons.

All objects have hash codes.
The default hash code implemented by [Object](https://api.flutter.dev/flutter/dart-core/Object-class.html)
represents only the identity of the object,
the same way as the default [operator ==](/api/package-ivs_projekt_2_widgets_display_calculator_result_viewport/CalculatorResultViewportController#operator-equals) implementation only considers objects
equal if they are identical (see [identityHashCode](https://api.flutter.dev/flutter/dart-core/identityHashCode.html)).

If [operator ==](/api/package-ivs_projekt_2_widgets_display_calculator_result_viewport/CalculatorResultViewportController#operator-equals) is overridden to use the object state instead,
the hash code must also be changed to represent that state,
otherwise the object cannot be used in hash based data structures
like the default [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html) and [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html) implementations.

Hash codes must be the same for objects that are equal to each other
according to [operator ==](/api/package-ivs_projekt_2_widgets_display_calculator_result_viewport/CalculatorResultViewportController#operator-equals).
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

If a subclass overrides [hashCode](/api/package-ivs_projekt_2_widgets_display_calculator_result_viewport/CalculatorResultViewportController#prop-hashcode), it should override the
[operator ==](/api/package-ivs_projekt_2_widgets_display_calculator_result_viewport/CalculatorResultViewportController#operator-equals) operator as well to maintain consistency.

*Inherited from Object.*

:::details Implementation
```dart
external int get hashCode;
```
:::

### hasListeners <Badge type="tip" text="no setter" /> <Badge type="info" text="inherited" /> {#prop-haslisteners}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">hasListeners</span></span></span></div></div>

Whether any listeners are currently registered.

Clients should not depend on this value for their behavior, because having
one listener's logic change when another listener happens to start or stop
listening will lead to extremely hard-to-track bugs. Subclasses might use
this information to determine whether to do any work when there are no
listeners, however; for example, resuming a [Stream](https://api.flutter.dev/flutter/dart-async/Stream-class.html) when a listener is
added and pausing it when a listener is removed.

Typically this is used by overriding [addListener](/api/package-ivs_projekt_2_widgets_display_calculator_result_viewport/CalculatorResultViewportController#addlistener), checking if
[hasListeners](/api/package-ivs_projekt_2_widgets_display_calculator_result_viewport/CalculatorResultViewportController#prop-haslisteners) is false before calling `super.addListener()`, and if so,
starting whatever work is needed to determine when to call
[notifyListeners](/api/package-ivs_projekt_2_widgets_display_calculator_result_viewport/CalculatorResultViewportController#notifylisteners); and similarly, by overriding [removeListener](/api/package-ivs_projekt_2_widgets_display_calculator_result_viewport/CalculatorResultViewportController#removelistener), checking
if [hasListeners](/api/package-ivs_projekt_2_widgets_display_calculator_result_viewport/CalculatorResultViewportController#prop-haslisteners) is false after calling `super.removeListener()`, and if
so, stopping that same work.

This method returns false if [dispose](/api/package-ivs_projekt_2_widgets_display_calculator_result_viewport/CalculatorResultViewportController#dispose) has been called.

*Inherited from ChangeNotifier.*

:::details Implementation
```dart
@protected
bool get hasListeners => _count > 0;
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

### addListener() <Badge type="info" text="inherited" /> {#addlistener}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">addListener</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">listener</span></span><span class="member-signature-token">)</span></span></div></div>

Register a closure to be called when the object changes.

If the given closure is already registered, an additional instance is
added, and must be removed the same number of times it is added before it
will stop being called.

This method must not be called after [dispose](https://api.flutter.dev/flutter/foundation/ChangeNotifier/dispose.html) has been called.

If a listener is added twice, and is removed once during an iteration
(e.g. in response to a notification), it will still be called again. If,
on the other hand, it is removed as many times as it was registered, then
it will no longer be called. This odd behavior is the result of the
[ChangeNotifier](https://api.flutter.dev/flutter/foundation/ChangeNotifier-class.html) not being able to determine which listener is being
removed, since they are identical, therefore it will conservatively still
call all the listeners when it knows that any are still registered.

This surprising behavior can be unexpectedly observed when registering a
listener on two separate objects which are both forwarding all
registrations to a common upstream object.

See also:

- [removeListener](https://api.flutter.dev/flutter/foundation/ChangeNotifier/removeListener.html), which removes a previously registered closure from
the list of closures that are notified when the object changes.

*Inherited from ChangeNotifier.*

:::details Implementation
```dart
@override
void addListener(VoidCallback listener) {
  assert(ChangeNotifier.debugAssertNotDisposed(this));

  if (kFlutterMemoryAllocationsEnabled) {
    maybeDispatchObjectCreation(this);
  }

  if (_count == _listeners.length) {
    if (_count == 0) {
      _listeners = List<VoidCallback?>.filled(1, null);
    } else {
      final newListeners = List<VoidCallback?>.filled(_listeners.length * 2, null);
      for (var i = 0; i < _count; i++) {
        newListeners[i] = _listeners[i];
      }
      _listeners = newListeners;
    }
  }
  _listeners[_count++] = listener;
}
```
:::

### dispose() <Badge type="info" text="inherited" /> {#dispose}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">dispose</span></span><span class="member-signature-token">()</span></span></div></div>

Discards any resources used by the object. After this is called, the
object is not in a usable state and should be discarded (calls to
[addListener](https://api.flutter.dev/flutter/foundation/ChangeNotifier/addListener.html) will throw after the object is disposed).

This method should only be called by the object's owner.

This method does not notify listeners, and clears the listener list once
it is called. Consumers of this class must decide on whether to notify
listeners or not immediately before disposal.

*Inherited from ChangeNotifier.*

:::details Implementation
```dart
@mustCallSuper
void dispose() {
  assert(ChangeNotifier.debugAssertNotDisposed(this));
  assert(
    _notificationCallStackDepth == 0,
    'The "dispose()" method on $this was called during the call to '
    '"notifyListeners()". This is likely to cause errors since it modifies '
    'the list of listeners while the list is being used.',
  );
  assert(() {
    _debugDisposed = true;
    if (_debugCreationDispatched) {
      assert(debugMaybeDispatchDisposed(this));
    }
    return true;
  }());
  _listeners = _emptyListeners;
  _count = 0;
}
```
:::

### jumpToMostSignificantDigit() {#jumptomostsignificantdigit}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">jumpToMostSignificantDigit</span></span><span class="member-signature-token">()</span></span></div></div>

Scrolls the viewport to the most significant (leftmost) digit.

:::details Implementation
```dart
void jumpToMostSignificantDigit() {
  if (!_canJumpToMostSignificantDigit) {
    return;
  }
  _jumpToMostSignificantDigitAction?.call();
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

### notifyListeners() <Badge type="info" text="inherited" /> {#notifylisteners}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">notifyListeners</span></span><span class="member-signature-token">()</span></span></div></div>

Call all the registered listeners.

Call this method whenever the object changes, to notify any clients the
object may have changed. Listeners that are added during this iteration
will not be visited. Listeners that are removed during this iteration will
not be visited after they are removed.

Exceptions thrown by listeners will be caught and reported using
[FlutterError.reportError](https://api.flutter.dev/flutter/foundation/FlutterError/reportError.html).

This method must not be called after [dispose](https://api.flutter.dev/flutter/foundation/ChangeNotifier/dispose.html) has been called.

Surprising behavior can result when reentrantly removing a listener (e.g.
in response to a notification) that has been registered multiple times.
See the discussion at [removeListener](https://api.flutter.dev/flutter/foundation/ChangeNotifier/removeListener.html).

*Inherited from ChangeNotifier.*

:::details Implementation
```dart
@protected
@visibleForTesting
@pragma('vm:notify-debugger-on-exception')
void notifyListeners() {
  assert(ChangeNotifier.debugAssertNotDisposed(this));
  if (_count == 0) {
    return;
  }

  &#47;&#47; To make sure that listeners removed during this iteration are not called,
  &#47;&#47; we set them to null, but we don't shrink the list right away.
  &#47;&#47; By doing this, we can continue to iterate on our list until it reaches
  &#47;&#47; the last listener added before the call to this method.

  &#47;&#47; To allow potential listeners to recursively call notifyListener, we track
  &#47;&#47; the number of times this method is called in _notificationCallStackDepth.
  &#47;&#47; Once every recursive iteration is finished (i.e. when _notificationCallStackDepth == 0),
  &#47;&#47; we can safely shrink our list so that it will only contain not null
  &#47;&#47; listeners.

  _notificationCallStackDepth++;

  final int end = _count;
  for (var i = 0; i < end; i++) {
    try {
      _listeners[i]?.call();
    } catch (exception, stack) {
      FlutterError.reportError(
        FlutterErrorDetails(
          exception: exception,
          stack: stack,
          library: 'foundation library',
          context: ErrorDescription('while dispatching notifications for $runtimeType'),
          informationCollector: () => <DiagnosticsNode>[
            DiagnosticsProperty<ChangeNotifier>(
              'The $runtimeType sending notification was',
              this,
              style: DiagnosticsTreeStyle.errorProperty,
            ),
          ],
        ),
      );
    }
  }

  _notificationCallStackDepth--;

  if (_notificationCallStackDepth == 0 && _reentrantlyRemovedListeners > 0) {
    &#47;&#47; We really remove the listeners when all notifications are done.
    final int newLength = _count - _reentrantlyRemovedListeners;
    if (newLength * 2 <= _listeners.length) {
      &#47;&#47; As in _removeAt, we only shrink the list when the real number of
      &#47;&#47; listeners is half the length of our list.
      final newListeners = List<VoidCallback?>.filled(newLength, null);

      var newIndex = 0;
      for (var i = 0; i < _count; i++) {
        final VoidCallback? listener = _listeners[i];
        if (listener != null) {
          newListeners[newIndex++] = listener;
        }
      }

      _listeners = newListeners;
    } else {
      &#47;&#47; Otherwise we put all the null references at the end.
      for (var i = 0; i < newLength; i += 1) {
        if (_listeners[i] == null) {
          &#47;&#47; We swap this item with the next not null item.
          int swapIndex = i + 1;
          while (_listeners[swapIndex] == null) {
            swapIndex += 1;
          }
          _listeners[i] = _listeners[swapIndex];
          _listeners[swapIndex] = null;
        }
      }
    }

    _reentrantlyRemovedListeners = 0;
    _count = newLength;
  }
}
```
:::

### removeListener() <Badge type="info" text="inherited" /> {#removelistener}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">removeListener</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">listener</span></span><span class="member-signature-token">)</span></span></div></div>

Remove a previously registered closure from the list of closures that are
notified when the object changes.

If the given listener is not registered, the call is ignored.

This method returns immediately if [dispose](https://api.flutter.dev/flutter/foundation/ChangeNotifier/dispose.html) has been called.

If a listener is added twice, and is removed once during an iteration
(e.g. in response to a notification), it will still be called again. If,
on the other hand, it is removed as many times as it was registered, then
it will no longer be called. This odd behavior is the result of the
[ChangeNotifier](https://api.flutter.dev/flutter/foundation/ChangeNotifier-class.html) not being able to determine which listener is being
removed, since they are identical, therefore it will conservatively still
call all the listeners when it knows that any are still registered.

This surprising behavior can be unexpectedly observed when registering a
listener on two separate objects which are both forwarding all
registrations to a common upstream object.

See also:

- [addListener](https://api.flutter.dev/flutter/foundation/ChangeNotifier/addListener.html), which registers a closure to be called when the object
changes.

*Inherited from ChangeNotifier.*

:::details Implementation
```dart
@override
void removeListener(VoidCallback listener) {
  &#47;&#47; This method is allowed to be called on disposed instances for usability
  &#47;&#47; reasons. Due to how our frame scheduling logic between render objects and
  &#47;&#47; overlays, it is common that the owner of this instance would be disposed a
  &#47;&#47; frame earlier than the listeners. Allowing calls to this method after it
  &#47;&#47; is disposed makes it easier for listeners to properly clean up.
  for (var i = 0; i < _count; i++) {
    final VoidCallback? listenerAtIndex = _listeners[i];
    if (listenerAtIndex == listener) {
      if (_notificationCallStackDepth > 0) {
        &#47;&#47; We don't resize the list during notifyListeners iterations
        &#47;&#47; but we set to null, the listeners we want to remove. We will
        &#47;&#47; effectively resize the list at the end of all notifyListeners
        &#47;&#47; iterations.
        _listeners[i] = null;
        _reentrantlyRemovedListeners++;
      } else {
        &#47;&#47; When we are outside the notifyListeners iterations we can
        &#47;&#47; effectively shrink the list.
        _removeAt(i);
      }
      break;
    }
  }
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

