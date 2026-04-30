---
title: "CalculatorExpressionField"
description: "API documentation for CalculatorExpressionField class from calculator_expression_field"
category: "Classes"
library: "calculator_expression_field"
outline: [2, 3]
outlineCollapsible: true
editLink: false
prev: false
next: false
---

# CalculatorExpressionField

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">class</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">CalculatorExpressionField</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">extends</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">StatefulWidget</span></span></span></div></div>

Expression editor used for manual formula entry.

This widget provides the main text input area for calculator expressions.
It is intentionally generic so that expression parsing and validation logic
can be supplied by other parts of the application.

:::info Inheritance
Object → DiagnosticableTree → Widget → StatefulWidget → **CalculatorExpressionField**
:::

:::info Available Extensions
- AlignedWidgetExtension
- BoxColorsExtension
- BoxFitWidgetExtensions
- CenterWidgetExtension
- ClipPathWidgetExtensions
- ClipRectWidgetExtensions
- ColoredBoxExtension
- ColumnWidgetExtension
- ConstrainedBoxExtension
- ContainerWidgetExtension
- CupertinoBoxColorsExtension
- CupertinoButtonWidgetExtensions
- DecoratedBoxWidgetExtension
- ElevatedButtonWidgetExtensions
- ExpandedWidgetExtension
- FlexibleWidgetExtension
- HeroWidgetExtension
- IntrinsicWidthWidgetExtensions
- MarginWidgetExtension
- OpacityWidgetExtension
- PaddingExtensions
- PositionedWidgetExtensions
- RowWidgetExtension
- SafeAreaExtension
- SizedBoxExtension
- SquircleWidgetExtensions
- StackWidgetExtension
- VisibleWidgetExtension
- WidgetOnGestureExtension
:::

## Constructors {#section-constructors}

### CalculatorExpressionField() <Badge type="tip" text="const" /> {#ctor-calculatorexpressionfield}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">const</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">CalculatorExpressionField</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Key</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">key</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">MathFieldEditingController</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">controller</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSubmitRequested</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">errorText</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">helperText</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">})</span></span></div></div>

Creates the expression field widget.

:::details Implementation
```dart
const CalculatorExpressionField({
  super.key,
  required this.controller,
  required this.focusNode,
  required this.onSubmitRequested,
  this.errorText,
  this.helperText,
});
```
:::

## Properties {#section-properties}

### controller <Badge type="tip" text="final" /> {#prop-controller}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">final</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">MathFieldEditingController</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">controller</span></span></span></div></div>

Controller used to read and modify the expression text.

:::details Implementation
```dart
final MathFieldEditingController controller;
```
:::

### errorText <Badge type="tip" text="final" /> {#prop-errortext}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">final</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">errorText</span></span></span></div></div>

Optional inline error shown under the expression editor.

:::details Implementation
```dart
final String? errorText;
```
:::

### expanded1 <Badge type="info" text="extension" /> <Badge type="tip" text="no setter" /> {#prop-expanded1}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Expanded</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">expanded1</span></span></span></div></div>

Wraps the widget in an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) with flex value 1.

This is a convenience getter equivalent to calling `expandedFlex(1)`.
Most commonly used for equal distribution of space among siblings.

Returns an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget with flex value 1.

Example:

```dart
Row(
  children: [
    Text('Left').expanded,   // Equal space
    Text('Right').expanded,  // Equal space
  ],
);
```

*Available on Widget, provided by the ExpandedWidgetExtension extension*

:::details Implementation
```dart
Expanded get expanded1 => expandedFlex(1);
```
:::

### expanded2 <Badge type="info" text="extension" /> <Badge type="tip" text="no setter" /> {#prop-expanded2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Expanded</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">expanded2</span></span></span></div></div>

Wraps the widget in an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) with flex value 2.

This is a convenience getter equivalent to calling `expandedFlex(2)`.
Takes twice as much space as widgets with flex value 1.

Returns an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget with flex value 2.

Example:

```dart
Row(
  children: [
    Text('Small').expanded,   // 1/3 of space
    Text('Large').expanded2,  // 2/3 of space
  ],
);
```

*Available on Widget, provided by the ExpandedWidgetExtension extension*

:::details Implementation
```dart
Expanded get expanded2 => expandedFlex(2);
```
:::

### expanded3 <Badge type="info" text="extension" /> <Badge type="tip" text="no setter" /> {#prop-expanded3}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Expanded</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">expanded3</span></span></span></div></div>

Wraps the widget in an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) with flex value 3.

This is a convenience getter equivalent to calling `expandedFlex(3)`.
Takes three times as much space as widgets with flex value 1.

Returns an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget with flex value 3.

*Available on Widget, provided by the ExpandedWidgetExtension extension*

:::details Implementation
```dart
Expanded get expanded3 => expandedFlex(3);
```
:::

### expanded4 <Badge type="info" text="extension" /> <Badge type="tip" text="no setter" /> {#prop-expanded4}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Expanded</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">expanded4</span></span></span></div></div>

Wraps the widget in an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) with flex value 4.

This is a convenience getter equivalent to calling `expandedFlex(4)`.
Takes four times as much space as widgets with flex value 1.

Returns an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget with flex value 4.

*Available on Widget, provided by the ExpandedWidgetExtension extension*

:::details Implementation
```dart
Expanded get expanded4 => expandedFlex(4);
```
:::

### expanded5 <Badge type="info" text="extension" /> <Badge type="tip" text="no setter" /> {#prop-expanded5}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Expanded</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">expanded5</span></span></span></div></div>

Wraps the widget in an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) with flex value 5.

This is a convenience getter equivalent to calling `expandedFlex(5)`.
Takes five times as much space as widgets with flex value 1.

Returns an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget with flex value 5.

*Available on Widget, provided by the ExpandedWidgetExtension extension*

:::details Implementation
```dart
Expanded get expanded5 => expandedFlex(5);
```
:::

### expanded6 <Badge type="info" text="extension" /> <Badge type="tip" text="no setter" /> {#prop-expanded6}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Expanded</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">expanded6</span></span></span></div></div>

Wraps the widget in an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) with flex value 6.

This is a convenience getter equivalent to calling `expandedFlex(6)`.
Takes six times as much space as widgets with flex value 1.

Returns an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget with flex value 6.

*Available on Widget, provided by the ExpandedWidgetExtension extension*

:::details Implementation
```dart
Expanded get expanded6 => expandedFlex(6);
```
:::

### expanded7 <Badge type="info" text="extension" /> <Badge type="tip" text="no setter" /> {#prop-expanded7}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Expanded</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">expanded7</span></span></span></div></div>

Wraps the widget in an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) with flex value 7.

This is a convenience getter equivalent to calling `expandedFlex(7)`.
Takes seven times as much space as widgets with flex value 1.

Returns an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget with flex value 7.

*Available on Widget, provided by the ExpandedWidgetExtension extension*

:::details Implementation
```dart
Expanded get expanded7 => expandedFlex(7);
```
:::

### expanded8 <Badge type="info" text="extension" /> <Badge type="tip" text="no setter" /> {#prop-expanded8}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Expanded</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">expanded8</span></span></span></div></div>

Wraps the widget in an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) with flex value 8.

This is a convenience getter equivalent to calling `expandedFlex(8)`.
Takes eight times as much space as widgets with flex value 1.

Returns an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget with flex value 8.

*Available on Widget, provided by the ExpandedWidgetExtension extension*

:::details Implementation
```dart
Expanded get expanded8 => expandedFlex(8);
```
:::

### focusNode <Badge type="tip" text="final" /> {#prop-focusnode}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">final</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">focusNode</span></span></span></div></div>

Focus node used to restore keyboard focus after function insertion.

:::details Implementation
```dart
final FocusNode focusNode;
```
:::

### hashCode <Badge type="tip" text="no setter" /> <Badge type="info" text="inherited" /> {#prop-hashcode}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">hashCode</span></span></span></div></div>

The hash code for this object.

A hash code is a single integer which represents the state of the object
that affects [operator ==](/api/package-ivs_projekt_2_widgets_display_calculator_expression_field/CalculatorExpressionField#operator-equals) comparisons.

All objects have hash codes.
The default hash code implemented by [Object](https://api.flutter.dev/flutter/dart-core/Object-class.html)
represents only the identity of the object,
the same way as the default [operator ==](/api/package-ivs_projekt_2_widgets_display_calculator_expression_field/CalculatorExpressionField#operator-equals) implementation only considers objects
equal if they are identical (see [identityHashCode](https://api.flutter.dev/flutter/dart-core/identityHashCode.html)).

If [operator ==](/api/package-ivs_projekt_2_widgets_display_calculator_expression_field/CalculatorExpressionField#operator-equals) is overridden to use the object state instead,
the hash code must also be changed to represent that state,
otherwise the object cannot be used in hash based data structures
like the default [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html) and [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html) implementations.

Hash codes must be the same for objects that are equal to each other
according to [operator ==](/api/package-ivs_projekt_2_widgets_display_calculator_expression_field/CalculatorExpressionField#operator-equals).
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

If a subclass overrides [hashCode](/api/package-ivs_projekt_2_widgets_display_calculator_expression_field/CalculatorExpressionField#prop-hashcode), it should override the
[operator ==](/api/package-ivs_projekt_2_widgets_display_calculator_expression_field/CalculatorExpressionField#operator-equals) operator as well to maintain consistency.

*Inherited from Widget.*

:::details Implementation
```dart
@override
@nonVirtual
int get hashCode => super.hashCode;
```
:::

### helperText <Badge type="tip" text="final" /> {#prop-helpertext}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">final</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">helperText</span></span></span></div></div>

Optional helper text shown below the expression editor.

:::details Implementation
```dart
final String? helperText;
```
:::

### key <Badge type="tip" text="final" /> <Badge type="info" text="inherited" /> {#prop-key}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">final</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Key</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">key</span></span></span></div></div>

Controls how one widget replaces another widget in the tree.

If the [runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.html) and [key](https://api.flutter.dev/flutter/widgets/Widget/key.html) properties of the two widgets are
[operator==](https://api.flutter.dev/flutter/widgets/Widget/operator_equals.html), respectively, then the new widget replaces the old widget by
updating the underlying element (i.e., by calling [Element.update](https://api.flutter.dev/flutter/widgets/Element/update.html) with the
new widget). Otherwise, the old element is removed from the tree, the new
widget is inflated into an element, and the new element is inserted into the
tree.

In addition, using a [GlobalKey](https://api.flutter.dev/flutter/widgets/GlobalKey-class.html) as the widget's [key](https://api.flutter.dev/flutter/widgets/Widget/key.html) allows the element
to be moved around the tree (changing parent) without losing state. When a
new widget is found (its key and type do not match a previous widget in
the same location), but there was a widget with that same global key
elsewhere in the tree in the previous frame, then that widget's element is
moved to the new location.

Generally, a widget that is the only child of another widget does not need
an explicit key.

See also:

- The discussions at [Key](https://api.flutter.dev/flutter/foundation/Key-class.html) and [GlobalKey](https://api.flutter.dev/flutter/widgets/GlobalKey-class.html).

*Inherited from Widget.*

:::details Implementation
```dart
final Key? key;
```
:::

### onSubmitRequested <Badge type="tip" text="final" /> {#prop-onsubmitrequested}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">final</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onSubmitRequested</span></span></span></div></div>

Callback invoked when Enter/NumpadEnter is pressed.

:::details Implementation
```dart
final VoidCallback onSubmitRequested;
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

### activeBlueBox() <Badge type="info" text="extension" /> {#activebluebox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">activeBlueBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with active blue color.

Uses [CupertinoColors.activeBlue](https://api.flutter.dev/flutter/cupertino/CupertinoColors/activeBlue-constant.html) which is a more vibrant blue
typically used for active states, pressed buttons, or highlighted elements.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with active blue background.

Example:

```dart
CupertinoButton(child: Text('Press Me')).activeBlueBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox activeBlueBox() => coloredBox(CupertinoColors.activeBlue);
```
:::

### activeGreenBox() <Badge type="info" text="extension" /> {#activegreenbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">activeGreenBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with active green color.

Uses [CupertinoColors.activeGreen](https://api.flutter.dev/flutter/cupertino/CupertinoColors/activeGreen-constant.html) which is a more vibrant green
typically used for active states, selected items, or call-to-action elements.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with active green background.

Example:

```dart
Text('Active').activeGreenBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox activeGreenBox() => coloredBox(CupertinoColors.activeGreen);
```
:::

### align() <Badge type="info" text="extension" /> {#align}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Align</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">align</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Alignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">widthFactor</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">heightFactor</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in an [Align](https://api.flutter.dev/flutter/widgets/Align-class.html) widget with the specified alignment.

Creates an [Align](https://api.flutter.dev/flutter/widgets/Align-class.html) widget that positions its child according to the
specified alignment within the available space. This is the base method
that other alignment methods in this extension use internally.

Parameters:

- `alignment`: How to align the child within the available space.
Defaults to [Alignment.center](https://api.flutter.dev/flutter/painting/Alignment/center-constant.html).
- `widthFactor`: If non-null, sets the width to the child's width multiplied
by this factor. If null, the widget takes up all available width.
- `heightFactor`: If non-null, sets the height to the child's height multiplied
by this factor. If null, the widget takes up all available height.

Returns an [Align](https://api.flutter.dev/flutter/widgets/Align-class.html) widget containing this widget as its child.

Example:

```dart
Text('Custom aligned text')
  .align(
    alignment: Alignment.topLeft,
    widthFactor: 2.0,  // Width = child width × 2
    heightFactor: 1.5, // Height = child height × 1.5
  );
```

*Available on Widget, provided by the AlignedWidgetExtension extension*

:::details Implementation
```dart
Align align({
  AlignmentGeometry alignment = Alignment.center,
  double? widthFactor,
  double? heightFactor,
}) =>
    Align(
      alignment: alignment,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
```
:::

### alignBottomCenter() <Badge type="info" text="extension" /> {#alignbottomcenter}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Align</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">alignBottomCenter</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">widthFactor</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">heightFactor</span></span><span class="member-signature-token">})</span></span></div></div>

Aligns the widget to the bottom-center of the available space.

Positions the widget at the horizontal center and bottom edge
of the available space. Useful for footer content, action buttons,
or status messages that should be centered at the bottom.

Parameters:

- `widthFactor`: Width sizing factor relative to child's width.
- `heightFactor`: Height sizing factor relative to child's height.

Returns an [Align](https://api.flutter.dev/flutter/widgets/Align-class.html) widget with bottom-center alignment.

Example:

```dart
ElevatedButton(
  onPressed: () {},
  child: Text('Continue'),
).alignBottomCenter()
 .sizedBox(width: 300, height: 200);
```

*Available on Widget, provided by the AlignedWidgetExtension extension*

:::details Implementation
```dart
Align alignBottomCenter({
  double? widthFactor,
  double? heightFactor,
}) =>
    align(
      alignment: Alignment.bottomCenter,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
    );
```
:::

### alignBottomLeft() <Badge type="info" text="extension" /> {#alignbottomleft}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Align</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">alignBottomLeft</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">widthFactor</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">heightFactor</span></span><span class="member-signature-token">})</span></span></div></div>

Aligns the widget to the bottom-left corner of the available space.

Positions the widget at the bottom-left corner, useful for
status indicators, secondary actions, or footer content.

Parameters:

- `widthFactor`: Width sizing factor relative to child's width.
- `heightFactor`: Height sizing factor relative to child's height.

Returns an [Align](https://api.flutter.dev/flutter/widgets/Align-class.html) widget with bottom-left alignment.

Example:

```dart
Text('Status: Online')
  .alignBottomLeft()
  .sizedBox(width: 200, height: 100);
```

*Available on Widget, provided by the AlignedWidgetExtension extension*

:::details Implementation
```dart
Align alignBottomLeft({
  double? widthFactor,
  double? heightFactor,
}) =>
    align(
      alignment: Alignment.bottomLeft,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
    );
```
:::

### alignBottomRight() <Badge type="info" text="extension" /> {#alignbottomright}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Align</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">alignBottomRight</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">widthFactor</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">heightFactor</span></span><span class="member-signature-token">})</span></span></div></div>

Aligns the widget to the bottom-right corner of the available space.

Positions the widget at the bottom-right corner, commonly used for
floating action buttons, secondary actions, or corner indicators.

Parameters:

- `widthFactor`: Width sizing factor relative to child's width.
- `heightFactor`: Height sizing factor relative to child's height.

Returns an [Align](https://api.flutter.dev/flutter/widgets/Align-class.html) widget with bottom-right alignment.

Example:

```dart
FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
).alignBottomRight()
 .sizedBox(width: 300, height: 200);
```

*Available on Widget, provided by the AlignedWidgetExtension extension*

:::details Implementation
```dart
Align alignBottomRight({
  double? widthFactor,
  double? heightFactor,
}) =>
    align(
      alignment: Alignment.bottomRight,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
    );
```
:::

### alignCenter() <Badge type="info" text="extension" /> {#aligncenter}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Align</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">alignCenter</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">widthFactor</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">heightFactor</span></span><span class="member-signature-token">})</span></span></div></div>

Aligns the widget to the center of the available space.

This is a convenience method equivalent to calling `align(alignment: Alignment.center)`.
Centers the widget both horizontally and vertically within the available space.

Parameters:

- `widthFactor`: If non-null, sets the width to the child's width multiplied
by this factor. If null, takes up all available width.
- `heightFactor`: If non-null, sets the height to the child's height multiplied
by this factor. If null, takes up all available height.

Returns an [Align](https://api.flutter.dev/flutter/widgets/Align-class.html) widget with center alignment.

Example:

```dart
Text('Centered text')
  .alignCenter()
  .sizedBox(width: 200, height: 100);
```

*Available on Widget, provided by the AlignedWidgetExtension extension*

:::details Implementation
```dart
Align alignCenter({
  double? widthFactor,
  double? heightFactor,
}) =>
    align(
      alignment: Alignment.center,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
    );
```
:::

### alignCenterLeft() <Badge type="info" text="extension" /> {#aligncenterleft}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Align</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">alignCenterLeft</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">widthFactor</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">heightFactor</span></span><span class="member-signature-token">})</span></span></div></div>

Aligns the widget to the center-left of the available space.

Positions the widget at the vertical center and horizontal left edge
of the available space. Useful for left-aligned content that should
be vertically centered.

Parameters:

- `widthFactor`: Width sizing factor relative to child's width.
- `heightFactor`: Height sizing factor relative to child's height.

Returns an [Align](https://api.flutter.dev/flutter/widgets/Align-class.html) widget with center-left alignment.

Example:

```dart
Icon(Icons.arrow_back)
  .alignCenterLeft()
  .sizedBox(width: 100, height: 50);
```

*Available on Widget, provided by the AlignedWidgetExtension extension*

:::details Implementation
```dart
Align alignCenterLeft({
  double? widthFactor,
  double? heightFactor,
}) =>
    align(
      alignment: Alignment.centerLeft,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
    );
```
:::

### alignCenterRight() <Badge type="info" text="extension" /> {#aligncenterright}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Align</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">alignCenterRight</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">widthFactor</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">heightFactor</span></span><span class="member-signature-token">})</span></span></div></div>

Aligns the widget to the center-right of the available space.

Positions the widget at the vertical center and horizontal right edge
of the available space. Useful for right-aligned content that should
be vertically centered.

Parameters:

- `widthFactor`: Width sizing factor relative to child's width.
- `heightFactor`: Height sizing factor relative to child's height.

Returns an [Align](https://api.flutter.dev/flutter/widgets/Align-class.html) widget with center-right alignment.

Example:

```dart
Icon(Icons.arrow_forward)
  .alignCenterRight()
  .sizedBox(width: 100, height: 50);
```

*Available on Widget, provided by the AlignedWidgetExtension extension*

:::details Implementation
```dart
Align alignCenterRight({
  double? widthFactor,
  double? heightFactor,
}) =>
    align(
      alignment: Alignment.centerRight,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
    );
```
:::

### alignTopCenter() <Badge type="info" text="extension" /> {#aligntopcenter}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Align</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">alignTopCenter</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">widthFactor</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">heightFactor</span></span><span class="member-signature-token">})</span></span></div></div>

Aligns the widget to the top-center of the available space.

Positions the widget at the horizontal center and top edge
of the available space. Useful for headers or titles that should
be centered horizontally at the top.

Parameters:

- `widthFactor`: Width sizing factor relative to child's width.
- `heightFactor`: Height sizing factor relative to child's height.

Returns an [Align](https://api.flutter.dev/flutter/widgets/Align-class.html) widget with top-center alignment.

Example:

```dart
Text('Header Title')
  .alignTopCenter()
  .sizedBox(width: 200, height: 100);
```

*Available on Widget, provided by the AlignedWidgetExtension extension*

:::details Implementation
```dart
Align alignTopCenter({
  double? widthFactor,
  double? heightFactor,
}) =>
    align(
      alignment: Alignment.topCenter,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
    );
```
:::

### alignTopLeft() <Badge type="info" text="extension" /> {#aligntopleft}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Align</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">alignTopLeft</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">widthFactor</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">heightFactor</span></span><span class="member-signature-token">})</span></span></div></div>

Aligns the widget to the top-left corner of the available space.

Positions the widget at the top-left corner, which is often the
default starting position for content in left-to-right layouts.

Parameters:

- `widthFactor`: Width sizing factor relative to child's width.
- `heightFactor`: Height sizing factor relative to child's height.

Returns an [Align](https://api.flutter.dev/flutter/widgets/Align-class.html) widget with top-left alignment.

Example:

```dart
Icon(Icons.menu)
  .alignTopLeft()
  .sizedBox(width: 100, height: 100);
```

*Available on Widget, provided by the AlignedWidgetExtension extension*

:::details Implementation
```dart
Align alignTopLeft({
  double? widthFactor,
  double? heightFactor,
}) =>
    align(
      alignment: Alignment.topLeft,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
    );
```
:::

### alignTopRight() <Badge type="info" text="extension" /> {#aligntopright}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Align</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">alignTopRight</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">widthFactor</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">heightFactor</span></span><span class="member-signature-token">})</span></span></div></div>

Aligns the widget to the top-right corner of the available space.

Positions the widget at the top-right corner, commonly used for
action buttons, close buttons, or secondary navigation elements.

Parameters:

- `widthFactor`: Width sizing factor relative to child's width.
- `heightFactor`: Height sizing factor relative to child's height.

Returns an [Align](https://api.flutter.dev/flutter/widgets/Align-class.html) widget with top-right alignment.

Example:

```dart
Icon(Icons.close)
  .alignTopRight()
  .sizedBox(width: 100, height: 100);
```

*Available on Widget, provided by the AlignedWidgetExtension extension*

:::details Implementation
```dart
Align alignTopRight({
  double? widthFactor,
  double? heightFactor,
}) =>
    align(
      alignment: Alignment.topRight,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
    );
```
:::

### blackBox() <Badge type="info" text="extension" /> {#blackbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">blackBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a black colored box.

Uses [Colors.black](https://api.flutter.dev/flutter/material/Colors/black-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with black background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox blackBox() => coloredBox(Colors.black);
```
:::

### blackBox() <Badge type="info" text="extension" /> {#blackbox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">blackBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with black color.

Uses [CupertinoColors.black](https://api.flutter.dev/flutter/cupertino/CupertinoColors/black-constant.html) which provides a pure black background.
This color does not adapt to light/dark mode and remains consistently black.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with black background.

Example:

```dart
Text('Dark Mode', style: TextStyle(color: Colors.white)).blackBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox blackBox() => coloredBox(CupertinoColors.black);
```
:::

### blueAccentBox() <Badge type="info" text="extension" /> {#blueaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">blueAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a blue accent colored box.

Uses [Colors.blueAccent](https://api.flutter.dev/flutter/material/Colors/blueAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of blue.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with blue accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox blueAccentBox() => coloredBox(Colors.blueAccent);
```
:::

### blueBox() <Badge type="info" text="extension" /> {#bluebox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">blueBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a blue colored box.

Uses [Colors.blue](https://api.flutter.dev/flutter/material/Colors/blue-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with blue background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox blueBox() => coloredBox(Colors.blue);
```
:::

### blueBox() <Badge type="info" text="extension" /> {#bluebox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">blueBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with system blue color.

Uses [CupertinoColors.systemBlue](https://api.flutter.dev/flutter/cupertino/CupertinoColors/systemBlue-constant.html) which adapts to light/dark mode.
This is the standard blue color used throughout iOS interfaces,
commonly used for links, primary actions, and informational elements.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with blue background.

Example:

```dart
Text('Learn More').blueBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox blueBox() => coloredBox(CupertinoColors.systemBlue);
```
:::

### borderedBox() <Badge type="info" text="extension" /> {#borderedbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecoratedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">borderedBox</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">BoxBorder</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">border</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BorderRadiusGeometry</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">borderRadius</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecorationPosition</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">position</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DecorationPosition.background,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Applies a border decoration to the widget.

Creates a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) with the specified border. The border can be
combined with border radius for rounded corners.

Parameters:

- `border`: The [BoxBorder](https://api.flutter.dev/flutter/painting/BoxBorder-class.html) to draw around the widget.
- `borderRadius`: Optional border radius for rounded corners.
- `position`: Where to paint the decoration. Defaults to background.

Returns a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) widget with the border decoration.

Example:

```dart
Text('Bordered text')
  .borderedBox(
    border: Border.all(color: Colors.red, width: 2),
    borderRadius: BorderRadius.circular(8),
  );
```

*Available on Widget, provided by the DecoratedBoxWidgetExtension extension*

:::details Implementation
```dart
DecoratedBox borderedBox({
  required BoxBorder border,
  BorderRadiusGeometry? borderRadius,
  DecorationPosition position = DecorationPosition.background,
}) =>
    decoratedBox(
      decoration: BoxDecoration(
        border: border,
        borderRadius: borderRadius,
      ),
      position: position,
    );
```
:::

### boxShrink() <Badge type="info" text="extension" /> {#boxshrink}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SizedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">boxShrink</span></span><span class="member-signature-token">()</span></span></div></div>

Returns a [SizedBox.shrink](https://api.flutter.dev/flutter/widgets/SizedBox/SizedBox.shrink.html) that takes up no space.

This is a convenience method that creates an empty widget that occupies
no space in the layout. Useful for conditional rendering or as a placeholder.

Returns a [SizedBox.shrink](https://api.flutter.dev/flutter/widgets/SizedBox/SizedBox.shrink.html).

Example:

```dart
Widget buildOptionalWidget() {
  return shouldShow ? Text('Content') : Text('').boxShrink();
}
```

*Available on Widget, provided by the VisibleWidgetExtension extension*

:::details Implementation
```dart
SizedBox boxShrink() => const SizedBox.shrink();
```
:::

### brownBox() <Badge type="info" text="extension" /> {#brownbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">brownBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a brown colored box.

Uses [Colors.brown](https://api.flutter.dev/flutter/material/Colors/brown-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with brown background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox brownBox() => coloredBox(Colors.brown);
```
:::

### brownBox() <Badge type="info" text="extension" /> {#brownbox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">brownBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with system brown color.

Uses [CupertinoColors.systemBrown](https://api.flutter.dev/flutter/cupertino/CupertinoColors/systemBrown-constant.html) which adapts to light/dark mode.
This is the standard brown color used throughout iOS interfaces,
often used for earth-toned or natural-themed elements.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with brown background.

Example:

```dart
Text('Natural').brownBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox brownBox() => coloredBox(CupertinoColors.systemBrown);
```
:::

### center() <Badge type="info" text="extension" /> {#center}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Center</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">center</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">widthFactor</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">heightFactor</span></span><span class="member-signature-token">})</span></span></div></div>

Centers the widget with optional width and height factors.

Creates a [Center](https://api.flutter.dev/flutter/widgets/Center-class.html) widget that centers its child both horizontally and
vertically. The width and height factors control how much space the
centered widget should occupy relative to its parent.

Parameters:

- `widthFactor`: If non-null, the width factor to apply. The width of the
[Center](https://api.flutter.dev/flutter/widgets/Center-class.html) will be the child's width multiplied by this factor. Must be >= 0.
- `heightFactor`: If non-null, the height factor to apply. The height of the
[Center](https://api.flutter.dev/flutter/widgets/Center-class.html) will be the child's height multiplied by this factor. Must be >= 0.

Returns a [Center](https://api.flutter.dev/flutter/widgets/Center-class.html) widget containing this widget as its child.

Example:

```dart
Text('Perfectly centered')
  .center(); // Centers without size constraints

Container(width: 100, height: 50, color: Colors.blue)
  .center(widthFactor: 2.0, heightFactor: 1.5); // Centers with size factors
```

*Available on Widget, provided by the CenterWidgetExtension extension*

:::details Implementation
```dart
Center center({
  double? widthFactor,
  double? heightFactor,
}) =>
    Center(
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
```
:::

### centerHeight() <Badge type="info" text="extension" /> {#centerheight}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Center</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">centerHeight</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">heightFactor</span></span><span class="member-signature-token">)</span></span></div></div>

Centers the widget with a specific height factor.

This is a convenience method equivalent to calling `center(heightFactor: heightFactor)`.
The widget will be centered with the specified height factor applied.

Parameters:

- `heightFactor`: The height factor to apply. If null, no height constraint is applied.
Must be >= 0 if provided.

Returns a [Center](https://api.flutter.dev/flutter/widgets/Center-class.html) widget with the specified height factor.

Example:

```dart
Text('Double height centered text')
  .centerHeight(2.0); // Centers with 200% height factor

Container(width: 50, height: 50, color: Colors.red)
  .centerHeight(0.5); // Centers with 50% height factor
```

*Available on Widget, provided by the CenterWidgetExtension extension*

:::details Implementation
```dart
Center centerHeight(double? heightFactor) =>
    center(heightFactor: heightFactor);
```
:::

### centerWidth() <Badge type="info" text="extension" /> {#centerwidth}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Center</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">centerWidth</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">widthFactor</span></span><span class="member-signature-token">)</span></span></div></div>

Centers the widget with a specific width factor.

This is a convenience method equivalent to calling `center(widthFactor: widthFactor)`.
The widget will be centered with the specified width factor applied.

Parameters:

- `widthFactor`: The width factor to apply. If null, no width constraint is applied.
Must be >= 0 if provided.

Returns a [Center](https://api.flutter.dev/flutter/widgets/Center-class.html) widget with the specified width factor.

Example:

```dart
Text('80% width centered text')
  .centerWidth(0.8); // Centers with 80% of available width

Icon(Icons.star)
  .centerWidth(1.5); // Centers with 150% width factor
```

*Available on Widget, provided by the CenterWidgetExtension extension*

:::details Implementation
```dart
Center centerWidth(double? widthFactor) => center(widthFactor: widthFactor);
```
:::

### circularBorderBox() <Badge type="info" text="extension" /> {#circularborderbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecoratedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">circularBorderBox</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">radius</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">color</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">width</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecorationPosition</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">position</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DecorationPosition.background,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Applies a circular border decoration to the widget.

This is a convenience method that creates a circular border with the
specified radius, color, and width. It combines border and border radius
in a single method call.

Parameters:

- `radius`: The radius for the circular border.
- `color`: The color of the border.
- `width`: The width of the border line.
- `position`: Where to paint the decoration. Defaults to background.

Returns a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) widget with the circular border decoration.

Example:

```dart
Avatar(user: currentUser)
  .circularBorderBox(
    radius: 40,
    color: Colors.blue,
    width: 3,
  );
```

*Available on Widget, provided by the DecoratedBoxWidgetExtension extension*

:::details Implementation
```dart
DecoratedBox circularBorderBox({
  required double radius,
  required Color color,
  required double width,
  DecorationPosition position = DecorationPosition.background,
}) =>
    borderedBox(
      border: Border.all(
        color: color,
        width: width,
      ),
      borderRadius: BorderRadius.circular(radius),
      position: position,
    );
```
:::

### clipCircle() <Badge type="info" text="extension" /> {#clipcircle}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ClipOval</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">clipCircle</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">CustomClipper</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">Rect</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipper</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.antiAlias,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Clips the widget to a circular shape.

This is an alias for [clipOval](https://pub.dev/documentation/exui/1.0.11/exui/ClipRectWidgetExtensions/clipOval.html) that provides semantic clarity when
the intent is specifically to create a circular shape. Works best
with square widgets to create perfect circles.

Parameters:

- `clipper`: Optional custom clipper for more complex circular shapes.
- `clipBehavior`: How to clip the content. Defaults to [Clip.antiAlias](https://api.flutter.dev/flutter/dart-ui/Clip.html)
for smooth edges.

Returns a [ClipOval](https://api.flutter.dev/flutter/widgets/ClipOval-class.html) widget containing this widget as its child.

Example:

```dart
Container(
  width: 80,
  height: 80,
  color: Colors.green,
).clipCircle(); // Creates a perfect green circle
```

*Available on Widget, provided by the ClipRectWidgetExtensions extension*

:::details Implementation
```dart
ClipOval clipCircle({
  CustomClipper<Rect>? clipper,
  Clip clipBehavior = Clip.antiAlias,
}) =>
    clipOval(
      clipper: clipper,
      clipBehavior: clipBehavior,
    );
```
:::

### clipCircular() <Badge type="info" text="extension" /> {#clipcircular}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ClipRRect</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">clipCircular</span></span><span class="member-signature-token">([</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">radius</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">12</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.antiAlias,</span></span><span class="member-signature-line"><span class="member-signature-token">]);</span></span></div></div>

Clips the widget to a circular rounded rectangle shape.

This is a convenience method that creates a [ClipRRect](https://api.flutter.dev/flutter/widgets/ClipRRect-class.html) with uniform
circular border radius on all corners. Commonly used for creating
rounded buttons, cards, or images.

Parameters:

- `radius`: The radius for all corners. Defaults to 12.0.
- `clipBehavior`: How to clip the content. Defaults to [Clip.antiAlias](https://api.flutter.dev/flutter/dart-ui/Clip.html)
for smooth edges.

Returns a [ClipRRect](https://api.flutter.dev/flutter/widgets/ClipRRect-class.html) widget with circular border radius.

Example:

```dart
Container(
  width: 100,
  height: 100,
  color: Colors.red,
).clipCircular(25); // Creates a rounded square with 25px radius corners
```

*Available on Widget, provided by the ClipRectWidgetExtensions extension*

:::details Implementation
```dart
ClipRRect clipCircular([
  double radius = 12,
  Clip clipBehavior = Clip.antiAlias,
]) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(radius),
    clipBehavior: clipBehavior,
    child: this,
  );
}
```
:::

### clipContinuousRectangle() <Badge type="info" text="extension" /> {#clipcontinuousrectangle}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ClipPath</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">clipContinuousRectangle</span></span><span class="member-signature-token">([</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">radiusFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">2.5</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.antiAlias,</span></span><span class="member-signature-line"><span class="member-signature-token">]);</span></span></div></div>

Clips the widget using a continuous rectangle shape (alias for [clipSquircle](https://pub.dev/documentation/exui/1.0.11/exui/SquircleWidgetExtensions/clipSquircle.html)).

This method provides an alternative name for [clipSquircle](https://pub.dev/documentation/exui/1.0.11/exui/SquircleWidgetExtensions/clipSquircle.html) that more
accurately reflects the underlying [ContinuousRectangleBorder](https://api.flutter.dev/flutter/painting/ContinuousRectangleBorder-class.html) implementation.
Both methods produce identical results and can be used interchangeably.

The continuous rectangle shape creates smooth, organic corners that are
mathematically defined as a super-ellipse, providing a more natural
appearance than traditional rounded rectangles.

#### Parameters {#clipcontinuousrectangle-parameters}

- `radiusFactor`: Controls the curvature of the continuous rectangle corners.

  - Range: Typically 1.0 to 6.0
  - Default: 2.5 (balanced appearance)
  - Lower values: More circular/organic appearance
  - Higher values: More rectangular with subtle corner rounding
- `clipBehavior`: Defines the clipping rendering quality and performance.

  - [Clip.antiAlias](https://api.flutter.dev/flutter/dart-ui/Clip.html): Smooth edges with good quality/performance balance (default)
  - [Clip.hardEdge](https://api.flutter.dev/flutter/dart-ui/Clip.html): Fastest rendering, may show edge aliasing
  - [Clip.antiAliasWithSaveLayer](https://api.flutter.dev/flutter/dart-ui/Clip.html): Highest quality, significant performance impact
  - [Clip.none](https://api.flutter.dev/flutter/dart-ui/Clip.html): Disables clipping entirely

#### Returns {#clipcontinuousrectangle-returns}

A [ClipPath](https://api.flutter.dev/flutter/widgets/ClipPath-class.html) widget that applies continuous rectangle clipping to the child widget.

#### When to Use This Method {#clipcontinuousrectangle-when-to-use-this-method}

- When you prefer the more descriptive "continuous rectangle" terminology
- In codebases where mathematical precision in naming is important
- When working with design systems that use "continuous rectangle" terminology

#### Example Usage {#clipcontinuousrectangle-example-usage}

```dart
// Equivalent to clipSquircle() with same parameters
Card(
  child: ListTile(
    title: Text('Continuous Rectangle'),
    subtitle: Text('Smooth organic corners'),
  ),
).clipContinuousRectangle(2.8);

// High-performance variant for animations
TweenAnimationBuilder<double>(
  tween: Tween(begin: 0.0, end: 1.0),
  duration: Duration(seconds: 2),
  builder: (context, value, child) {
    return Container(
      width: 100 * value,
      height: 100 * value,
      color: Colors.green,
    ).clipContinuousRectangle(2.5, Clip.hardEdge);
  },
);
```

See also:

- [clipSquircle](https://pub.dev/documentation/exui/1.0.11/exui/SquircleWidgetExtensions/clipSquircle.html) for the primary method with identical functionality
- [ContinuousRectangleBorder](https://api.flutter.dev/flutter/painting/ContinuousRectangleBorder-class.html) for the underlying shape mathematics
- [ShapeBorderClipper](https://api.flutter.dev/flutter/rendering/ShapeBorderClipper-class.html) for the clipping implementation details

*Available on Widget, provided by the SquircleWidgetExtensions extension*

:::details Implementation
```dart
ClipPath clipContinuousRectangle([
  double radiusFactor = 2.5,
  Clip clipBehavior = Clip.antiAlias,
]) =>
    clipSquircle(radiusFactor, clipBehavior);
```
:::

### clipOval() <Badge type="info" text="extension" /> {#clipoval}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ClipOval</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">clipOval</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">CustomClipper</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">Rect</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipper</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.antiAlias,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Clips the widget to an oval shape.

Creates a [ClipOval](https://api.flutter.dev/flutter/widgets/ClipOval-class.html) widget that clips its child to an oval shape.
The oval will fit within the widget's bounding box. For square widgets,
this creates a perfect circle.

Parameters:

- `clipper`: Optional custom clipper for more complex oval shapes.
- `clipBehavior`: How to clip the content. Defaults to [Clip.antiAlias](https://api.flutter.dev/flutter/dart-ui/Clip.html)
for smooth edges.

Returns a [ClipOval](https://api.flutter.dev/flutter/widgets/ClipOval-class.html) widget containing this widget as its child.

Example:

```dart
Image.asset('assets/profile.jpg')
  .clipOval(); // Creates an oval-shaped profile image
```

*Available on Widget, provided by the ClipRectWidgetExtensions extension*

:::details Implementation
```dart
ClipOval clipOval({
  CustomClipper<Rect>? clipper,
  Clip clipBehavior = Clip.antiAlias,
}) {
  return ClipOval(
    clipper: clipper,
    clipBehavior: clipBehavior,
    child: this,
  );
}
```
:::

### clipPath() <Badge type="info" text="extension" /> {#clippath}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ClipPath</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">clipPath</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">CustomClipper</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">Path</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipper</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.antiAlias,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Clips the widget using a custom path.

Creates a [ClipPath](https://api.flutter.dev/flutter/widgets/ClipPath-class.html) widget that clips its child using a custom path
defined by a [CustomClipper](https://api.flutter.dev/flutter/rendering/CustomClipper-class.html). This allows for complex, non-standard
clipping shapes that go beyond simple rectangles and ovals.

The clipper parameter defines the custom path used for clipping.
If no clipper is provided, the widget will not be clipped.

Parameters:

- `clipper`: Optional custom clipper that defines the clipping path.
If null, no clipping is applied.
- `clipBehavior`: How to clip the content. Defaults to [Clip.antiAlias](https://api.flutter.dev/flutter/dart-ui/Clip.html)
for smooth edges.

Returns a [ClipPath](https://api.flutter.dev/flutter/widgets/ClipPath-class.html) widget containing this widget as its child.

Example:

```dart
// Custom star-shaped clipper
class StarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Implementation to create star path
    return starPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Container(
  width: 100,
  height: 100,
  color: Colors.red,
).clipPath(clipper: StarClipper());

// Using with different clip behaviors
Image.asset('photo.jpg')
  .clipPath(
    clipper: WaveClipper(),
    clipBehavior: Clip.hardEdge,
  );
```

*Available on Widget, provided by the ClipPathWidgetExtensions extension*

:::details Implementation
```dart
ClipPath clipPath({
  CustomClipper<Path>? clipper,
  Clip clipBehavior = Clip.antiAlias,
}) {
  return ClipPath(
    clipper: clipper,
    clipBehavior: clipBehavior,
    child: this,
  );
}
```
:::

### clipRRect() <Badge type="info" text="extension" /> {#cliprrect}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ClipRRect</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">clipRRect</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BorderRadiusGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">borderRadius</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= BorderRadius.zero,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">CustomClipper</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">RRect</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipper</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.antiAlias,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Clips the widget to a rounded rectangle shape.

Creates a [ClipRRect](https://api.flutter.dev/flutter/widgets/ClipRRect-class.html) widget that clips its child to a rounded rectangle
with the specified border radius. This is useful for creating rounded
corners on any widget.

Parameters:

- `borderRadius`: The border radius for the rounded rectangle.
Defaults to [BorderRadius.zero](https://api.flutter.dev/flutter/painting/BorderRadius/zero-constant.html) (no rounding).
- `clipper`: Optional custom clipper for more complex clipping shapes.
- `clipBehavior`: How to clip the content. Defaults to [Clip.antiAlias](https://api.flutter.dev/flutter/dart-ui/Clip.html)
for smooth edges.

Returns a [ClipRRect](https://api.flutter.dev/flutter/widgets/ClipRRect-class.html) widget containing this widget as its child.

Example:

```dart
Image.network('https://example.com/image.jpg')
  .clipRRect(borderRadius: BorderRadius.circular(12));
```

*Available on Widget, provided by the ClipRectWidgetExtensions extension*

:::details Implementation
```dart
ClipRRect clipRRect({
  BorderRadiusGeometry borderRadius = BorderRadius.zero,
  CustomClipper<RRect>? clipper,
  Clip clipBehavior = Clip.antiAlias,
}) {
  return ClipRRect(
    borderRadius: borderRadius,
    clipper: clipper,
    clipBehavior: clipBehavior,
    child: this,
  );
}
```
:::

### clipSquircle() <Badge type="info" text="extension" /> {#clipsquircle}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ClipPath</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">clipSquircle</span></span><span class="member-signature-token">([</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">radiusFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">2.5</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.antiAlias,</span></span><span class="member-signature-line"><span class="member-signature-token">]);</span></span></div></div>

Clips the widget using a squircle (super-ellipse) shape.

Creates a smooth transition between square and circular shapes using
Flutter's [ContinuousRectangleBorder](https://api.flutter.dev/flutter/painting/ContinuousRectangleBorder-class.html). This method is ideal for modern
UI designs that require organic, visually pleasing rounded corners.

#### Parameters {#clipsquircle-parameters}

- `radiusFactor`: Controls the curvature of the squircle corners.

  - Range: Typically 1.0 to 6.0
  - Default: 2.5 (balanced appearance)
  - Lower values create more circular corners
  - Higher values create more rectangular corners with subtle rounding
- `clipBehavior`: Defines how the clipping is rendered.

  - [Clip.antiAlias](https://api.flutter.dev/flutter/dart-ui/Clip.html): Smooth edges, higher quality (default)
  - [Clip.hardEdge](https://api.flutter.dev/flutter/dart-ui/Clip.html): Better performance, may show aliasing
  - [Clip.antiAliasWithSaveLayer](https://api.flutter.dev/flutter/dart-ui/Clip.html): Highest quality, significant performance cost
  - [Clip.none](https://api.flutter.dev/flutter/dart-ui/Clip.html): No clipping applied

#### Returns {#clipsquircle-returns}

A [ClipPath](https://api.flutter.dev/flutter/widgets/ClipPath-class.html) widget that wraps the original widget with squircle clipping.

#### Performance Notes {#clipsquircle-performance-notes}

- Anti-aliased clipping may impact performance on complex child widgets
- Consider the widget tree depth when applying multiple clips
- Test on target devices for performance-critical applications

#### Example Usage {#clipsquircle-example-usage}

```dart
// Standard squircle with balanced curvature
Container(
  width: 80,
  height: 80,
  decoration: BoxDecoration(color: Colors.red),
).clipSquircle();

// More circular appearance for avatars
CircleAvatar(
  backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
).clipSquircle(2.0);

// Performance-optimized for animations
AnimatedContainer(
  duration: Duration(milliseconds: 300),
  color: isSelected ? Colors.blue : Colors.grey,
).clipSquircle(3.0, Clip.hardEdge);
```

See also:

- [clipContinuousRectangle](https://pub.dev/documentation/exui/1.0.11/exui/SquircleWidgetExtensions/clipContinuousRectangle.html) for an alias to this method
- [ContinuousRectangleBorder](https://api.flutter.dev/flutter/painting/ContinuousRectangleBorder-class.html) for the underlying shape implementation
- [ClipPath](https://api.flutter.dev/flutter/widgets/ClipPath-class.html) for the clipping widget used internally

*Available on Widget, provided by the SquircleWidgetExtensions extension*

:::details Implementation
```dart
ClipPath clipSquircle([
  double radiusFactor = 2.5,
  Clip clipBehavior = Clip.antiAlias,
]) {
  return ClipPath(
    clipper: ShapeBorderClipper(
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radiusFactor),
        ),
      ),
    ),
    clipBehavior: clipBehavior,
    child: this,
  );
}
```
:::

### coloredBox() <Badge type="info" text="extension" /> {#coloredbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">coloredBox</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">color</span></span><span class="member-signature-token">)</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with the specified background color.

Creates a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) that paints a solid color behind the child widget.
This is the most efficient way to add a solid color background to any widget,
as [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) is optimized specifically for this purpose.

Parameters:

- `color`: The background color to paint behind the widget.
Must not be null.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) widget containing this widget as its child.

Example:

```dart
Text('White text on red background')
  .coloredBox(Colors.red);

Icon(Icons.star, color: Colors.white)
  .coloredBox(Colors.black); // Black background behind white star

// Chaining with other extensions
Text('Styled text')
  .coloredBox(Colors.lightBlue)
  .paddingAll(16)
  .clipCircular(8);
```

*Available on Widget, provided by the ColoredBoxExtension extension*

:::details Implementation
```dart
ColoredBox coloredBox(
  Color color,
) =>
    ColoredBox(
      color: color,
      child: this,
    );
```
:::

### column() <Badge type="info" text="extension" /> {#column}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Column</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">column</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">MainAxisAlignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">mainAxisAlignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= MainAxisAlignment.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">MainAxisSize</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">mainAxisSize</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= MainAxisSize.max,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">CrossAxisAlignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">crossAxisAlignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= CrossAxisAlignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">TextDirection</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">textDirection</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">VerticalDirection</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">verticalDirection</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= VerticalDirection.down,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">spacing</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">TextBaseline</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">textBaseline</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps this widget in a [Column](https://api.flutter.dev/flutter/widgets/Column-class.html) with customizable alignment and spacing options.

Creates a Column containing only this widget as a child. This is useful
for maintaining consistent layout patterns or when you need to apply
Column-specific properties to a single widget.

Parameters:

- `mainAxisAlignment`: How the child is aligned along the main (vertical) axis
- `mainAxisSize`: How much space the Column should occupy on the main axis
- `crossAxisAlignment`: How the child is aligned along the cross (horizontal) axis
- `textDirection`: The text direction to use for resolving alignment
- `verticalDirection`: The order to lay children out vertically
- `spacing`: The amount of space between children (Flutter 3.7+)
- `textBaseline`: The baseline to use when `crossAxisAlignment` is baseline

Returns a [Column](https://api.flutter.dev/flutter/widgets/Column-class.html) widget containing this widget as its only child.

Example:

```dart
Container(
  width: 100,
  height: 50,
  color: Colors.blue,
).column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.stretch,
)
```

*Available on Widget, provided by the ColumnWidgetExtension extension*

:::details Implementation
```dart
Column column({
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
  MainAxisSize mainAxisSize = MainAxisSize.max,
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  TextDirection? textDirection,
  VerticalDirection verticalDirection = VerticalDirection.down,
  double spacing = 0,
  TextBaseline? textBaseline,
}) {
  return Column(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    mainAxisSize: mainAxisSize,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline,
    spacing: spacing,
    children: [this],
  );
}
```
:::

### constrained() <Badge type="info" text="extension" /> {#constrained}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ConstrainedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">constrained</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minWidth</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0.0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maxWidth</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= double.infinity,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minHeight</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0.0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maxHeight</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= double.infinity,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps this widget in a [ConstrainedBox](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html) with customizable width and height constraints.

This method provides a convenient way to specify minimum and maximum
width and height constraints without creating a [BoxConstraints](https://api.flutter.dev/flutter/rendering/BoxConstraints-class.html) object manually.

Parameters:

- `minWidth`: The minimum width constraint (defaults to 0.0)
- `maxWidth`: The maximum width constraint (defaults to [double.infinity](https://api.flutter.dev/flutter/dart-core/double/infinity-constant.html))
- `minHeight`: The minimum height constraint (defaults to 0.0)
- `maxHeight`: The maximum height constraint (defaults to [double.infinity](https://api.flutter.dev/flutter/dart-core/double/infinity-constant.html))

Example:

```dart
Container(color: Colors.blue)
  .constrained(
    minWidth: 100,
    maxWidth: 200,
    minHeight: 50,
    maxHeight: 100,
  )
```

See also:

- [constrainedWidth](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/constrainedWidth.html), for width-only constraints
- [constrainedHeight](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/constrainedHeight.html), for height-only constraints

*Available on Widget, provided by the ConstrainedBoxExtension extension*

:::details Implementation
```dart
ConstrainedBox constrained({
  double minWidth = 0.0,
  double maxWidth = double.infinity,
  double minHeight = 0.0,
  double maxHeight = double.infinity,
}) =>
    constrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth,
        maxWidth: maxWidth,
        minHeight: minHeight,
        maxHeight: maxHeight,
      ),
    );
```
:::

### constrainedBox() <Badge type="info" text="extension" /> {#constrainedbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ConstrainedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">constrainedBox</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">BoxConstraints</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">constraints</span></span><span class="member-signature-token">})</span></span></div></div>

Wraps this widget in a [ConstrainedBox](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html) with the specified `constraints`.

This is the base method that other constraint methods build upon.

Example:

```dart
Text('Hello')
  .constrainedBox(
    constraints: BoxConstraints(
      minWidth: 100,
      maxHeight: 50,
    ),
  )
```

See also:

- [ConstrainedBox](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html), which this method wraps around
- [constrained](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/constrained.html), for a more convenient way to specify individual constraints

*Available on Widget, provided by the ConstrainedBoxExtension extension*

:::details Implementation
```dart
ConstrainedBox constrainedBox({
  required BoxConstraints constraints,
}) =>
    ConstrainedBox(
      constraints: constraints,
      child: this,
    );
```
:::

### constrainedHeight() <Badge type="info" text="extension" /> {#constrainedheight}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ConstrainedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">constrainedHeight</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">min</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">max</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= double.infinity,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps this widget in a [ConstrainedBox](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html) with height-only constraints.

This method is useful when you only need to constrain the height
of a widget while leaving width unconstrained.

Parameters:

- `min`: The minimum height constraint (defaults to 0)
- `max`: The maximum height constraint (defaults to [double.infinity](https://api.flutter.dev/flutter/dart-core/double/infinity-constant.html))

Example:

```dart
Column(children: [...])
  .constrainedHeight(min: 200, max: 400)
```

See also:

- [constrainedWidth](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/constrainedWidth.html), for width-only constraints
- [minHeight](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/minHeight.html) and [maxHeight](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/maxHeight.html), for single-bound height constraints

*Available on Widget, provided by the ConstrainedBoxExtension extension*

:::details Implementation
```dart
ConstrainedBox constrainedHeight(
        {double min = 0, double max = double.infinity}) =>
    constrainedBox(
      constraints: BoxConstraints(
        minHeight: min,
        maxHeight: max,
      ),
    );
```
:::

### constrainedWidth() <Badge type="info" text="extension" /> {#constrainedwidth}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ConstrainedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">constrainedWidth</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">min</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">max</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= double.infinity,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps this widget in a [ConstrainedBox](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html) with width-only constraints.

This method is useful when you only need to constrain the width
of a widget while leaving height unconstrained.

Parameters:

- `min`: The minimum width constraint (defaults to 0)
- `max`: The maximum width constraint (defaults to [double.infinity](https://api.flutter.dev/flutter/dart-core/double/infinity-constant.html))

Example:

```dart
Text('This text will be between 100 and 300 pixels wide')
  .constrainedWidth(min: 100, max: 300)
```

See also:

- [constrainedHeight](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/constrainedHeight.html), for height-only constraints
- [minWidth](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/minWidth.html) and [maxWidth](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/maxWidth.html), for single-bound width constraints

*Available on Widget, provided by the ConstrainedBoxExtension extension*

:::details Implementation
```dart
ConstrainedBox constrainedWidth(
        {double min = 0, double max = double.infinity}) =>
    constrainedBox(
      constraints: BoxConstraints(
        minWidth: min,
        maxWidth: max,
      ),
    );
```
:::

### container() <Badge type="info" text="extension" /> {#container}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Container</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">container</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">width</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">height</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">color</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsetsGeometry</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">padding</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsetsGeometry</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">margin</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BoxDecoration</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">decoration</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BoxConstraints</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">constraints</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.none,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) with comprehensive styling options.

Creates a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) that can provide sizing, positioning, decoration,
and layout constraints for the child widget. This is one of the most
versatile layout widgets in Flutter.

Parameters:

- `width`: The width of the container. If null, width is determined by child.
- `height`: The height of the container. If null, height is determined by child.
- `color`: Background color of the container. Cannot be used with `decoration`.
- `padding`: Internal padding around the child widget.
- `margin`: External margin around the container.
- `decoration`: Decoration to paint behind the child. Cannot be used with `color`.
- `constraints`: Additional constraints to apply to the child.
- `alignment`: How to align the child within the container.
- `clipBehavior`: How to clip the container's contents. Defaults to [Clip.none](https://api.flutter.dev/flutter/dart-ui/Clip.html).

Returns a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) widget containing this widget as its child.

Example:

```dart
Text('Hello World')
  .container(
    width: 150,
    height: 80,
    color: Colors.lightBlue,
    padding: EdgeInsets.all(12),
    margin: EdgeInsets.symmetric(vertical: 8),
    alignment: Alignment.center,
  );

Icon(Icons.star)
  .container(
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
      borderRadius: BorderRadius.circular(8),
    ),
    padding: EdgeInsets.all(16),
    constraints: BoxConstraints.tightFor(width: 60, height: 60),
  );
```

*Available on Widget, provided by the ContainerWidgetExtension extension*

:::details Implementation
```dart
Container container({
  double? width,
  double? height,
  Color? color,
  EdgeInsetsGeometry? padding,
  EdgeInsetsGeometry? margin,
  BoxDecoration? decoration,
  BoxConstraints? constraints,
  AlignmentGeometry? alignment,
  Clip clipBehavior = Clip.none,
}) =>
    Container(
      width: width,
      height: height,
      color: color,
      padding: padding,
      margin: margin,
      decoration: decoration,
      constraints: constraints,
      alignment: alignment,
      clipBehavior: clipBehavior,
      child: this,
    );
```
:::

### createElement() <Badge type="info" text="inherited" /> {#createelement}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">StatefulElement</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">createElement</span></span><span class="member-signature-token">()</span></span></div></div>

Creates a [StatefulElement](https://api.flutter.dev/flutter/widgets/StatefulElement-class.html) to manage this widget's location in the tree.

It is uncommon for subclasses to override this method.

*Inherited from StatefulWidget.*

:::details Implementation
```dart
@override
StatefulElement createElement() => StatefulElement(this);
```
:::

### createState() <Badge type="info" text="override" /> {#createstate}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">State</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><a href="./CalculatorExpressionField" class="type-link">CalculatorExpressionField</a></span><span class="member-signature-token">&gt;</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">createState</span></span><span class="member-signature-token">()</span></span></div></div>

Creates the mutable state for this widget at a given location in the tree.

Subclasses should override this method to return a newly created
instance of their associated [State](https://api.flutter.dev/flutter/widgets/State-class.html) subclass:

```dart
@override
State<SomeWidget> createState() => _SomeWidgetState();
```

The framework can call this method multiple times over the lifetime of
a [StatefulWidget](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html). For example, if the widget is inserted into the tree
in multiple locations, the framework will create a separate [State](https://api.flutter.dev/flutter/widgets/State-class.html) object
for each location. Similarly, if the widget is removed from the tree and
later inserted into the tree again, the framework will call [createState](/api/package-ivs_projekt_2_widgets_display_calculator_expression_field/CalculatorExpressionField#createstate)
again to create a fresh [State](https://api.flutter.dev/flutter/widgets/State-class.html) object, simplifying the lifecycle of
[State](https://api.flutter.dev/flutter/widgets/State-class.html) objects.

:::details Implementation
```dart
@override
State<CalculatorExpressionField> createState() =>
    _CalculatorExpressionFieldState();
```
:::

### cupertinoButton() <Badge type="info" text="extension" /> {#cupertinobutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">CupertinoButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">cupertinoButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">CupertinoButtonSize</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">sizeStyle</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= CupertinoButtonSize.large,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsetsGeometry</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">padding</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">color</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">disabledColor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= CupertinoColors.quaternarySystemFill,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minSize</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Size</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minimumSize</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">pressedOpacity</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0.4</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BorderRadius</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">borderRadius</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Alignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusColor</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a standard CupertinoButton with this widget as its child.

A CupertinoButton is an iOS-style button that follows Apple's Human Interface Guidelines.
It provides haptic feedback and smooth animations when pressed.

The button can be customized with various parameters including size, color,
padding, and interaction behaviors.

Parameters:

- `sizeStyle` - The size style of the button (small, medium, large). Defaults to large.
- `padding` - Internal padding around the child widget. If null, uses default padding based on size style.
- `color` - Background color of the button. If null, the button is transparent.
- `disabledColor` - Background color when the button is disabled. Defaults to quaternary system fill.
- `minSize` - **Deprecated**: Use `minimumSize` instead. Minimum size for the button.
- `minimumSize` - Minimum size constraint for the button. Takes precedence over `minSize`.
- `pressedOpacity` - Opacity level when the button is pressed. Defaults to 0.4.
- `borderRadius` - Corner radius of the button. If null, uses default radius.
- `alignment` - How to align the child within the button. Defaults to center.
- `focusColor` - Color overlay when the button has focus (for accessibility).
- `focusNode` - Focus node for keyboard navigation and accessibility.
- `onFocusChange` - Callback when focus state changes.
- `autofocus` - Whether this button should automatically receive focus. Defaults to false.
- `onLongPress` - Callback for long press gestures. If null, long press is disabled.
- `onPressed` - **Required** callback for tap gestures. If null, button is disabled.

Returns a [CupertinoButton](https://api.flutter.dev/flutter/cupertino/CupertinoButton-class.html) with this widget as its child.

Example:

```dart
Icon(CupertinoIcons.heart).cupertinoButton(
  color: CupertinoColors.systemRed,
  onPressed: () => toggleFavorite(),
  onLongPress: () => showFavoriteOptions(),
);
```

*Available on Widget, provided by the CupertinoButtonWidgetExtensions extension*

:::details Implementation
```dart
CupertinoButton cupertinoButton({
  CupertinoButtonSize sizeStyle = CupertinoButtonSize.large,
  EdgeInsetsGeometry? padding,
  Color? color,
  Color disabledColor = CupertinoColors.quaternarySystemFill,
  @Deprecated('Use minimumSize instead') double? minSize,
  Size? minimumSize,
  double? pressedOpacity = 0.4,
  BorderRadius? borderRadius,
  AlignmentGeometry alignment = Alignment.center,
  Color? focusColor,
  FocusNode? focusNode,
  void Function(bool)? onFocusChange,
  bool autofocus = false,
  void Function()? onLongPress,
  required void Function()? onPressed,
}) =>
    CupertinoButton(
      sizeStyle: sizeStyle,
      padding: padding,
      color: color,
      disabledColor: disabledColor,
      minimumSize:
          minimumSize ?? (minSize != null ? Size(minSize, minSize) : null),
      pressedOpacity: pressedOpacity,
      borderRadius: borderRadius,
      alignment: alignment,
      focusColor: focusColor,
      focusNode: focusNode,
      onFocusChange: onFocusChange,
      autofocus: autofocus,
      onLongPress: onLongPress,
      onPressed: onPressed,
      child: this,
    );
```
:::

### cupertinoFilledButton() <Badge type="info" text="extension" /> {#cupertinofilledbutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">CupertinoButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">cupertinoFilledButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">CupertinoButtonSize</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">sizeStyle</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= CupertinoButtonSize.large,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsetsGeometry</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">padding</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">disabledColor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= CupertinoColors.tertiarySystemFill,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minSize</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Size</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minimumSize</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">pressedOpacity</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0.4</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BorderRadius</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">borderRadius</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Alignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusColor</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a filled CupertinoButton with this widget as its child.

A filled CupertinoButton has a solid background color that follows the
current iOS accent color (typically blue). This style is recommended
for primary actions in your interface.

The button automatically adapts to light and dark mode, and provides
appropriate contrast ratios for accessibility.

Parameters:

- `sizeStyle` - The size style of the button (small, medium, large). Defaults to large.
- `padding` - Internal padding around the child widget. If null, uses default padding based on size style.
- `disabledColor` - Background color when the button is disabled. Defaults to tertiary system fill.
- `minSize` - **Deprecated**: Use `minimumSize` instead. Minimum size for the button.
- `minimumSize` - Minimum size constraint for the button. Takes precedence over `minSize`.
- `pressedOpacity` - Opacity level when the button is pressed. Defaults to 0.4.
- `borderRadius` - Corner radius of the button. If null, uses default radius.
- `alignment` - How to align the child within the button. Defaults to center.
- `focusColor` - Color overlay when the button has focus (for accessibility).
- `focusNode` - Focus node for keyboard navigation and accessibility.
- `onFocusChange` - Callback when focus state changes.
- `autofocus` - Whether this button should automatically receive focus. Defaults to false.
- `onLongPress` - Callback for long press gestures. If null, long press is disabled.
- `onPressed` - **Required** callback for tap gestures. If null, button is disabled.

Returns a filled [CupertinoButton](https://api.flutter.dev/flutter/cupertino/CupertinoButton-class.html) with this widget as its child.

Example:

```dart
Text('Save Changes').cupertinoFilledButton(
  onPressed: () => saveDocument(),
  sizeStyle: CupertinoButtonSize.large,
);
```

*Available on Widget, provided by the CupertinoButtonWidgetExtensions extension*

:::details Implementation
```dart
CupertinoButton cupertinoFilledButton({
  CupertinoButtonSize sizeStyle = CupertinoButtonSize.large,
  EdgeInsetsGeometry? padding,
  Color disabledColor = CupertinoColors.tertiarySystemFill,
  @Deprecated('Use minimumSize instead') double? minSize,
  Size? minimumSize,
  double? pressedOpacity = 0.4,
  BorderRadius? borderRadius,
  AlignmentGeometry alignment = Alignment.center,
  Color? focusColor,
  FocusNode? focusNode,
  void Function(bool)? onFocusChange,
  bool autofocus = false,
  void Function()? onLongPress,
  required void Function()? onPressed,
}) =>
    CupertinoButton.filled(
      sizeStyle: sizeStyle,
      padding: padding,
      disabledColor: disabledColor,
      minimumSize:
          minimumSize ?? (minSize != null ? Size(minSize, minSize) : null),
      pressedOpacity: pressedOpacity,
      borderRadius: borderRadius,
      alignment: alignment,
      focusColor: focusColor,
      focusNode: focusNode,
      onFocusChange: onFocusChange,
      autofocus: autofocus,
      onLongPress: onLongPress,
      onPressed: onPressed,
      child: this,
    );
```
:::

### cupertinoTintedButton() <Badge type="info" text="extension" /> {#cupertinotintedbutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">CupertinoButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">cupertinoTintedButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">CupertinoButtonSize</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">sizeStyle</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= CupertinoButtonSize.large,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsetsGeometry</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">padding</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">color</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">disabledColor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= CupertinoColors.tertiarySystemFill,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minSize</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Size</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minimumSize</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">pressedOpacity</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0.4</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BorderRadius</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">borderRadius</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Alignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusColor</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a tinted CupertinoButton with this widget as its child.

A tinted CupertinoButton has a subtle background tint that provides
visual feedback while maintaining a lighter appearance than filled buttons.
This style is ideal for secondary actions or when you need a button
that's more prominent than a standard button but less prominent than a filled button.

The tint color can be customized, and the button automatically handles
light and dark mode adaptations.

Parameters:

- `sizeStyle` - The size style of the button (small, medium, large). Defaults to large.
- `padding` - Internal padding around the child widget. If null, uses default padding based on size style.
- `color` - Tint color for the button background. If null, uses the default system accent color.
- `disabledColor` - Background color when the button is disabled. Defaults to tertiary system fill.
- `minSize` - **Deprecated**: Use `minimumSize` instead. Minimum size for the button.
- `minimumSize` - Minimum size constraint for the button. Takes precedence over `minSize`.
- `pressedOpacity` - Opacity level when the button is pressed. Defaults to 0.4.
- `borderRadius` - Corner radius of the button. If null, uses default radius.
- `alignment` - How to align the child within the button. Defaults to center.
- `focusColor` - Color overlay when the button has focus (for accessibility).
- `focusNode` - Focus node for keyboard navigation and accessibility.
- `onFocusChange` - Callback when focus state changes.
- `autofocus` - Whether this button should automatically receive focus. Defaults to false.
- `onLongPress` - Callback for long press gestures. If null, long press is disabled.
- `onPressed` - **Required** callback for tap gestures. If null, button is disabled.

Returns a tinted [CupertinoButton](https://api.flutter.dev/flutter/cupertino/CupertinoButton-class.html) with this widget as its child.

Example:

```dart
Row([
  Icon(CupertinoIcons.share),
  SizedBox(width: 8),
  Text('Share'),
]).cupertinoTintedButton(
  color: CupertinoColors.systemGreen,
  onPressed: () => shareContent(),
);
```

*Available on Widget, provided by the CupertinoButtonWidgetExtensions extension*

:::details Implementation
```dart
CupertinoButton cupertinoTintedButton({
  CupertinoButtonSize sizeStyle = CupertinoButtonSize.large,
  EdgeInsetsGeometry? padding,
  Color? color,
  Color disabledColor = CupertinoColors.tertiarySystemFill,
  @Deprecated('Use minimumSize instead') double? minSize,
  Size? minimumSize,
  double? pressedOpacity = 0.4,
  BorderRadius? borderRadius,
  AlignmentGeometry alignment = Alignment.center,
  Color? focusColor,
  FocusNode? focusNode,
  void Function(bool)? onFocusChange,
  bool autofocus = false,
  void Function()? onLongPress,
  required void Function()? onPressed,
}) =>
    CupertinoButton.tinted(
      sizeStyle: sizeStyle,
      padding: padding,
      color: color,
      disabledColor: disabledColor,
      minimumSize:
          minimumSize ?? (minSize != null ? Size(minSize, minSize) : null),
      pressedOpacity: pressedOpacity,
      borderRadius: borderRadius,
      alignment: alignment,
      focusColor: focusColor,
      focusNode: focusNode,
      onFocusChange: onFocusChange,
      autofocus: autofocus,
      onLongPress: onLongPress,
      onPressed: onPressed,
      child: this,
    );
```
:::

### cyanAccentBox() <Badge type="info" text="extension" /> {#cyanaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">cyanAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a cyan accent colored box.

Uses [Colors.cyanAccent](https://api.flutter.dev/flutter/material/Colors/cyanAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of cyan.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with cyan accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox cyanAccentBox() => coloredBox(Colors.cyanAccent);
```
:::

### cyanBox() <Badge type="info" text="extension" /> {#cyanbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">cyanBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a cyan colored box.

Uses [Colors.cyan](https://api.flutter.dev/flutter/material/Colors/cyan-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with cyan background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox cyanBox() => coloredBox(Colors.cyan);
```
:::

### cyanBox() <Badge type="info" text="extension" /> {#cyanbox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">cyanBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with system cyan color.

Uses [CupertinoColors.systemCyan](https://api.flutter.dev/flutter/cupertino/CupertinoColors/systemCyan-constant.html) which adapts to light/dark mode.
This is the standard cyan color used throughout iOS interfaces,
often used for technology or digital-themed elements.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with cyan background.

Example:

```dart
Icon(CupertinoIcons.wifi).cyanBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox cyanBox() => coloredBox(CupertinoColors.systemCyan);
```
:::

### darkGrayBox() <Badge type="info" text="extension" /> {#darkgraybox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">darkGrayBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with dark background gray color.

Uses [CupertinoColors.darkBackgroundGray](https://api.flutter.dev/flutter/cupertino/CupertinoColors/darkBackgroundGray-constant.html) which provides a dark gray
background suitable for dark mode interfaces or secondary backgrounds.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with dark gray background.

Example:

```dart
Container(child: Text('Dark Section')).darkGrayBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox darkGrayBox() => coloredBox(CupertinoColors.darkBackgroundGray);
```
:::

### debugDescribeChildren() <Badge type="info" text="inherited" /> {#debugdescribechildren}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">List</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">DiagnosticsNode</span></span><span class="member-signature-token">&gt;</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">debugDescribeChildren</span></span><span class="member-signature-token">()</span></span></div></div>

Returns a list of [DiagnosticsNode](https://api.flutter.dev/flutter/foundation/DiagnosticsNode-class.html) objects describing this node's
children.

Children that are offstage should be added with `style` set to
[DiagnosticsTreeStyle.offstage](https://api.flutter.dev/flutter/foundation/DiagnosticsTreeStyle.html) to indicate that they are offstage.

The list must not contain any null entries. If there are explicit null
children to report, consider [DiagnosticsNode.message](https://api.flutter.dev/flutter/foundation/DiagnosticsNode/DiagnosticsNode.message.html) or
[DiagnosticsProperty\<Object\>](https://api.flutter.dev/flutter/foundation/DiagnosticsProperty-class.html) as possible [DiagnosticsNode](https://api.flutter.dev/flutter/foundation/DiagnosticsNode-class.html) objects to
provide.

Used by [toStringDeep](https://api.flutter.dev/flutter/foundation/DiagnosticableTree/toStringDeep.html), [toDiagnosticsNode](https://api.flutter.dev/flutter/foundation/DiagnosticableTree/toDiagnosticsNode.html) and [toStringShallow](https://api.flutter.dev/flutter/foundation/DiagnosticableTree/toStringShallow.html).

See also:

- [RenderTable.debugDescribeChildren](https://api.flutter.dev/flutter/rendering/RenderTable/debugDescribeChildren.html), which provides high quality custom
descriptions for its child nodes.

*Inherited from DiagnosticableTree.*

:::details Implementation
```dart
@protected
List<DiagnosticsNode> debugDescribeChildren() => const <DiagnosticsNode>[];
```
:::

### debugFillProperties() <Badge type="info" text="inherited" /> {#debugfillproperties}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">debugFillProperties</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DiagnosticPropertiesBuilder</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">properties</span></span><span class="member-signature-token">)</span></span></div></div>

Add additional properties associated with the node.


<iframe src="https://www.youtube.com/embed/DnC7eT-vh1k?rel=0" 
        title="YouTube video player" 
        frameborder="0" 
        allow="accelerometer; 
               autoplay; 
               clipboard-write; 
               encrypted-media; 
               gyroscope; 
               picture-in-picture" 
        allowfullscreen="" 
        style="max-width: 560px;
               max-height: 315px;
               width: 100%;
               height: 100%;
               aspect-ratio: 560 / 315;">
</iframe>

Use the most specific [DiagnosticsProperty](https://api.flutter.dev/flutter/foundation/DiagnosticsProperty-class.html) existing subclass to describe
each property instead of the [DiagnosticsProperty](https://api.flutter.dev/flutter/foundation/DiagnosticsProperty-class.html) base class. There are
only a small number of [DiagnosticsProperty](https://api.flutter.dev/flutter/foundation/DiagnosticsProperty-class.html) subclasses each covering a
common use case. Consider what values a property is relevant for users
debugging as users debugging large trees are overloaded with information.
Common named parameters in [DiagnosticsNode](https://api.flutter.dev/flutter/foundation/DiagnosticsNode-class.html) subclasses help filter when
and how properties are displayed.

`defaultValue`, `showName`, `showSeparator`, and `level` keep string
representations of diagnostics terse and hide properties when they are not
very useful.

- Use `defaultValue` any time the default value of a property is
uninteresting. For example, specify a default value of null any time
a property being null does not indicate an error.
- Avoid specifying the `level` parameter unless the result you want
cannot be achieved by using the `defaultValue` parameter or using
the [ObjectFlagProperty](https://api.flutter.dev/flutter/foundation/ObjectFlagProperty-class.html) class to conditionally display the property
as a flag.
- Specify `showName` and `showSeparator` in rare cases where the string
output would look clumsy if they were not set.

  ```dart
  DiagnosticsProperty<Object>('child(3, 4)', null, ifNull: 'is null', showSeparator: false).toString()
  ```
Shows using `showSeparator` to get output `child(3, 4) is null` which
is more polished than `child(3, 4): is null`.

  ```dart
  DiagnosticsProperty<IconData>('icon', icon, ifNull: '<empty>', showName: false).toString()
  ```
Shows using `showName` to omit the property name as in this context the
property name does not add useful information.

`ifNull`, `ifEmpty`, `unit`, and `tooltip` make property
descriptions clearer. The examples in the code sample below illustrate
good uses of all of these parameters.

#### DiagnosticsProperty subclasses for primitive types {#debugfillproperties-diagnosticsproperty-subclasses-for-primitive-types}
- [StringProperty](https://api.flutter.dev/flutter/foundation/StringProperty-class.html), which supports automatically enclosing a [String](https://api.flutter.dev/flutter/dart-core/String-class.html)
value in quotes.
- [DoubleProperty](https://api.flutter.dev/flutter/foundation/DoubleProperty-class.html), which supports specifying a unit of measurement for
a [double](https://api.flutter.dev/flutter/dart-core/double-class.html) value.
- [PercentProperty](https://api.flutter.dev/flutter/foundation/PercentProperty-class.html), which clamps a [double](https://api.flutter.dev/flutter/dart-core/double-class.html) to between 0 and 1 and
formats it as a percentage.
- [IntProperty](https://api.flutter.dev/flutter/foundation/IntProperty-class.html), which supports specifying a unit of measurement for an
[int](https://api.flutter.dev/flutter/dart-core/int-class.html) value.
- [FlagProperty](https://api.flutter.dev/flutter/foundation/FlagProperty-class.html), which formats a [bool](https://api.flutter.dev/flutter/dart-core/bool-class.html) value as one or more flags.
Depending on the use case it is better to format a bool as
`DiagnosticsProperty<bool>` instead of using [FlagProperty](https://api.flutter.dev/flutter/foundation/FlagProperty-class.html) as the
output is more verbose but unambiguous.

#### Other important [DiagnosticsProperty](https://api.flutter.dev/flutter/foundation/DiagnosticsProperty-class.html) variants {#debugfillproperties-other-important-diagnosticsproperty-https-api-flutter-dev-flutter-foundation-diagnosticsproperty-class-html-variants}
- [EnumProperty](https://api.flutter.dev/flutter/foundation/EnumProperty-class.html), which provides terse descriptions of enum values
working around limitations of the `toString` implementation for Dart
enum types.
- [IterableProperty](https://api.flutter.dev/flutter/foundation/IterableProperty-class.html), which handles iterable values with display
customizable depending on the [DiagnosticsTreeStyle](https://api.flutter.dev/flutter/foundation/DiagnosticsTreeStyle.html) used.
- [ObjectFlagProperty](https://api.flutter.dev/flutter/foundation/ObjectFlagProperty-class.html), which provides terse descriptions of whether a
property value is present or not. For example, whether an `onClick`
callback is specified or an animation is in progress.
- [ColorProperty](https://api.flutter.dev/flutter/painting/ColorProperty-class.html), which must be used if the property value is
a [Color](https://api.flutter.dev/flutter/dart-ui/Color-class.html) or one of its subclasses.
- [IconDataProperty](https://api.flutter.dev/flutter/widgets/IconDataProperty-class.html), which must be used if the property value
is of type [IconData](https://api.flutter.dev/flutter/widgets/IconData-class.html).

If none of these subclasses apply, use the [DiagnosticsProperty](https://api.flutter.dev/flutter/foundation/DiagnosticsProperty-class.html)
constructor or in rare cases create your own [DiagnosticsProperty](https://api.flutter.dev/flutter/foundation/DiagnosticsProperty-class.html)
subclass as in the case for [TransformProperty](https://api.flutter.dev/flutter/painting/TransformProperty-class.html) which handles [Matrix4](https://pub.dev/documentation/vector_math/2.2.0/vector_math_64/Matrix4-class.html)
that represent transforms. Generally any property value with a good
`toString` method implementation works fine using [DiagnosticsProperty](https://api.flutter.dev/flutter/foundation/DiagnosticsProperty-class.html)
directly.


Used by [toDiagnosticsNode](/api/package-ivs_projekt_2_widgets_display_calculator_expression_field/CalculatorExpressionField#todiagnosticsnode) and [toString](/api/package-ivs_projekt_2_widgets_display_calculator_expression_field/CalculatorExpressionField#tostring).


Do not add values that have lifetime shorter than the object.

*Inherited from Widget.*

:::details Implementation
```dart
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  super.debugFillProperties(properties);
  properties.defaultDiagnosticsTreeStyle = DiagnosticsTreeStyle.dense;
}
```
:::

### decoratedBox() <Badge type="info" text="extension" /> {#decoratedbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecoratedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">decoratedBox</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Decoration</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">decoration</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecorationPosition</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">position</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DecorationPosition.background,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) with the specified decoration.

This is the base method that applies a [Decoration](https://api.flutter.dev/flutter/painting/Decoration-class.html) to the widget.
Other decoration methods in this extension use this method internally.

Parameters:

- `decoration`: The [Decoration](https://api.flutter.dev/flutter/painting/Decoration-class.html) to apply to the widget.
- `position`: Where to paint the decoration relative to the child.
Defaults to [DecorationPosition.background](https://api.flutter.dev/flutter/rendering/DecorationPosition.html).

Returns a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) widget containing this widget as its child.

Example:

```dart
Text('Custom decoration')
  .decoratedBox(
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(8),
    ),
  );
```

*Available on Widget, provided by the DecoratedBoxWidgetExtension extension*

:::details Implementation
```dart
DecoratedBox decoratedBox({
  required Decoration decoration,
  DecorationPosition position = DecorationPosition.background,
}) =>
    DecoratedBox(
      decoration: decoration,
      position: position,
      child: this,
    );
```
:::

### decoratedBoxDecoration() <Badge type="info" text="extension" /> {#decoratedboxdecoration}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecoratedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">decoratedBoxDecoration</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">color</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecorationImage</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">image</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BoxBorder</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">border</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BorderRadiusGeometry</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">borderRadius</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">List</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">BoxShadow</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">boxShadow</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Gradient</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">gradient</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BlendMode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">backgroundBlendMode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BoxShape</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">shape</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= BoxShape.rectangle,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecorationPosition</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">position</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DecorationPosition.background,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Applies a [BoxDecoration](https://api.flutter.dev/flutter/painting/BoxDecoration-class.html) with comprehensive styling options.

This method provides access to all [BoxDecoration](https://api.flutter.dev/flutter/painting/BoxDecoration-class.html) properties in a single
call, making it easy to apply complex decorations. It's particularly useful
when you need to combine multiple decoration effects.

Parameters:

- `color`: Background color for the decoration.
- `image`: Background image for the decoration.
- `border`: Border to draw around the decoration.
- `borderRadius`: Radius for rounded corners.
- `boxShadow`: List of shadows to cast behind the decoration.
- `gradient`: Gradient to use as the background.
- `backgroundBlendMode`: Blend mode for the background.
- `shape`: Shape of the decoration. Defaults to [BoxShape.rectangle](https://api.flutter.dev/flutter/painting/BoxShape.html).
- `position`: Where to paint the decoration. Defaults to background.

Returns a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) widget with the specified box decoration.

Example:

```dart
Container(width: 100, height: 100)
  .decoratedBoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
  );
```

*Available on Widget, provided by the DecoratedBoxWidgetExtension extension*

:::details Implementation
```dart
DecoratedBox decoratedBoxDecoration({
  Color? color,
  DecorationImage? image,
  BoxBorder? border,
  BorderRadiusGeometry? borderRadius,
  List<BoxShadow>? boxShadow,
  Gradient? gradient,
  BlendMode? backgroundBlendMode,
  BoxShape shape = BoxShape.rectangle,
  DecorationPosition position = DecorationPosition.background,
}) =>
    DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        image: image,
        border: border,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        gradient: gradient,
        backgroundBlendMode: backgroundBlendMode,
      ),
      position: position,
      child: this,
    );
```
:::

### deepPurpleAccentBox() <Badge type="info" text="extension" /> {#deeppurpleaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">deepPurpleAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a deep purple accent colored box.

Uses [Colors.deepPurpleAccent](https://api.flutter.dev/flutter/material/Colors/deepPurpleAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of deep purple.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with deep purple accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox deepPurpleAccentBox() => coloredBox(Colors.deepPurpleAccent);
```
:::

### deepPurpleBox() <Badge type="info" text="extension" /> {#deeppurplebox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">deepPurpleBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a deep purple colored box.

Uses [Colors.deepPurple](https://api.flutter.dev/flutter/material/Colors/deepPurple-constant.html) as the background color, which is a darker
shade of purple.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with deep purple background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox deepPurpleBox() => coloredBox(Colors.deepPurple);
```
:::

### destructiveRedBox() <Badge type="info" text="extension" /> {#destructiveredbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">destructiveRedBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with destructive red color.

Uses [CupertinoColors.destructiveRed](https://api.flutter.dev/flutter/cupertino/CupertinoColors/destructiveRed-constant.html) which is specifically designed
for destructive actions like delete buttons or error states.
This color is more vibrant than system red and indicates danger.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with destructive red background.

Example:

```dart
Text('Delete').destructiveRedBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox destructiveRedBox() => coloredBox(CupertinoColors.destructiveRed);
```
:::

### elevatedButton() <Badge type="info" text="extension" /> {#elevatedbutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ElevatedButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">elevatedButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHover</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">ButtonStyle</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">style</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">WidgetStatesController</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">statesController</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates an [ElevatedButton](https://api.flutter.dev/flutter/material/ElevatedButton-class.html) with this widget as its child.

Elevated buttons are high-emphasis buttons that are distinguished by their
use of elevation and fill. They contain actions that are primary to your app.

The `onPressed` callback is called when the button is tapped or otherwise
activated. If `onPressed` is null, the button will be disabled.

Parameters:

- `onPressed` - Called when the button is pressed. If null, button is disabled.
- `onLongPress` - Called when the button is long-pressed.
- `onHover` - Called when a pointer enters or exits the button area.
- `onFocusChange` - Called when the focus state of the button changes.
- `style` - Customizes the button's appearance and behavior.
- `focusNode` - An optional focus node to use as the focus node for this widget.
- `autofocus` - Whether this widget should focus itself if nothing else is focused.
- `clipBehavior` - The content will be clipped (or not) according to this option.
- `statesController` - Represents the interactive state of the button.

Returns an [ElevatedButton](https://api.flutter.dev/flutter/material/ElevatedButton-class.html) with this widget as its child.

Example:

```dart
Text('Save')
  .elevatedButton(
    onPressed: () => saveData(),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
    ),
  )
```

See also:

- [ElevatedButton](https://api.flutter.dev/flutter/material/ElevatedButton-class.html), the underlying Material Design elevated button.
- [elevatedIconButton](https://pub.dev/documentation/exui/1.0.11/material/ElevatedButtonWidgetExtensions/elevatedIconButton.html), for creating elevated buttons with icons.

*Available on Widget, provided by the ElevatedButtonWidgetExtensions extension*

:::details Implementation
```dart
ElevatedButton elevatedButton({
  required void Function()? onPressed,
  void Function()? onLongPress,
  void Function(bool)? onHover,
  void Function(bool)? onFocusChange,
  ButtonStyle? style,
  FocusNode? focusNode,
  bool autofocus = false,
  Clip? clipBehavior,
  WidgetStatesController? statesController,
}) =>
    ElevatedButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      child: this,
    );
```
:::

### elevatedIconButton() <Badge type="info" text="extension" /> {#elevatediconbutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ElevatedButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">elevatedIconButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHover</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">ButtonStyle</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">style</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">WidgetStatesController</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">statesController</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Widget</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">icon</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">IconAlignment</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">iconAlignment</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates an [ElevatedButton.icon](https://api.flutter.dev/flutter/material/ElevatedButton/ElevatedButton.icon.html) with this widget as its label and an optional icon.

This creates an elevated button with both an icon and a label. The icon and label
are arranged horizontally according to the `iconAlignment` parameter.

Parameters:

- `onPressed` - Called when the button is pressed. If null, button is disabled.
- `onLongPress` - Called when the button is long-pressed.
- `onHover` - Called when a pointer enters or exits the button area.
- `onFocusChange` - Called when the focus state of the button changes.
- `style` - Customizes the button's appearance and behavior.
- `focusNode` - An optional focus node to use as the focus node for this widget.
- `autofocus` - Whether this widget should focus itself if nothing else is focused.
- `clipBehavior` - The content will be clipped (or not) according to this option.
- `statesController` - Represents the interactive state of the button.
- `icon` - The icon widget to display. If null, no icon is shown.
- `iconAlignment` - How to align the icon relative to the label.

Returns an [ElevatedButton](https://api.flutter.dev/flutter/material/ElevatedButton-class.html) configured as an icon button with this widget as the label.

Example:

```dart
Text('Download')
  .elevatedIconButton(
    onPressed: () => downloadFile(),
    icon: Icon(Icons.download),
    iconAlignment: IconAlignment.start,
  )
```

See also:

- [ElevatedButton.icon](https://api.flutter.dev/flutter/material/ElevatedButton/ElevatedButton.icon.html), the underlying Material Design elevated icon button.
- [elevatedButton](https://pub.dev/documentation/exui/1.0.11/material/ElevatedButtonWidgetExtensions/elevatedButton.html), for creating elevated buttons without icons.

*Available on Widget, provided by the ElevatedButtonWidgetExtensions extension*

:::details Implementation
```dart
ElevatedButton elevatedIconButton({
  required void Function()? onPressed,
  void Function()? onLongPress,
  void Function(bool)? onHover,
  void Function(bool)? onFocusChange,
  ButtonStyle? style,
  FocusNode? focusNode,
  bool? autofocus,
  Clip? clipBehavior,
  WidgetStatesController? statesController,
  Widget? icon,
  IconAlignment? iconAlignment,
}) =>
    ElevatedButton.icon(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      icon: icon,
      label: this,
      iconAlignment: iconAlignment,
    );
```
:::

### expandedFlex() <Badge type="info" text="extension" /> {#expandedflex}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Expanded</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">expandedFlex</span></span><span class="member-signature-token">([</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">flex</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">1</span></span><span class="member-signature-token">])</span></span></div></div>

Wraps the widget in an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) with the specified flex value.

Creates an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget that forces the child to occupy available
space along the main axis of its parent [Row](https://api.flutter.dev/flutter/widgets/Row-class.html), [Column](https://api.flutter.dev/flutter/widgets/Column-class.html), or [Flex](https://api.flutter.dev/flutter/widgets/Flex-class.html).
The flex value determines how much space this widget should occupy
relative to other [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) or [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) widgets in the same parent.

Parameters:

- `flex`: The flex factor to use. Higher values take more space.
Defaults to 1. Must be >= 0.

Returns an [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widget containing this widget as its child.

Example:

```dart
Column(
  children: [
    Container(color: Colors.red).expandedFlex(1),   // 1/6 of space
    Container(color: Colors.blue).expandedFlex(2),  // 2/6 of space
    Container(color: Colors.green).expandedFlex(3), // 3/6 of space
  ],
);
```

*Available on Widget, provided by the ExpandedWidgetExtension extension*

:::details Implementation
```dart
Expanded expandedFlex([int flex = 1]) => Expanded(
      flex: flex,
      child: this,
    );
```
:::

### filledButton() <Badge type="info" text="extension" /> {#filledbutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">FilledButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">filledButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHover</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">ButtonStyle</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">style</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.none,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">WidgetStatesController</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">statesController</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a [FilledButton](https://api.flutter.dev/flutter/material/FilledButton-class.html) with this widget as its child.

Filled buttons are high-emphasis buttons with a solid background color.
They're used for the most important actions in your app and have the
highest visual impact after the floating action button.

Parameters:

- `onPressed` - Called when the button is pressed. If null, button is disabled.
- `onLongPress` - Called when the button is long-pressed.
- `onHover` - Called when a pointer enters or exits the button area.
- `onFocusChange` - Called when the focus state of the button changes.
- `style` - Customizes the button's appearance and behavior.
- `focusNode` - An optional focus node to use as the focus node for this widget.
- `autofocus` - Whether this widget should focus itself if nothing else is focused.
- `clipBehavior` - The content will be clipped (or not) according to this option.
- `statesController` - Represents the interactive state of the button.

Returns a [FilledButton](https://api.flutter.dev/flutter/material/FilledButton-class.html) with this widget as its child.

Example:

```dart
Text('Submit')
  .filledButton(
    onPressed: () => submitForm(),
    style: FilledButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.primary,
    ),
  )
```

See also:

- [FilledButton](https://api.flutter.dev/flutter/material/FilledButton-class.html), the underlying Material Design filled button.
- [filledTonalButton](https://pub.dev/documentation/exui/1.0.11/material/ElevatedButtonWidgetExtensions/filledTonalButton.html), for a less prominent filled button variant.
- [filledIconButton](https://pub.dev/documentation/exui/1.0.11/material/ElevatedButtonWidgetExtensions/filledIconButton.html), for creating filled buttons with icons.

*Available on Widget, provided by the ElevatedButtonWidgetExtensions extension*

:::details Implementation
```dart
FilledButton filledButton({
  required void Function()? onPressed,
  void Function()? onLongPress,
  void Function(bool)? onHover,
  void Function(bool)? onFocusChange,
  ButtonStyle? style,
  FocusNode? focusNode,
  bool autofocus = false,
  Clip? clipBehavior = Clip.none,
  WidgetStatesController? statesController,
}) =>
    FilledButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      child: this,
    );
```
:::

### filledIconButton() <Badge type="info" text="extension" /> {#fillediconbutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">FilledButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">filledIconButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHover</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">ButtonStyle</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">style</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">WidgetStatesController</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">statesController</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Widget</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">icon</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">IconAlignment</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">iconAlignment</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a [FilledButton.icon](https://api.flutter.dev/flutter/material/FilledButton/FilledButton.icon.html) with this widget as its label and an optional icon.

This creates a filled button with both an icon and a label. The icon and label
are arranged horizontally according to the `iconAlignment` parameter.

Parameters:

- `onPressed` - Called when the button is pressed. If null, button is disabled.
- `onLongPress` - Called when the button is long-pressed.
- `onHover` - Called when a pointer enters or exits the button area.
- `onFocusChange` - Called when the focus state of the button changes.
- `style` - Customizes the button's appearance and behavior.
- `focusNode` - An optional focus node to use as the focus node for this widget.
- `autofocus` - Whether this widget should focus itself if nothing else is focused.
- `clipBehavior` - The content will be clipped (or not) according to this option.
- `statesController` - Represents the interactive state of the button.
- `icon` - The icon widget to display. If null, no icon is shown.
- `iconAlignment` - How to align the icon relative to the label.

Returns a [FilledButton](https://api.flutter.dev/flutter/material/FilledButton-class.html) configured as an icon button with this widget as the label.

Example:

```dart
Text('Create')
  .filledIconButton(
    onPressed: () => createNew(),
    icon: Icon(Icons.add),
  )
```

See also:

- [FilledButton.icon](https://api.flutter.dev/flutter/material/FilledButton/FilledButton.icon.html), the underlying Material Design filled icon button.
- [filledButton](https://pub.dev/documentation/exui/1.0.11/material/ElevatedButtonWidgetExtensions/filledButton.html), for creating filled buttons without icons.

*Available on Widget, provided by the ElevatedButtonWidgetExtensions extension*

:::details Implementation
```dart
FilledButton filledIconButton({
  required void Function()? onPressed,
  void Function()? onLongPress,
  void Function(bool)? onHover,
  void Function(bool)? onFocusChange,
  ButtonStyle? style,
  FocusNode? focusNode,
  bool? autofocus,
  Clip? clipBehavior,
  WidgetStatesController? statesController,
  Widget? icon,
  IconAlignment? iconAlignment,
}) =>
    FilledButton.icon(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      icon: icon,
      label: this,
      iconAlignment: iconAlignment,
    );
```
:::

### filledTonalButton() <Badge type="info" text="extension" /> {#filledtonalbutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">FilledButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">filledTonalButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHover</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">ButtonStyle</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">style</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.none,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">WidgetStatesController</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">statesController</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a [FilledButton.tonal](https://api.flutter.dev/flutter/material/FilledButton/FilledButton.tonal.html) with this widget as its child.

Filled tonal buttons are medium-emphasis buttons that are an alternative
middle ground between filled and outlined buttons. They can be used in
contexts where a lower-priority button requires slightly more emphasis
than an outline would give.

Parameters:

- `onPressed` - Called when the button is pressed. If null, button is disabled.
- `onLongPress` - Called when the button is long-pressed.
- `onHover` - Called when a pointer enters or exits the button area.
- `onFocusChange` - Called when the focus state of the button changes.
- `style` - Customizes the button's appearance and behavior.
- `focusNode` - An optional focus node to use as the focus node for this widget.
- `autofocus` - Whether this widget should focus itself if nothing else is focused.
- `clipBehavior` - The content will be clipped (or not) according to this option.
- `statesController` - Represents the interactive state of the button.

Returns a [FilledButton](https://api.flutter.dev/flutter/material/FilledButton-class.html) configured as a tonal variant with this widget as its child.

Example:

```dart
Text('Add to Cart')
  .filledTonalButton(
    onPressed: () => addToCart(),
  )
```

See also:

- [FilledButton.tonal](https://api.flutter.dev/flutter/material/FilledButton/FilledButton.tonal.html), the underlying Material Design filled tonal button.
- [filledButton](https://pub.dev/documentation/exui/1.0.11/material/ElevatedButtonWidgetExtensions/filledButton.html), for the standard filled button variant.
- [filledTonalIconButton](https://pub.dev/documentation/exui/1.0.11/material/ElevatedButtonWidgetExtensions/filledTonalIconButton.html), for creating filled tonal buttons with icons.

*Available on Widget, provided by the ElevatedButtonWidgetExtensions extension*

:::details Implementation
```dart
FilledButton filledTonalButton({
  required void Function()? onPressed,
  void Function()? onLongPress,
  void Function(bool)? onHover,
  void Function(bool)? onFocusChange,
  ButtonStyle? style,
  FocusNode? focusNode,
  bool autofocus = false,
  Clip? clipBehavior = Clip.none,
  WidgetStatesController? statesController,
}) =>
    FilledButton.tonal(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      child: this,
    );
```
:::

### filledTonalIconButton() <Badge type="info" text="extension" /> {#filledtonaliconbutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">FilledButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">filledTonalIconButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHover</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">ButtonStyle</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">style</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">WidgetStatesController</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">statesController</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Widget</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">icon</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">IconAlignment</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">iconAlignment</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a [FilledButton.tonalIcon](https://api.flutter.dev/flutter/material/FilledButton/FilledButton.tonalIcon.html) with this widget as its label and an optional icon.

This creates a filled tonal button with both an icon and a label. The icon and label
are arranged horizontally according to the `iconAlignment` parameter.

Filled tonal icon buttons provide a middle ground between filled and outlined
icon buttons, offering moderate emphasis with a subtle background.

Parameters:

- `onPressed` - Called when the button is pressed. If null, button is disabled.
- `onLongPress` - Called when the button is long-pressed.
- `onHover` - Called when a pointer enters or exits the button area.
- `onFocusChange` - Called when the focus state of the button changes.
- `style` - Customizes the button's appearance and behavior.
- `focusNode` - An optional focus node to use as the focus node for this widget.
- `autofocus` - Whether this widget should focus itself if nothing else is focused.
- `clipBehavior` - The content will be clipped (or not) according to this option.
- `statesController` - Represents the interactive state of the button.
- `icon` - The icon widget to display. If null, no icon is shown.
- `iconAlignment` - How to align the icon relative to the label.

Returns a [FilledButton](https://api.flutter.dev/flutter/material/FilledButton-class.html) configured as a tonal icon button with this widget as the label.

Example:

```dart
Text('Share')
  .filledTonalIconButton(
    onPressed: () => shareContent(),
    icon: Icon(Icons.share),
  )
```

See also:

- [FilledButton.tonalIcon](https://api.flutter.dev/flutter/material/FilledButton/FilledButton.tonalIcon.html), the underlying Material Design filled tonal icon button.
- [filledTonalButton](https://pub.dev/documentation/exui/1.0.11/material/ElevatedButtonWidgetExtensions/filledTonalButton.html), for creating filled tonal buttons without icons.

*Available on Widget, provided by the ElevatedButtonWidgetExtensions extension*

:::details Implementation
```dart
FilledButton filledTonalIconButton({
  required void Function()? onPressed,
  void Function()? onLongPress,
  void Function(bool)? onHover,
  void Function(bool)? onFocusChange,
  ButtonStyle? style,
  FocusNode? focusNode,
  bool? autofocus,
  Clip? clipBehavior,
  WidgetStatesController? statesController,
  Widget? icon,
  IconAlignment? iconAlignment,
}) =>
    FilledButton.tonalIcon(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      icon: icon,
      label: this,
      iconAlignment: iconAlignment,
    );
```
:::

### fitContain() <Badge type="info" text="extension" /> {#fitcontain}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">FittedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">fitContain</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Alignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.none,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) with [BoxFit.contain](https://api.flutter.dev/flutter/painting/BoxFit.html) strategy.

Scales the widget to fit entirely within the available space while maintaining
its aspect ratio. The widget will be as large as possible without being cropped,
but may leave empty space if the aspect ratios don't match.

This is the most commonly used fitting strategy as it preserves the entire
content while scaling appropriately.

Parameters:

- `alignment`: How to align the child within the fitted box.
Defaults to [Alignment.center](https://api.flutter.dev/flutter/painting/Alignment/center-constant.html).
- `clipBehavior`: How to clip the child if it overflows.
Defaults to [Clip.none](https://api.flutter.dev/flutter/dart-ui/Clip.html).

Returns a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) widget with contain fitting.

Example:

```dart
Image.asset('large_image.jpg')
  .fitContain() // Scales image to fit without cropping
  .sizedBox(width: 200, height: 100);
```

*Available on Widget, provided by the BoxFitWidgetExtensions extension*

:::details Implementation
```dart
FittedBox fitContain({
  AlignmentGeometry alignment = Alignment.center,
  Clip clipBehavior = Clip.none,
}) =>
    fittedBox(
      fit: BoxFit.contain,
      alignment: alignment,
      clipBehavior: clipBehavior,
    );
```
:::

### fitCover() <Badge type="info" text="extension" /> {#fitcover}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">FittedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">fitCover</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Alignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.none,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) with [BoxFit.cover](https://api.flutter.dev/flutter/painting/BoxFit.html) strategy.

Scales the widget to completely fill the available space while maintaining
its aspect ratio. The widget will fill the entire space, but parts may be
cropped if the aspect ratios don't match.

This is useful when you want to fill a space completely without distortion,
and cropping is acceptable.

Parameters:

- `alignment`: How to align the child within the fitted box.
Defaults to [Alignment.center](https://api.flutter.dev/flutter/painting/Alignment/center-constant.html).
- `clipBehavior`: How to clip the child if it overflows.
Defaults to [Clip.none](https://api.flutter.dev/flutter/dart-ui/Clip.html).

Returns a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) widget with cover fitting.

Example:

```dart
Image.network('https://example.com/photo.jpg')
  .fitCover() // Fills space completely, may crop image
  .sizedBox(width: 150, height: 150);
```

*Available on Widget, provided by the BoxFitWidgetExtensions extension*

:::details Implementation
```dart
FittedBox fitCover({
  AlignmentGeometry alignment = Alignment.center,
  Clip clipBehavior = Clip.none,
}) =>
    fittedBox(
      fit: BoxFit.cover,
      alignment: alignment,
      clipBehavior: clipBehavior,
    );
```
:::

### fitFill() <Badge type="info" text="extension" /> {#fitfill}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">FittedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">fitFill</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Alignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.none,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) with [BoxFit.fill](https://api.flutter.dev/flutter/painting/BoxFit.html) strategy.

Stretches the widget to exactly fill the available space, potentially
distorting the aspect ratio. The widget will fill the entire space
without any cropping or empty space.

**Warning**: This may distort the widget's appearance if the aspect
ratios don't match. Use with caution for visual content.

Parameters:

- `alignment`: How to align the child within the fitted box.
Defaults to [Alignment.center](https://api.flutter.dev/flutter/painting/Alignment/center-constant.html).
- `clipBehavior`: How to clip the child if it overflows.
Defaults to [Clip.none](https://api.flutter.dev/flutter/dart-ui/Clip.html).

Returns a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) widget with fill fitting.

Example:

```dart
Container(
  width: 100,
  height: 50,
  color: Colors.blue,
).fitFill() // Stretches to fill exactly, may distort
 .sizedBox(width: 200, height: 200);
```

*Available on Widget, provided by the BoxFitWidgetExtensions extension*

:::details Implementation
```dart
FittedBox fitFill({
  AlignmentGeometry alignment = Alignment.center,
  Clip clipBehavior = Clip.none,
}) =>
    fittedBox(
      fit: BoxFit.fill,
      alignment: alignment,
      clipBehavior: clipBehavior,
    );
```
:::

### fitHeight() <Badge type="info" text="extension" /> {#fitheight}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">FittedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">fitHeight</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Alignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.none,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) with [BoxFit.fitHeight](https://api.flutter.dev/flutter/painting/BoxFit.html) strategy.

Scales the widget to exactly match the available height while maintaining
aspect ratio. The width may extend beyond the available space and be cropped,
or there may be empty space horizontally.

This is useful when height is the critical dimension and horizontal
cropping or empty space is acceptable.

Parameters:

- `alignment`: How to align the child within the fitted box.
Defaults to [Alignment.center](https://api.flutter.dev/flutter/painting/Alignment/center-constant.html).
- `clipBehavior`: How to clip the child if it overflows.
Defaults to [Clip.none](https://api.flutter.dev/flutter/dart-ui/Clip.html).

Returns a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) widget with fit-height fitting.

Example:

```dart
Image.asset('tall_image.jpg')
  .fitHeight() // Fits height exactly, may crop width
  .sizedBox(width: 100, height: 200);
```

*Available on Widget, provided by the BoxFitWidgetExtensions extension*

:::details Implementation
```dart
FittedBox fitHeight({
  AlignmentGeometry alignment = Alignment.center,
  Clip clipBehavior = Clip.none,
}) =>
    fittedBox(
      fit: BoxFit.fitHeight,
      alignment: alignment,
      clipBehavior: clipBehavior,
    );
```
:::

### fitScaleDown() <Badge type="info" text="extension" /> {#fitscaledown}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">FittedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">fitScaleDown</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Alignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.none,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) with [BoxFit.scaleDown](https://api.flutter.dev/flutter/painting/BoxFit.html) strategy.

Scales the widget down to fit within the available space if it's larger,
but never scales up. If the widget is already smaller than the available
space, it remains at its original size.

This is useful for preventing widgets from becoming too large while
preserving their original size when they're already appropriately sized.

Parameters:

- `alignment`: How to align the child within the fitted box.
Defaults to [Alignment.center](https://api.flutter.dev/flutter/painting/Alignment/center-constant.html).
- `clipBehavior`: How to clip the child if it overflows.
Defaults to [Clip.none](https://api.flutter.dev/flutter/dart-ui/Clip.html).

Returns a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) widget with scale-down fitting.

Example:

```dart
Text('This might be too large', style: TextStyle(fontSize: 24))
  .fitScaleDown() // Scales down only if needed
  .sizedBox(width: 100, height: 30);
```

*Available on Widget, provided by the BoxFitWidgetExtensions extension*

:::details Implementation
```dart
FittedBox fitScaleDown({
  AlignmentGeometry alignment = Alignment.center,
  Clip clipBehavior = Clip.none,
}) =>
    fittedBox(
      fit: BoxFit.scaleDown,
      alignment: alignment,
      clipBehavior: clipBehavior,
    );
```
:::

### fittedBox() <Badge type="info" text="extension" /> {#fittedbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">FittedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">fittedBox</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BoxFit</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">fit</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= BoxFit.contain,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Alignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.none,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) with the specified fitting strategy.

Creates a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) that scales and positions its child according to the
specified [BoxFit](https://api.flutter.dev/flutter/painting/BoxFit.html) strategy. This is the base method that other fitting
methods in this extension use internally.

Parameters:

- `fit`: How the child should be inscribed into the available space.
Defaults to [BoxFit.contain](https://api.flutter.dev/flutter/painting/BoxFit.html).
- `alignment`: How to align the child within the fitted box.
Defaults to [Alignment.center](https://api.flutter.dev/flutter/painting/Alignment/center-constant.html).
- `clipBehavior`: How to clip the child if it overflows.
Defaults to [Clip.none](https://api.flutter.dev/flutter/dart-ui/Clip.html).

Returns a [FittedBox](https://api.flutter.dev/flutter/widgets/FittedBox-class.html) widget containing this widget as its child.

Example:

```dart
Text('Large Text', style: TextStyle(fontSize: 48))
  .fittedBox(
    fit: BoxFit.scaleDown,
    alignment: Alignment.centerLeft,
  );
```

*Available on Widget, provided by the BoxFitWidgetExtensions extension*

:::details Implementation
```dart
FittedBox fittedBox({
  BoxFit fit = BoxFit.contain,
  AlignmentGeometry alignment = Alignment.center,
  Clip clipBehavior = Clip.none,
}) =>
    FittedBox(
      fit: fit,
      alignment: alignment,
      clipBehavior: clipBehavior,
      child: this,
    );
```
:::

### flex() <Badge type="info" text="extension" /> {#flex}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Flexible</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">flex</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">flex</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">1</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">FlexFit</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">fit</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= FlexFit.loose})</span></span></div></div>

Wraps the widget in a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) with the specified flex value and fit.

Creates a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) widget that allows the child to occupy available
space along the main axis of its parent [Row](https://api.flutter.dev/flutter/widgets/Row-class.html), [Column](https://api.flutter.dev/flutter/widgets/Column-class.html), or [Flex](https://api.flutter.dev/flutter/widgets/Flex-class.html).
The flex value determines the proportion of space this widget can occupy
relative to other [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) or [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html) widgets in the same parent.

Parameters:

- `flex`: The flex factor to use. Higher values can take more space.
Defaults to 1. Must be >= 0.
- `fit`: How the child should fit within the allocated space.  - [FlexFit.loose](https://api.flutter.dev/flutter/rendering/FlexFit.html): Child can be smaller than allocated space (default)
  - [FlexFit.tight](https://api.flutter.dev/flutter/rendering/FlexFit.html): Child must fill allocated space

Returns a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) widget containing this widget as its child.

Example:

```dart
Column(
  children: [
    Text('Loose fit').flex(flex: 1, fit: FlexFit.loose),
    Text('Tight fit').flex(flex: 2, fit: FlexFit.tight),
  ],
);
```

*Available on Widget, provided by the FlexibleWidgetExtension extension*

:::details Implementation
```dart
Flexible flex({
  int flex = 1,
  FlexFit fit = FlexFit.loose,
}) =>
    Flexible(
      flex: flex,
      fit: fit,
      child: this,
    );
```
:::

### flex2() <Badge type="info" text="extension" /> {#flex2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Flexible</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">flex2</span></span><span class="member-signature-token">([</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">FlexFit</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">fit</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= FlexFit.loose])</span></span></div></div>

Wraps the widget in a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) with flex value 2.

This is a convenience method equivalent to calling `flex(flex: 2, fit: fit)`.
Takes up to twice as much space as widgets with flex value 1.

Parameters:

- `fit`: How the child should fit within the allocated space.
Defaults to [FlexFit.loose](https://api.flutter.dev/flutter/rendering/FlexFit.html).

Returns a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) widget with flex value 2.

*Available on Widget, provided by the FlexibleWidgetExtension extension*

:::details Implementation
```dart
Flexible flex2([FlexFit fit = FlexFit.loose]) => flex(flex: 2, fit: fit);
```
:::

### flex3() <Badge type="info" text="extension" /> {#flex3}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Flexible</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">flex3</span></span><span class="member-signature-token">([</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">FlexFit</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">fit</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= FlexFit.loose])</span></span></div></div>

Wraps the widget in a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) with flex value 3.

This is a convenience method equivalent to calling `flex(flex: 3, fit: fit)`.
Takes up to three times as much space as widgets with flex value 1.

Parameters:

- `fit`: How the child should fit within the allocated space.
Defaults to [FlexFit.loose](https://api.flutter.dev/flutter/rendering/FlexFit.html).

Returns a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) widget with flex value 3.

*Available on Widget, provided by the FlexibleWidgetExtension extension*

:::details Implementation
```dart
Flexible flex3([FlexFit fit = FlexFit.loose]) => flex(flex: 3, fit: fit);
```
:::

### flex4() <Badge type="info" text="extension" /> {#flex4}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Flexible</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">flex4</span></span><span class="member-signature-token">([</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">FlexFit</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">fit</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= FlexFit.loose])</span></span></div></div>

Wraps the widget in a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) with flex value 4.

This is a convenience method equivalent to calling `flex(flex: 4, fit: fit)`.
Takes up to four times as much space as widgets with flex value 1.

Parameters:

- `fit`: How the child should fit within the allocated space.
Defaults to [FlexFit.loose](https://api.flutter.dev/flutter/rendering/FlexFit.html).

Returns a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) widget with flex value 4.

*Available on Widget, provided by the FlexibleWidgetExtension extension*

:::details Implementation
```dart
Flexible flex4([FlexFit fit = FlexFit.loose]) => flex(flex: 4, fit: fit);
```
:::

### flex5() <Badge type="info" text="extension" /> {#flex5}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Flexible</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">flex5</span></span><span class="member-signature-token">([</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">FlexFit</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">fit</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= FlexFit.loose])</span></span></div></div>

Wraps the widget in a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) with flex value 5.

This is a convenience method equivalent to calling `flex(flex: 5, fit: fit)`.
Takes up to five times as much space as widgets with flex value 1.

Parameters:

- `fit`: How the child should fit within the allocated space.
Defaults to [FlexFit.loose](https://api.flutter.dev/flutter/rendering/FlexFit.html).

Returns a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) widget with flex value 5.

*Available on Widget, provided by the FlexibleWidgetExtension extension*

:::details Implementation
```dart
Flexible flex5([FlexFit fit = FlexFit.loose]) => flex(flex: 5, fit: fit);
```
:::

### flex6() <Badge type="info" text="extension" /> {#flex6}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Flexible</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">flex6</span></span><span class="member-signature-token">([</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">FlexFit</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">fit</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= FlexFit.loose])</span></span></div></div>

Wraps the widget in a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) with flex value 6.

This is a convenience method equivalent to calling `flex(flex: 6, fit: fit)`.
Takes up to six times as much space as widgets with flex value 1.

Parameters:

- `fit`: How the child should fit within the allocated space.
Defaults to [FlexFit.loose](https://api.flutter.dev/flutter/rendering/FlexFit.html).

Returns a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) widget with flex value 6.

*Available on Widget, provided by the FlexibleWidgetExtension extension*

:::details Implementation
```dart
Flexible flex6([FlexFit fit = FlexFit.loose]) => flex(flex: 6, fit: fit);
```
:::

### flex7() <Badge type="info" text="extension" /> {#flex7}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Flexible</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">flex7</span></span><span class="member-signature-token">([</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">FlexFit</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">fit</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= FlexFit.loose])</span></span></div></div>

Wraps the widget in a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) with flex value 7.

This is a convenience method equivalent to calling `flex(flex: 7, fit: fit)`.
Takes up to seven times as much space as widgets with flex value 1.

Parameters:

- `fit`: How the child should fit within the allocated space.
Defaults to [FlexFit.loose](https://api.flutter.dev/flutter/rendering/FlexFit.html).

Returns a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) widget with flex value 7.

*Available on Widget, provided by the FlexibleWidgetExtension extension*

:::details Implementation
```dart
Flexible flex7([FlexFit fit = FlexFit.loose]) => flex(flex: 7, fit: fit);
```
:::

### flex8() <Badge type="info" text="extension" /> {#flex8}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Flexible</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">flex8</span></span><span class="member-signature-token">([</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">FlexFit</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">fit</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= FlexFit.loose])</span></span></div></div>

Wraps the widget in a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) with flex value 8.

This is a convenience method equivalent to calling `flex(flex: 8, fit: fit)`.
Takes up to eight times as much space as widgets with flex value 1.

Parameters:

- `fit`: How the child should fit within the allocated space.
Defaults to [FlexFit.loose](https://api.flutter.dev/flutter/rendering/FlexFit.html).

Returns a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) widget with flex value 8.

*Available on Widget, provided by the FlexibleWidgetExtension extension*

:::details Implementation
```dart
Flexible flex8([FlexFit fit = FlexFit.loose]) => flex(flex: 8, fit: fit);
```
:::

### flexLoose() <Badge type="info" text="extension" /> {#flexloose}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Flexible</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">flexLoose</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">flex</span></span><span class="member-signature-token">)</span></span></div></div>

Wraps the widget in a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) with loose fit.

This is a convenience method that creates a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) with [FlexFit.loose](https://api.flutter.dev/flutter/rendering/FlexFit.html),
allowing the child to be smaller than the allocated space if it doesn't need it all.

Parameters:

- `flex`: The flex factor to use. Must be >= 0.

Returns a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) widget with loose fit.

Example:

```dart
Row(
  children: [
    Text('Short').flexLoose(2),  // Can be smaller than 2/3 of space
    Text('Long text content').flexLoose(1),
  ],
);
```

*Available on Widget, provided by the FlexibleWidgetExtension extension*

:::details Implementation
```dart
Flexible flexLoose(int flex) => this.flex(flex: flex, fit: FlexFit.loose);
```
:::

### flexTight() <Badge type="info" text="extension" /> {#flextight}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Flexible</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">flexTight</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">flex</span></span><span class="member-signature-token">)</span></span></div></div>

Wraps the widget in a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) with tight fit.

This is a convenience method that creates a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) with [FlexFit.tight](https://api.flutter.dev/flutter/rendering/FlexFit.html),
forcing the child to fill the allocated space. This behaves similarly to [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html).

Parameters:

- `flex`: The flex factor to use. Must be >= 0.

Returns a [Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html) widget with tight fit.

Example:

```dart
Row(
  children: [
    Text('Fills space').flexTight(1),  // Must fill 1/3 of space
    Text('Also fills').flexTight(2),   // Must fill 2/3 of space
  ],
);
```

*Available on Widget, provided by the FlexibleWidgetExtension extension*

:::details Implementation
```dart
Flexible flexTight(int flex) => this.flex(flex: flex, fit: FlexFit.tight);
```
:::

### gestureDetector() <Badge type="info" text="extension" /> {#gesturedetector}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">gestureDetector</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTapDown</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapUpDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTapUp</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTapCancel</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTap</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryTapDown</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapUpDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryTapUp</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryTapCancel</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryTap</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryTapDown</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapUpDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryTapUp</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryTapCancel</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onDoubleTapDown</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onDoubleTap</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onDoubleTapCancel</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPressDown</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPressCancel</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPressStart</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressMoveUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPressMoveUpdate</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPressUp</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPressEnd</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryLongPressDown</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryLongPressCancel</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryLongPressStart</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressMoveUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="param">onSecondaryLongPressMoveUpdate</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryLongPressUp</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryLongPressEnd</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryLongPressDown</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryLongPressCancel</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryLongPressStart</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressMoveUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="param">onTertiaryLongPressMoveUpdate</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryLongPressUp</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryLongPressEnd</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onVerticalDragDown</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onVerticalDragStart</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onVerticalDragUpdate</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onVerticalDragEnd</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onVerticalDragCancel</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHorizontalDragDown</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHorizontalDragStart</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHorizontalDragUpdate</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHorizontalDragEnd</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHorizontalDragCancel</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPanDown</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPanStart</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPanUpdate</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPanEnd</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPanCancel</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ScaleStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onScaleStart</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ScaleUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onScaleUpdate</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ScaleEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onScaleEnd</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ForcePressDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onForcePressStart</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ForcePressDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onForcePressPeak</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ForcePressDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onForcePressUpdate</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ForcePressDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onForcePressEnd</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) with comprehensive gesture support.

Creates a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that can handle all types of gestures supported by Flutter.
This is the most flexible method in this extension, providing access to all gesture
callbacks and configuration options.

**Tap Gesture Parameters:**

- `onTapDown`: Called when a tap down event occurs.
- `onTapUp`: Called when a tap up event occurs.
- `onTapCancel`: Called when a tap gesture is cancelled.
- `onTap`: Called when a tap gesture is completed.

**Secondary Tap Parameters (right-click/two-finger tap):**

- `onSecondaryTapDown`: Called when a secondary tap down occurs.
- `onSecondaryTapUp`: Called when a secondary tap up occurs.
- `onSecondaryTapCancel`: Called when a secondary tap is cancelled.
- `onSecondaryTap`: Called when a secondary tap is completed.

**Tertiary Tap Parameters (middle-click/three-finger tap):**

- `onTertiaryTapDown`: Called when a tertiary tap down occurs.
- `onTertiaryTapUp`: Called when a tertiary tap up occurs.
- `onTertiaryTapCancel`: Called when a tertiary tap is cancelled.

**Double Tap Parameters:**

- `onDoubleTapDown`: Called when a double tap down occurs.
- `onDoubleTap`: Called when a double tap is completed.
- `onDoubleTapCancel`: Called when a double tap is cancelled.

**Long Press Parameters:**

- `onLongPressDown`: Called when a long press down occurs.
- `onLongPressCancel`: Called when a long press is cancelled.
- `onLongPress`: Called when a long press is completed.
- `onLongPressStart`: Called when a long press starts.
- `onLongPressMoveUpdate`: Called during long press movement.
- `onLongPressUp`: Called when a long press ends.
- `onLongPressEnd`: Called when a long press gesture ends.

**Drag Gesture Parameters:**

- `onVerticalDragDown` through `onVerticalDragCancel`: Vertical drag events.
- `onHorizontalDragDown` through `onHorizontalDragCancel`: Horizontal drag events.
- `onPanDown` through `onPanCancel`: Pan (free direction) drag events.

**Scale Gesture Parameters:**

- `onScaleStart`: Called when a scale gesture starts.
- `onScaleUpdate`: Called during scale gesture updates.
- `onScaleEnd`: Called when a scale gesture ends.

**Force Press Parameters (3D Touch):**

- `onForcePressStart`: Called when force press starts.
- `onForcePressPeak`: Called at force press peak.
- `onForcePressUpdate`: Called during force press updates.
- `onForcePressEnd`: Called when force press ends.

**Configuration Parameters:**

- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree.
- `dragStartBehavior`: When drag gestures should start.
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget containing this widget as its child.

Example:

```dart
Container(color: Colors.red)
  .gestureDetector(
    onTap: () => print('Tapped'),
    onLongPress: () => print('Long pressed'),
    onPanUpdate: (details) => print('Panning: ${details.delta}'),
    behavior: HitTestBehavior.opaque,
  );
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector gestureDetector({
  &#47;&#47; Tap gestures
  GestureTapDownCallback? onTapDown,
  GestureTapUpCallback? onTapUp,
  GestureTapCancelCallback? onTapCancel,
  GestureTapCallback? onTap,

  &#47;&#47; Secondary tap gestures
  GestureTapDownCallback? onSecondaryTapDown,
  GestureTapUpCallback? onSecondaryTapUp,
  GestureTapCancelCallback? onSecondaryTapCancel,
  GestureTapCallback? onSecondaryTap,

  &#47;&#47; Tertiary tap gestures
  GestureTapDownCallback? onTertiaryTapDown,
  GestureTapUpCallback? onTertiaryTapUp,
  GestureTapCancelCallback? onTertiaryTapCancel,

  &#47;&#47; Double tap gestures
  GestureTapDownCallback? onDoubleTapDown,
  GestureTapCallback? onDoubleTap,
  GestureTapCancelCallback? onDoubleTapCancel,

  &#47;&#47; Long press gestures
  GestureLongPressDownCallback? onLongPressDown,
  GestureLongPressCancelCallback? onLongPressCancel,
  GestureLongPressCallback? onLongPress,
  GestureLongPressStartCallback? onLongPressStart,
  GestureLongPressMoveUpdateCallback? onLongPressMoveUpdate,
  GestureLongPressUpCallback? onLongPressUp,
  GestureLongPressEndCallback? onLongPressEnd,

  &#47;&#47; Secondary long press gestures
  GestureLongPressDownCallback? onSecondaryLongPressDown,
  GestureLongPressCancelCallback? onSecondaryLongPressCancel,
  GestureLongPressCallback? onSecondaryLongPress,
  GestureLongPressStartCallback? onSecondaryLongPressStart,
  GestureLongPressMoveUpdateCallback? onSecondaryLongPressMoveUpdate,
  GestureLongPressUpCallback? onSecondaryLongPressUp,
  GestureLongPressEndCallback? onSecondaryLongPressEnd,

  &#47;&#47; Tertiary long press gestures
  GestureLongPressDownCallback? onTertiaryLongPressDown,
  GestureLongPressCancelCallback? onTertiaryLongPressCancel,
  GestureLongPressCallback? onTertiaryLongPress,
  GestureLongPressStartCallback? onTertiaryLongPressStart,
  GestureLongPressMoveUpdateCallback? onTertiaryLongPressMoveUpdate,
  GestureLongPressUpCallback? onTertiaryLongPressUp,
  GestureLongPressEndCallback? onTertiaryLongPressEnd,

  &#47;&#47; Vertical drag gestures
  GestureDragDownCallback? onVerticalDragDown,
  GestureDragStartCallback? onVerticalDragStart,
  GestureDragUpdateCallback? onVerticalDragUpdate,
  GestureDragEndCallback? onVerticalDragEnd,
  GestureDragCancelCallback? onVerticalDragCancel,

  &#47;&#47; Horizontal drag gestures
  GestureDragDownCallback? onHorizontalDragDown,
  GestureDragStartCallback? onHorizontalDragStart,
  GestureDragUpdateCallback? onHorizontalDragUpdate,
  GestureDragEndCallback? onHorizontalDragEnd,
  GestureDragCancelCallback? onHorizontalDragCancel,

  &#47;&#47; Pan gestures
  GestureDragDownCallback? onPanDown,
  GestureDragStartCallback? onPanStart,
  GestureDragUpdateCallback? onPanUpdate,
  GestureDragEndCallback? onPanEnd,
  GestureDragCancelCallback? onPanCancel,

  &#47;&#47; Scale gestures
  GestureScaleStartCallback? onScaleStart,
  GestureScaleUpdateCallback? onScaleUpdate,
  GestureScaleEndCallback? onScaleEnd,

  &#47;&#47; Force press gestures
  GestureForcePressStartCallback? onForcePressStart,
  GestureForcePressPeakCallback? onForcePressPeak,
  GestureForcePressUpdateCallback? onForcePressUpdate,
  GestureForcePressEndCallback? onForcePressEnd,

  &#47;&#47; Behavior and settings
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTapDown: onTapDown,
    onTapUp: onTapUp,
    onTapCancel: onTapCancel,
    onTap: onTap,
    onSecondaryTapDown: onSecondaryTapDown,
    onSecondaryTapUp: onSecondaryTapUp,
    onSecondaryTapCancel: onSecondaryTapCancel,
    onSecondaryTap: onSecondaryTap,
    onTertiaryTapDown: onTertiaryTapDown,
    onTertiaryTapUp: onTertiaryTapUp,
    onTertiaryTapCancel: onTertiaryTapCancel,
    onDoubleTapDown: onDoubleTapDown,
    onDoubleTap: onDoubleTap,
    onDoubleTapCancel: onDoubleTapCancel,
    onLongPressDown: onLongPressDown,
    onLongPressCancel: onLongPressCancel,
    onLongPress: onLongPress,
    onLongPressStart: onLongPressStart,
    onLongPressMoveUpdate: onLongPressMoveUpdate,
    onLongPressUp: onLongPressUp,
    onLongPressEnd: onLongPressEnd,
    onSecondaryLongPressDown: onSecondaryLongPressDown,
    onSecondaryLongPressCancel: onSecondaryLongPressCancel,
    onSecondaryLongPress: onSecondaryLongPress,
    onSecondaryLongPressStart: onSecondaryLongPressStart,
    onSecondaryLongPressMoveUpdate: onSecondaryLongPressMoveUpdate,
    onSecondaryLongPressUp: onSecondaryLongPressUp,
    onSecondaryLongPressEnd: onSecondaryLongPressEnd,
    onTertiaryLongPressDown: onTertiaryLongPressDown,
    onTertiaryLongPressCancel: onTertiaryLongPressCancel,
    onTertiaryLongPress: onTertiaryLongPress,
    onTertiaryLongPressStart: onTertiaryLongPressStart,
    onTertiaryLongPressMoveUpdate: onTertiaryLongPressMoveUpdate,
    onTertiaryLongPressUp: onTertiaryLongPressUp,
    onTertiaryLongPressEnd: onTertiaryLongPressEnd,
    onVerticalDragDown: onVerticalDragDown,
    onVerticalDragStart: onVerticalDragStart,
    onVerticalDragUpdate: onVerticalDragUpdate,
    onVerticalDragEnd: onVerticalDragEnd,
    onVerticalDragCancel: onVerticalDragCancel,
    onHorizontalDragDown: onHorizontalDragDown,
    onHorizontalDragStart: onHorizontalDragStart,
    onHorizontalDragUpdate: onHorizontalDragUpdate,
    onHorizontalDragEnd: onHorizontalDragEnd,
    onHorizontalDragCancel: onHorizontalDragCancel,
    onPanDown: onPanDown,
    onPanStart: onPanStart,
    onPanUpdate: onPanUpdate,
    onPanEnd: onPanEnd,
    onPanCancel: onPanCancel,
    onScaleStart: onScaleStart,
    onScaleUpdate: onScaleUpdate,
    onScaleEnd: onScaleEnd,
    onForcePressStart: onForcePressStart,
    onForcePressPeak: onForcePressPeak,
    onForcePressUpdate: onForcePressUpdate,
    onForcePressEnd: onForcePressEnd,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### gradientBox() <Badge type="info" text="extension" /> {#gradientbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecoratedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">gradientBox</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Gradient</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">gradient</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecorationPosition</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">position</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DecorationPosition.background,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Applies a gradient background decoration to the widget.

Creates a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) with the specified gradient as the background.
Supports all Flutter gradient types including linear, radial, and sweep
gradients.

Parameters:

- `gradient`: The [Gradient](https://api.flutter.dev/flutter/painting/Gradient-class.html) to use as the background.
- `position`: Where to paint the decoration. Defaults to background.

Returns a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) widget with the gradient decoration.

Example:

```dart
Container(width: 200, height: 100)
  .gradientBox(
    LinearGradient(
      colors: [Colors.blue, Colors.purple],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
```

*Available on Widget, provided by the DecoratedBoxWidgetExtension extension*

:::details Implementation
```dart
DecoratedBox gradientBox(
  Gradient gradient, {
  DecorationPosition position = DecorationPosition.background,
}) =>
    decoratedBox(
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      position: position,
    );
```
:::

### greenAccentBox() <Badge type="info" text="extension" /> {#greenaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">greenAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a green accent colored box.

Uses [Colors.greenAccent](https://api.flutter.dev/flutter/material/Colors/greenAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of green.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with green accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox greenAccentBox() => coloredBox(Colors.greenAccent);
```
:::

### greenBox() <Badge type="info" text="extension" /> {#greenbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">greenBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with system green color.

Uses [CupertinoColors.systemGreen](https://api.flutter.dev/flutter/cupertino/CupertinoColors/systemGreen-constant.html) which adapts to light/dark mode.
This is the standard green color used throughout iOS interfaces,
commonly used for success states or positive actions.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with green background.

Example:

```dart
Icon(CupertinoIcons.checkmark).greenBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox greenBox() => coloredBox(CupertinoColors.systemGreen);
```
:::

### greenBox() <Badge type="info" text="extension" /> {#greenbox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">greenBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a green colored box.

Uses [Colors.green](https://api.flutter.dev/flutter/material/Colors/green-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with green background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox greenBox() => coloredBox(Colors.green);
```
:::

### greyBox() <Badge type="info" text="extension" /> {#greybox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">greyBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with system grey color.

Uses [CupertinoColors.systemGrey](https://api.flutter.dev/flutter/cupertino/CupertinoColors/systemGrey-constant.html) which adapts to light/dark mode.
This is the standard grey color used throughout iOS interfaces,
commonly used for secondary text, disabled states, or neutral elements.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with grey background.

Example:

```dart
Text('Disabled').greyBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox greyBox() => coloredBox(CupertinoColors.systemGrey);
```
:::

### greyBox() <Badge type="info" text="extension" /> {#greybox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">greyBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a grey colored box.

Uses [Colors.grey](https://api.flutter.dev/flutter/material/Colors/grey-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with grey background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox greyBox() => coloredBox(Colors.grey);
```
:::

### hero() <Badge type="info" text="extension" /> {#hero}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Hero</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">hero</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">tag</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Tween</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">Rect</span></span><span class="member-signature-token">?&gt;</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">Rect</span></span><span class="member-signature-token">?,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Rect</span></span><span class="member-signature-token">?)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">createRectTween</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Widget</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BuildContext</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Animation</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">&gt;,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HeroFlightDirection</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BuildContext</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BuildContext</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">)?</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="param">flightShuttleBuilder</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Widget</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">BuildContext</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Size</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Widget</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">placeholderBuilder</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">transitionOnUserGestures</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [Hero](https://api.flutter.dev/flutter/widgets/Hero-class.html) for page transition animations.

Creates a [Hero](https://api.flutter.dev/flutter/widgets/Hero-class.html) widget that enables smooth animations when navigating
between screens. Widgets with the same hero tag will be automatically
animated during page transitions, creating a visual connection between
the source and destination widgets.

Parameters:

- `tag`: A unique identifier for this hero. Widgets with the same tag
will be animated together during navigation. Must be unique within
the current route.
- `createRectTween`: Optional custom tween for animating the hero's
bounding rectangle during the transition.
- `flightShuttleBuilder`: Optional builder for creating a custom widget
to display during the hero flight animation.
- `placeholderBuilder`: Optional builder for creating a placeholder
widget to display in place of the hero during animation.
- `transitionOnUserGestures`: Whether to trigger hero transitions
during user gesture-driven navigation. Defaults to false.

Returns a [Hero](https://api.flutter.dev/flutter/widgets/Hero-class.html) widget containing this widget as its child.

Example:

```dart
// On the first screen
GestureDetector(
  onTap: () => Navigator.push(context, DetailPage()),
  child: Image.network('https://example.com/image.jpg')
    .hero('image-hero'),
);

// On the detail screen
Image.network('https://example.com/image.jpg')
  .hero('image-hero'); // Same tag creates smooth transition

// Custom hero with gesture transitions
Container(color: Colors.blue)
  .hero(
    'blue-container',
    transitionOnUserGestures: true,
  );
```

*Available on Widget, provided by the HeroWidgetExtension extension*

:::details Implementation
```dart
Hero hero(
  String tag, {
  Tween<Rect?> Function(Rect?, Rect?)? createRectTween,
  Widget Function(BuildContext, Animation<double>, HeroFlightDirection,
          BuildContext, BuildContext)?
      flightShuttleBuilder,
  Widget Function(BuildContext, Size, Widget)? placeholderBuilder,
  bool transitionOnUserGestures = false,
}) =>
    Hero(
      tag: tag,
      createRectTween: createRectTween,
      flightShuttleBuilder: flightShuttleBuilder,
      placeholderBuilder: placeholderBuilder,
      transitionOnUserGestures: transitionOnUserGestures,
      child: this,
    );
```
:::

### hide() <Badge type="info" text="extension" /> {#hide}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SizedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">hide</span></span><span class="member-signature-token">()</span></span></div></div>

Hides the widget by returning a [SizedBox.shrink](https://api.flutter.dev/flutter/widgets/SizedBox/SizedBox.shrink.html).

This is an alias for [boxShrink](https://pub.dev/documentation/exui/1.0.11/exui/VisibleWidgetExtension/boxShrink.html) that provides semantic clarity when
the intent is to hide a widget. The widget is completely removed from
the layout.

Returns a [SizedBox.shrink](https://api.flutter.dev/flutter/widgets/SizedBox/SizedBox.shrink.html).

Example:

```dart
Widget buildConditionalWidget() {
  return isVisible ? actualWidget : actualWidget.hide();
}
```

*Available on Widget, provided by the VisibleWidgetExtension extension*

:::details Implementation
```dart
SizedBox hide() => const SizedBox.shrink();
```
:::

### imageBox() <Badge type="info" text="extension" /> {#imagebox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecoratedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">imageBox</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">ImageProvider</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">Object</span></span><span class="member-signature-token">&gt;</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">image</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">Object</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">StackTrace</span></span><span class="member-signature-token">?)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onError</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColorFilter</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">colorFilter</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BoxFit</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">fit</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Alignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Rect</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">centerSlice</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">ImageRepeat</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">repeat</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= ImageRepeat.noRepeat,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">matchTextDirection</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">scale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">1.0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">opacity</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">1.0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FilterQuality</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">filterQuality</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= FilterQuality.medium,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">invertColors</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">isAntiAlias</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecorationPosition</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">position</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DecorationPosition.background,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Applies a background image decoration to the widget.

Creates a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) with a [DecorationImage](https://api.flutter.dev/flutter/painting/DecorationImage-class.html) that displays an image
behind the widget. Provides comprehensive control over image display
properties including fit, alignment, and filtering.

Parameters:

- `image`: The [ImageProvider](https://api.flutter.dev/flutter/painting/ImageProvider-class.html) for the background image.
- `onError`: Callback for handling image loading errors.
- `colorFilter`: Color filter to apply to the image.
- `fit`: How the image should be inscribed into the box.
- `alignment`: How to align the image within its bounds.
- `centerSlice`: Center slice for 9-patch images.
- `repeat`: How to repeat the image if it doesn't fill the box.
- `matchTextDirection`: Whether to flip the image for RTL text.
- `scale`: Scale factor for the image.
- `opacity`: Opacity of the image (0.0 to 1.0).
- `filterQuality`: Quality of image filtering.
- `invertColors`: Whether to invert the image colors.
- `isAntiAlias`: Whether to apply anti-aliasing.
- `position`: Where to paint the decoration.

Returns a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) widget with the image decoration.

Example:

```dart
Container(width: 200, height: 150)
  .imageBox(
    image: AssetImage('assets/background.jpg'),
    fit: BoxFit.cover,
    opacity: 0.8,
  );
```

*Available on Widget, provided by the DecoratedBoxWidgetExtension extension*

:::details Implementation
```dart
DecoratedBox imageBox({
  required ImageProvider<Object> image,
  void Function(Object, StackTrace?)? onError,
  ColorFilter? colorFilter,
  BoxFit? fit,
  AlignmentGeometry alignment = Alignment.center,
  Rect? centerSlice,
  ImageRepeat repeat = ImageRepeat.noRepeat,
  bool matchTextDirection = false,
  double scale = 1.0,
  double opacity = 1.0,
  FilterQuality filterQuality = FilterQuality.medium,
  bool invertColors = false,
  bool isAntiAlias = false,
  DecorationPosition position = DecorationPosition.background,
}) =>
    decoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          onError: onError,
          colorFilter: colorFilter,
          fit: fit,
          alignment: alignment,
          centerSlice: centerSlice,
          repeat: repeat,
          matchTextDirection: matchTextDirection,
          scale: scale,
          opacity: opacity,
          filterQuality: filterQuality,
        ),
      ),
      position: position,
    );
```
:::

### intrinsicHeight() <Badge type="info" text="extension" /> {#intrinsicheight}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">IntrinsicHeight</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">intrinsicHeight</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in an [IntrinsicHeight](https://api.flutter.dev/flutter/widgets/IntrinsicHeight-class.html) widget.

Creates an [IntrinsicHeight](https://api.flutter.dev/flutter/widgets/IntrinsicHeight-class.html) widget that sizes its child to the child's
intrinsic height. This forces the child to be as tall as it would naturally
be if it had unlimited height available.

This is useful when you want widgets in a row to all have the same height
based on the tallest widget's natural height.

Returns an [IntrinsicHeight](https://api.flutter.dev/flutter/widgets/IntrinsicHeight-class.html) widget containing this widget as its child.

Example:

```dart
Row(
  children: [
    Container(width: 50, height: 30, color: Colors.red)
      .intrinsicHeight(),
    Container(width: 50, height: 60, color: Colors.blue)
      .intrinsicHeight(),
  ],
); // Both containers will be 60px tall
```

*Available on Widget, provided by the IntrinsicWidthWidgetExtensions extension*

:::details Implementation
```dart
IntrinsicHeight intrinsicHeight() => IntrinsicHeight(child: this);
```
:::

### intrinsicWidth() <Badge type="info" text="extension" /> {#intrinsicwidth}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">IntrinsicWidth</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">intrinsicWidth</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in an [IntrinsicWidth](https://api.flutter.dev/flutter/widgets/IntrinsicWidth-class.html) widget with default settings.

This is a convenience method equivalent to calling `intrinsicWidthWith()`.
Creates an [IntrinsicWidth](https://api.flutter.dev/flutter/widgets/IntrinsicWidth-class.html) widget that sizes its child to the child's
intrinsic width without any step constraints.

Returns an [IntrinsicWidth](https://api.flutter.dev/flutter/widgets/IntrinsicWidth-class.html) widget containing this widget as its child.

Example:

```dart
Column(
  children: [
    Text('Short').intrinsicWidth(),
    Text('Much longer text content').intrinsicWidth(),
  ],
); // Both text widgets will have the same width
```

*Available on Widget, provided by the IntrinsicWidthWidgetExtensions extension*

:::details Implementation
```dart
IntrinsicWidth intrinsicWidth() => intrinsicWidthWith();
```
:::

### intrinsicWidthStepHeight() <Badge type="info" text="extension" /> {#intrinsicwidthstepheight}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">IntrinsicWidth</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">intrinsicWidthStepHeight</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">stepHeight</span></span><span class="member-signature-token">)</span></span></div></div>

Wraps the widget in an [IntrinsicWidth](https://api.flutter.dev/flutter/widgets/IntrinsicWidth-class.html) widget with a specific step height.

This is a convenience method equivalent to calling
`intrinsicWidthWith(stepHeight: stepHeight)`. The widget's height will be
quantized to multiples of the specified step height.

Parameters:

- `stepHeight`: The height increment. The widget's height will be the smallest
multiple of this value that accommodates the widget's intrinsic height.

Returns an [IntrinsicWidth](https://api.flutter.dev/flutter/widgets/IntrinsicWidth-class.html) widget with the specified step height.

Example:

```dart
Text('Variable height content')
  .intrinsicWidthStepHeight(20); // Height will be in 20px increments
```

*Available on Widget, provided by the IntrinsicWidthWidgetExtensions extension*

:::details Implementation
```dart
IntrinsicWidth intrinsicWidthStepHeight(double stepHeight) =>
    intrinsicWidthWith(stepHeight: stepHeight);
```
:::

### intrinsicWidthStepWidth() <Badge type="info" text="extension" /> {#intrinsicwidthstepwidth}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">IntrinsicWidth</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">intrinsicWidthStepWidth</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">stepWidth</span></span><span class="member-signature-token">)</span></span></div></div>

Wraps the widget in an [IntrinsicWidth](https://api.flutter.dev/flutter/widgets/IntrinsicWidth-class.html) widget with a specific step width.

This is a convenience method equivalent to calling
`intrinsicWidthWith(stepWidth: stepWidth)`. The widget's width will be
quantized to multiples of the specified step width.

Parameters:

- `stepWidth`: The width increment. The widget's width will be the smallest
multiple of this value that accommodates the widget's intrinsic width.

Returns an [IntrinsicWidth](https://api.flutter.dev/flutter/widgets/IntrinsicWidth-class.html) widget with the specified step width.

Example:

```dart
Text('Variable width content')
  .intrinsicWidthStepWidth(30); // Width will be in 30px increments
```

*Available on Widget, provided by the IntrinsicWidthWidgetExtensions extension*

:::details Implementation
```dart
IntrinsicWidth intrinsicWidthStepWidth(double stepWidth) =>
    intrinsicWidthWith(stepWidth: stepWidth);
```
:::

### intrinsicWidthWith() <Badge type="info" text="extension" /> {#intrinsicwidthwith}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">IntrinsicWidth</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">intrinsicWidthWith</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">stepWidth</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">stepHeight</span></span><span class="member-signature-token">})</span></span></div></div>

Wraps the widget in an [IntrinsicWidth](https://api.flutter.dev/flutter/widgets/IntrinsicWidth-class.html) widget with optional step constraints.

Creates an [IntrinsicWidth](https://api.flutter.dev/flutter/widgets/IntrinsicWidth-class.html) widget that sizes its child to the child's
intrinsic width. The step parameters allow you to quantize the sizing
to specific increments, which can be useful for creating grid-like layouts.

Parameters:

- `stepWidth`: If non-null, the child's width will be a multiple of this value.
The actual width will be the smallest multiple of stepWidth that accommodates
the child's intrinsic width.
- `stepHeight`: If non-null, the child's height will be a multiple of this value.
The actual height will be the smallest multiple of stepHeight that accommodates
the child's intrinsic height.

Returns an [IntrinsicWidth](https://api.flutter.dev/flutter/widgets/IntrinsicWidth-class.html) widget with the specified step constraints.

Example:

```dart
Column(
  children: [
    Text('Hello').intrinsicWidthWith(stepWidth: 50),
    Text('World').intrinsicWidthWith(stepWidth: 50),
  ],
); // Both widgets will be sized in 50px width increments
```

*Available on Widget, provided by the IntrinsicWidthWidgetExtensions extension*

:::details Implementation
```dart
IntrinsicWidth intrinsicWidthWith({
  double? stepWidth,
  double? stepHeight,
}) =>
    IntrinsicWidth(
      stepWidth: stepWidth,
      stepHeight: stepHeight,
      child: this,
    );
```
:::

### invisible() <Badge type="info" text="extension" /> {#invisible}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SizedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">invisible</span></span><span class="member-signature-token">()</span></span></div></div>

Makes the widget invisible by returning a [SizedBox.shrink](https://api.flutter.dev/flutter/widgets/SizedBox/SizedBox.shrink.html).

This is an alias for [boxShrink](https://pub.dev/documentation/exui/1.0.11/exui/VisibleWidgetExtension/boxShrink.html) that provides semantic clarity when
the intent is to make a widget invisible. Unlike opacity-based invisibility,
this completely removes the widget from the layout.

Returns a [SizedBox.shrink](https://api.flutter.dev/flutter/widgets/SizedBox/SizedBox.shrink.html).

Example:

```dart
Text('Sometimes visible')
  .invisible(); // Completely removed from layout
```

*Available on Widget, provided by the VisibleWidgetExtension extension*

:::details Implementation
```dart
SizedBox invisible() => const SizedBox.shrink();
```
:::

### lightBlueAccentBox() <Badge type="info" text="extension" /> {#lightblueaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">lightBlueAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a light blue accent colored box.

Uses [Colors.lightBlueAccent](https://api.flutter.dev/flutter/material/Colors/lightBlueAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of light blue.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with light blue accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox lightBlueAccentBox() => coloredBox(Colors.lightBlueAccent);
```
:::

### lightBlueBox() <Badge type="info" text="extension" /> {#lightbluebox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">lightBlueBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a light blue colored box.

Uses [Colors.lightBlue](https://api.flutter.dev/flutter/material/Colors/lightBlue-constant.html) as the background color, which is a lighter
shade of blue.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with light blue background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox lightBlueBox() => coloredBox(Colors.lightBlue);
```
:::

### lightGrayBox() <Badge type="info" text="extension" /> {#lightgraybox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">lightGrayBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with light background gray color.

Uses [CupertinoColors.lightBackgroundGray](https://api.flutter.dev/flutter/cupertino/CupertinoColors/lightBackgroundGray-constant.html) which provides a light gray
background suitable for light mode interfaces or secondary backgrounds.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with light gray background.

Example:

```dart
Container(child: Text('Light Section')).lightGrayBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox lightGrayBox() => coloredBox(CupertinoColors.lightBackgroundGray);
```
:::

### lightGreenAccentBox() <Badge type="info" text="extension" /> {#lightgreenaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">lightGreenAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a light green accent colored box.

Uses [Colors.lightGreenAccent](https://api.flutter.dev/flutter/material/Colors/lightGreenAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of light green.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with light green accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox lightGreenAccentBox() => coloredBox(Colors.lightGreenAccent);
```
:::

### lightGreenBox() <Badge type="info" text="extension" /> {#lightgreenbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">lightGreenBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a light green colored box.

Uses [Colors.lightGreen](https://api.flutter.dev/flutter/material/Colors/lightGreen-constant.html) as the background color, which is a lighter
shade of green.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with light green background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox lightGreenBox() => coloredBox(Colors.lightGreen);
```
:::

### limeAccentBox() <Badge type="info" text="extension" /> {#limeaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">limeAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a lime accent colored box.

Uses [Colors.limeAccent](https://api.flutter.dev/flutter/material/Colors/limeAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of lime.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with lime accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox limeAccentBox() => coloredBox(Colors.limeAccent);
```
:::

### limeBox() <Badge type="info" text="extension" /> {#limebox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">limeBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a lime colored box.

Uses [Colors.lime](https://api.flutter.dev/flutter/material/Colors/lime-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with lime background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox limeBox() => coloredBox(Colors.lime);
```
:::

### margin() <Badge type="info" text="extension" /> {#margin}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Container</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">margin</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">EdgeInsets</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">margin</span></span><span class="member-signature-token">)</span></span></div></div>

Applies the specified [EdgeInsets](https://api.flutter.dev/flutter/painting/EdgeInsets-class.html) margin to the widget.

This is the base method that wraps the widget in a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) widget
with the provided margin [EdgeInsets](https://api.flutter.dev/flutter/painting/EdgeInsets-class.html). Other margin methods in this extension
use this method internally.

Parameters:

- `margin`: The [EdgeInsets](https://api.flutter.dev/flutter/painting/EdgeInsets-class.html) to apply as margin around the widget.

Returns a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) widget containing this widget as its child with the specified margin.

Example:

```dart
Text('Custom margin')
  .margin(EdgeInsets.fromLTRB(10, 20, 30, 40));
```

*Available on Widget, provided by the MarginWidgetExtension extension*

:::details Implementation
```dart
Container margin(EdgeInsets margin) => Container(
      margin: margin,
      child: this,
    );
```
:::

### marginAll() <Badge type="info" text="extension" /> {#marginall}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Container</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">marginAll</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">margin</span></span><span class="member-signature-token">)</span></span></div></div>

Applies uniform margin to all sides of the widget.

Creates equal margin on the left, top, right, and bottom sides.
This is one of the most commonly used margin methods for creating
consistent spacing around content.

Parameters:

- `margin`: The amount of margin to apply to all sides.

Returns a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) widget with uniform margin on all sides.

Example:

```dart
Card(
  child: Text('Card content'),
).marginAll(12.0); // Adds 12px margin on all sides
```

*Available on Widget, provided by the MarginWidgetExtension extension*

:::details Implementation
```dart
Container marginAll(double margin) => this.margin(EdgeInsets.all(margin));
```
:::

### marginBottom() <Badge type="info" text="extension" /> {#marginbottom}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Container</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">marginBottom</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">bottom</span></span><span class="member-signature-token">)</span></span></div></div>

Applies margin to the bottom side only.

Adds spacing to the bottom side while leaving other sides unchanged.
Useful for creating bottom margins or spacing from footers.

Parameters:

- `bottom`: The amount of margin to apply to the bottom side.

Returns a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) widget with bottom-side margin only.

Example:

```dart
Text('Content with bottom spacing').marginBottom(12);
```

*Available on Widget, provided by the MarginWidgetExtension extension*

:::details Implementation
```dart
Container marginBottom(double bottom) => marginOnly(bottom: bottom);
```
:::

### marginHorizontal() <Badge type="info" text="extension" /> {#marginhorizontal}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Container</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">marginHorizontal</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">horizontal</span></span><span class="member-signature-token">)</span></span></div></div>

Applies margin to the left and right sides only.

This is a convenience method equivalent to calling
`marginSymmetric(horizontal: horizontal)`. Useful for adding
horizontal spacing while maintaining vertical alignment.

Parameters:

- `horizontal`: The amount of margin to apply to both left and right sides.

Returns a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) widget with horizontal margin only.

Example:

```dart
Column(
  children: [
    Text('Centered content').marginHorizontal(32),
  ],
);
```

*Available on Widget, provided by the MarginWidgetExtension extension*

:::details Implementation
```dart
Container marginHorizontal(double horizontal) =>
    marginSymmetric(horizontal: horizontal);
```
:::

### marginLeft() <Badge type="info" text="extension" /> {#marginleft}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Container</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">marginLeft</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">left</span></span><span class="member-signature-token">)</span></span></div></div>

Applies margin to the left side only.

Adds spacing to the left side while leaving other sides unchanged.
Useful for indentation or creating left margins.

Parameters:

- `left`: The amount of margin to apply to the left side.

Returns a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) widget with left-side margin only.

Example:

```dart
Text('Indented text').marginLeft(24);
```

*Available on Widget, provided by the MarginWidgetExtension extension*

:::details Implementation
```dart
Container marginLeft(double left) => marginOnly(left: left);
```
:::

### marginOnly() <Badge type="info" text="extension" /> {#marginonly}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Container</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">marginOnly</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">top</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">left</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">right</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">bottom</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Applies specific margin to individual sides of the widget.

Allows fine-grained control over margin by specifying different
values for each side. Any unspecified sides default to 0.

Parameters:

- `top`: Margin for the top side. Defaults to 0 if not specified.
- `left`: Margin for the left side. Defaults to 0 if not specified.
- `right`: Margin for the right side. Defaults to 0 if not specified.
- `bottom`: Margin for the bottom side. Defaults to 0 if not specified.

Returns a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) widget with the specified margin on each side.

Example:

```dart
Text('Asymmetric margin')
  .marginOnly(left: 16, top: 8, right: 16, bottom: 24);
```

*Available on Widget, provided by the MarginWidgetExtension extension*

:::details Implementation
```dart
Container marginOnly({
  double? top,
  double? left,
  double? right,
  double? bottom,
}) =>
    margin(EdgeInsets.only(
      top: top ?? 0,
      left: left ?? 0,
      right: right ?? 0,
      bottom: bottom ?? 0,
    ));
```
:::

### marginRight() <Badge type="info" text="extension" /> {#marginright}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Container</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">marginRight</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">right</span></span><span class="member-signature-token">)</span></span></div></div>

Applies margin to the right side only.

Adds spacing to the right side while leaving other sides unchanged.
Useful for creating right margins or spacing from right-aligned content.

Parameters:

- `right`: The amount of margin to apply to the right side.

Returns a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) widget with right-side margin only.

Example:

```dart
Text('Right-spaced text').marginRight(16);
```

*Available on Widget, provided by the MarginWidgetExtension extension*

:::details Implementation
```dart
Container marginRight(double right) => marginOnly(right: right);
```
:::

### marginSymmetric() <Badge type="info" text="extension" /> {#marginsymmetric}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Container</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">marginSymmetric</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">horizontal</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">vertical</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">})</span></span></div></div>

Applies symmetric margin to horizontal and vertical axes.

Creates margin that is symmetric along both axes - the same margin
is applied to left/right sides and top/bottom sides respectively.
This is useful for creating balanced layouts.

Parameters:

- `horizontal`: Margin for left and right sides. Defaults to 0.
- `vertical`: Margin for top and bottom sides. Defaults to 0.

Returns a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) widget with symmetric margin.

Example:

```dart
ListView(
  children: [
    ListTile(title: Text('Item 1'))
      .marginSymmetric(horizontal: 16, vertical: 8),
  ],
);
```

*Available on Widget, provided by the MarginWidgetExtension extension*

:::details Implementation
```dart
Container marginSymmetric({
  double horizontal = 0,
  double vertical = 0,
}) =>
    margin(
      EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
    );
```
:::

### marginTop() <Badge type="info" text="extension" /> {#margintop}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Container</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">marginTop</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">top</span></span><span class="member-signature-token">)</span></span></div></div>

Applies margin to the top side only.

Adds spacing to the top side while leaving other sides unchanged.
Useful for creating top margins or spacing from headers.

Parameters:

- `top`: The amount of margin to apply to the top side.

Returns a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) widget with top-side margin only.

Example:

```dart
Text('Content with top spacing').marginTop(20);
```

*Available on Widget, provided by the MarginWidgetExtension extension*

:::details Implementation
```dart
Container marginTop(double top) => marginOnly(top: top);
```
:::

### marginVertical() <Badge type="info" text="extension" /> {#marginvertical}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Container</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">marginVertical</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">vertical</span></span><span class="member-signature-token">)</span></span></div></div>

Applies margin to the top and bottom sides only.

This is a convenience method equivalent to calling
`marginSymmetric(vertical: vertical)`. Useful for adding
vertical spacing while maintaining horizontal alignment.

Parameters:

- `vertical`: The amount of margin to apply to both top and bottom sides.

Returns a [Container](https://api.flutter.dev/flutter/widgets/Container-class.html) widget with vertical margin only.

Example:

```dart
Row(
  children: [
    Icon(Icons.star).marginVertical(8),
    Text('Rating').marginVertical(8),
  ],
);
```

*Available on Widget, provided by the MarginWidgetExtension extension*

:::details Implementation
```dart
Container marginVertical(double vertical) =>
    marginSymmetric(vertical: vertical);
```
:::

### maxHeight() <Badge type="info" text="extension" /> {#maxheight}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ConstrainedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">maxHeight</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maxHeight</span></span><span class="member-signature-token">)</span></span></div></div>

Wraps this widget in a [ConstrainedBox](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html) with a maximum height constraint.

This method ensures the widget will be at most `maxHeight` pixels tall,
preventing it from growing beyond this limit.

Parameters:

- `maxHeight`: The maximum height in logical pixels

Example:

```dart
ListView(children: [...])
  .maxHeight(300) // Limits the list view height to 300px
```

See also:

- [minHeight](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/minHeight.html), for minimum height constraints
- [constrainedHeight](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/constrainedHeight.html), for both min and max height constraints

*Available on Widget, provided by the ConstrainedBoxExtension extension*

:::details Implementation
```dart
ConstrainedBox maxHeight(double maxHeight) => constrainedBox(
      constraints: BoxConstraints(
        maxHeight: maxHeight,
      ),
    );
```
:::

### maxWidth() <Badge type="info" text="extension" /> {#maxwidth}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ConstrainedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">maxWidth</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maxWidth</span></span><span class="member-signature-token">)</span></span></div></div>

Wraps this widget in a [ConstrainedBox](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html) with a maximum width constraint.

This method ensures the widget will be at most `maxWidth` pixels wide,
preventing it from growing beyond this limit.

Parameters:

- `maxWidth`: The maximum width in logical pixels

Example:

```dart
Text('This is a very long text that might overflow')
  .maxWidth(200) // Limits the text width to 200px
```

See also:

- [minWidth](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/minWidth.html), for minimum width constraints
- [constrainedWidth](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/constrainedWidth.html), for both min and max width constraints

*Available on Widget, provided by the ConstrainedBoxExtension extension*

:::details Implementation
```dart
ConstrainedBox maxWidth(double maxWidth) => constrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth,
      ),
    );
```
:::

### minHeight() <Badge type="info" text="extension" /> {#minheight}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ConstrainedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">minHeight</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minHeight</span></span><span class="member-signature-token">)</span></span></div></div>

Wraps this widget in a [ConstrainedBox](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html) with a minimum height constraint.

This method ensures the widget will be at least `minHeight` pixels tall,
but allows it to grow taller if needed.

Parameters:

- `minHeight`: The minimum height in logical pixels

Example:

```dart
Container(color: Colors.red)
  .minHeight(100) // Ensures the container is at least 100px tall
```

See also:

- [maxHeight](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/maxHeight.html), for maximum height constraints
- [constrainedHeight](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/constrainedHeight.html), for both min and max height constraints

*Available on Widget, provided by the ConstrainedBoxExtension extension*

:::details Implementation
```dart
ConstrainedBox minHeight(double minHeight) => constrainedBox(
      constraints: BoxConstraints(
        minHeight: minHeight,
      ),
    );
```
:::

### minWidth() <Badge type="info" text="extension" /> {#minwidth}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ConstrainedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">minWidth</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minWidth</span></span><span class="member-signature-token">)</span></span></div></div>

Wraps this widget in a [ConstrainedBox](https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html) with a minimum width constraint.

This method ensures the widget will be at least `minWidth` pixels wide,
but allows it to grow wider if needed.

Parameters:

- `minWidth`: The minimum width in logical pixels

Example:

```dart
Text('Short')
  .minWidth(100) // Ensures the text area is at least 100px wide
```

See also:

- [maxWidth](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/maxWidth.html), for maximum width constraints
- [constrainedWidth](https://pub.dev/documentation/exui/1.0.11/exui/ConstrainedBoxExtension/constrainedWidth.html), for both min and max width constraints

*Available on Widget, provided by the ConstrainedBoxExtension extension*

:::details Implementation
```dart
ConstrainedBox minWidth(double minWidth) => constrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth,
      ),
    );
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

### onDoubleTap() <Badge type="info" text="extension" /> {#ondoubletap}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onDoubleTap</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onDoubleTap</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to double tap gestures.

Double taps are two quick consecutive taps in the same location. This gesture
is commonly used for actions like zooming, selecting text, or triggering
special functionality that differs from single tap behavior.

Parameters:

- `onDoubleTap`: The callback to execute when a double tap is completed.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to double tap gestures.

Example:

```dart
Image.asset('photo.jpg')
  .onDoubleTap(() {
    print('Double tapped to zoom');
    // Zoom in on image
  });
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onDoubleTap(
  VoidCallback onDoubleTap, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onDoubleTap: onDoubleTap,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onDoubleTapCancel() <Badge type="info" text="extension" /> {#ondoubletapcancel}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onDoubleTapCancel</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onDoubleTapCancel</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to double tap cancel events.

This method is called when a double tap gesture is cancelled before completion.
This can occur when the timing between taps is too long, the taps are too far
apart, or when another gesture recognizer takes precedence.

Parameters:

- `onDoubleTapCancel`: The callback to execute when a double tap is cancelled.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to double tap cancel events.

Example:

```dart
Container(
  child: Text('Double tap feature'),
).onDoubleTapCancel(() {
  print('Double tap cancelled');
  // Reset any double tap preparations
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onDoubleTapCancel(
  VoidCallback onDoubleTapCancel, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onDoubleTapCancel: onDoubleTapCancel,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onDoubleTapDown() <Badge type="info" text="extension" /> {#ondoubletapdown}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onDoubleTapDown</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onDoubleTapDown</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to double tap down events.

This method is called when the second tap down of a double tap sequence occurs.
It's useful for providing immediate visual feedback during the double tap gesture,
before the complete double tap is recognized.

Parameters:

- `onDoubleTapDown`: The callback to execute when a double tap down occurs.
Provides [TapDownDetails](https://api.flutter.dev/flutter/gestures/TapDownDetails-class.html) with information about the tap location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to double tap down events.

Example:

```dart
Container(
  child: Text('Double tap to edit'),
).onDoubleTapDown((details) {
  print('Double tap down at: ${details.localPosition}');
  // Show visual feedback for double tap
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onDoubleTapDown(
  GestureTapDownCallback onDoubleTapDown, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onDoubleTapDown: onDoubleTapDown,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onForcePressEnd() <Badge type="info" text="extension" /> {#onforcepressend}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onForcePressEnd</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ForcePressDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onForcePressEnd</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to force press end events.

This method is called when a force press gesture ends, typically when the user
lifts their finger from the screen. It provides information about the final
pressure state and is useful for completing force press interactions, cleaning
up pressure-sensitive UI states, or determining the final action based on the
pressure level when the gesture ended.

Parameters:

- `onForcePressEnd`: The callback to execute when a force press ends.
Provides [ForcePressDetails](https://api.flutter.dev/flutter/gestures/ForcePressDetails-class.html) with final pressure and position information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to force press end events.

Example:

```dart
Container(
  child: Text('3D Touch interaction'),
).onForcePressEnd((details) {
  print('Force press ended with final pressure: ${details.pressure}');
  // Complete force press action and reset UI state
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onForcePressEnd(
  GestureForcePressEndCallback onForcePressEnd, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onForcePressEnd: onForcePressEnd,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onForcePressPeak() <Badge type="info" text="extension" /> {#onforcepresspeak}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onForcePressPeak</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ForcePressDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onForcePressPeak</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to force press peak events.

This method is called when a force press gesture reaches its peak pressure. This
typically occurs when the user has applied maximum pressure during a 3D Touch
interaction. It's commonly used to trigger the "pop" action in peek and pop
interactions, where the user transitions from previewing content to fully opening it.

Parameters:

- `onForcePressPeak`: The callback to execute when force press reaches peak pressure.
Provides [ForcePressDetails](https://api.flutter.dev/flutter/gestures/ForcePressDetails-class.html) with pressure and position information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to force press peak events.

Example:

```dart
ListTile(
  title: Text('3D Touch for quick actions'),
).onForcePressPeak((details) {
  print('Force press peaked at pressure: ${details.pressure}');
  // Trigger pop action - open full content
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onForcePressPeak(
  GestureForcePressPeakCallback onForcePressPeak, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onForcePressPeak: onForcePressPeak,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onForcePressStart() <Badge type="info" text="extension" /> {#onforcepressstart}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onForcePressStart</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ForcePressDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onForcePressStart</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to force press start events.

Force press gestures are available on devices that support pressure-sensitive input,
such as iPhones with 3D Touch or Apple Watches. This method is called when the user
begins applying significant pressure to the screen. It's commonly used for peek and
pop interactions, context menus, or pressure-sensitive drawing applications.

Parameters:

- `onForcePressStart`: The callback to execute when a force press starts.
Provides [ForcePressDetails](https://api.flutter.dev/flutter/gestures/ForcePressDetails-class.html) with pressure and position information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to force press start events.

Example:

```dart
Container(
  child: Text('3D Touch me'),
).onForcePressStart((details) {
  print('Force press started with pressure: ${details.pressure}');
  // Show peek preview
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onForcePressStart(
  GestureForcePressStartCallback onForcePressStart, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onForcePressStart: onForcePressStart,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onForcePressUpdate() <Badge type="info" text="extension" /> {#onforcepressupdate}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onForcePressUpdate</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ForcePressDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onForcePressUpdate</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to force press update events.

This method is called continuously during a force press gesture as the pressure
changes. It provides real-time pressure updates, which can be used to create
pressure-sensitive interactions, progressive reveals, or dynamic visual feedback
that responds to how hard the user is pressing.

Parameters:

- `onForcePressUpdate`: The callback to execute during force press updates.
Provides [ForcePressDetails](https://api.flutter.dev/flutter/gestures/ForcePressDetails-class.html) with current pressure and position information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to force press update events.

Example:

```dart
Container(
  child: Text('Pressure-sensitive drawing'),
).onForcePressUpdate((details) {
  print('Current pressure: ${details.pressure}');
  // Update brush size or opacity based on pressure
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onForcePressUpdate(
  GestureForcePressUpdateCallback onForcePressUpdate, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onForcePressUpdate: onForcePressUpdate,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onHorizontalDragCancel() <Badge type="info" text="extension" /> {#onhorizontaldragcancel}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onHorizontalDragCancel</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHorizontalDragCancel</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to horizontal drag cancel events.

This method is called when a horizontal drag gesture is cancelled before completion.
This can occur when another gesture recognizer takes precedence or when the system
interrupts the drag. It's useful for cleaning up any state or visual feedback that
was established during the horizontal drag operation.

Parameters:

- `onHorizontalDragCancel`: The callback to execute when a horizontal drag is cancelled.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to horizontal drag cancel events.

Example:

```dart
Container(
  width: 200,
  child: Text('Horizontal drag feature'),
).onHorizontalDragCancel(() {
  print('Horizontal drag cancelled');
  // Reset horizontal drag state
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onHorizontalDragCancel(
  VoidCallback onHorizontalDragCancel, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onHorizontalDragCancel: onHorizontalDragCancel,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onHorizontalDragDown() <Badge type="info" text="extension" /> {#onhorizontaldragdown}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onHorizontalDragDown</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHorizontalDragDown</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to horizontal drag down events.

This method is called when a horizontal drag gesture begins. Horizontal drag gestures
are constrained to move only in the horizontal direction (left and right). This is useful
for implementing horizontal scrollable content, sliders, carousels, or other UI elements
that should only respond to horizontal movement.

Parameters:

- `onHorizontalDragDown`: The callback to execute when a horizontal drag down occurs.
Provides [DragDownDetails](https://api.flutter.dev/flutter/gestures/DragDownDetails-class.html) with information about the initial touch position.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to horizontal drag down events.

Example:

```dart
Container(
  width: 200,
  child: Text('Drag horizontally'),
).onHorizontalDragDown((details) {
  print('Horizontal drag started at: ${details.localPosition}');
  // Initialize horizontal drag state
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onHorizontalDragDown(
  GestureDragDownCallback onHorizontalDragDown, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onHorizontalDragDown: onHorizontalDragDown,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onHorizontalDragEnd() <Badge type="info" text="extension" /> {#onhorizontaldragend}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onHorizontalDragEnd</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHorizontalDragEnd</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to horizontal drag end events.

This method is called when a horizontal drag gesture ends. It provides information
about the final velocity and position, which is useful for implementing momentum
scrolling, snap-to-position behavior, carousel page snapping, or other physics-based
interactions that should continue after the user lifts their finger.

Parameters:

- `onHorizontalDragEnd`: The callback to execute when a horizontal drag ends.
Provides [DragEndDetails](https://api.flutter.dev/flutter/gestures/DragEndDetails-class.html) with velocity and position information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to horizontal drag end events.

Example:

```dart
Container(
  width: 200,
  child: Text('Flick me horizontally'),
).onHorizontalDragEnd((details) {
  print('Horizontal drag ended with velocity: ${details.velocity.pixelsPerSecond.dx}');
  // Apply momentum scrolling or snap to page
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onHorizontalDragEnd(
  GestureDragEndCallback onHorizontalDragEnd, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onHorizontalDragEnd: onHorizontalDragEnd,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onHorizontalDragStart() <Badge type="info" text="extension" /> {#onhorizontaldragstart}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onHorizontalDragStart</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHorizontalDragStart</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to horizontal drag start events.

This method is called when a horizontal drag gesture is recognized and starts moving.
It provides detailed information about the drag initiation and is useful for setting up
the initial state for horizontal scrolling, sliding, carousel navigation, or other
horizontal movement interactions.

Parameters:

- `onHorizontalDragStart`: The callback to execute when a horizontal drag starts.
Provides [DragStartDetails](https://api.flutter.dev/flutter/gestures/DragStartDetails-class.html) with information about the drag start position.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to horizontal drag start events.

Example:

```dart
Container(
  width: 200,
  child: Text('Horizontal slider'),
).onHorizontalDragStart((details) {
  print('Horizontal drag started at: ${details.localPosition}');
  // Begin horizontal drag operation
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onHorizontalDragStart(
  GestureDragStartCallback onHorizontalDragStart, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onHorizontalDragStart: onHorizontalDragStart,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onHorizontalDragUpdate() <Badge type="info" text="extension" /> {#onhorizontaldragupdate}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onHorizontalDragUpdate</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHorizontalDragUpdate</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to horizontal drag update events.

This method is called continuously as the user drags their finger horizontally across
the screen. It provides real-time updates about the horizontal movement, making it
perfect for implementing smooth horizontal scrolling, carousels, sliders, or progress
indicators that respond to horizontal gestures.

Parameters:

- `onHorizontalDragUpdate`: The callback to execute during horizontal drag movement.
Provides [DragUpdateDetails](https://api.flutter.dev/flutter/gestures/DragUpdateDetails-class.html) with delta and position information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to horizontal drag update events.

Example:

```dart
Container(
  width: 200,
  child: Text('Scroll me horizontally'),
).onHorizontalDragUpdate((details) {
  print('Horizontal drag delta: ${details.delta.dx}');
  // Update horizontal scroll position
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onHorizontalDragUpdate(
  GestureDragUpdateCallback onHorizontalDragUpdate, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onHorizontalDragUpdate: onHorizontalDragUpdate,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onLongPress() <Badge type="info" text="extension" /> {#onlongpress}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onLongPress</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to long press gestures.

Long press gestures are triggered when the user presses and holds on the widget
for an extended period (typically 500ms). This gesture is commonly used for
context menus, selection modes, or alternative actions.

Parameters:

- `onLongPress`: The callback to execute when a long press is completed.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to long press gestures.

Example:

```dart
ListTile(
  title: Text('Long press for options'),
).onLongPress(() {
  print('Long pressed');
  showContextMenu();
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onLongPress(
  VoidCallback onLongPress, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onLongPress: onLongPress,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onLongPressCancel() <Badge type="info" text="extension" /> {#onlongpresscancel}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onLongPressCancel</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPressCancel</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to long press cancel events.

This method is called when a long press gesture is cancelled before completion.
This can occur when the user lifts their finger too early, moves too far from
the original position, or when another gesture recognizer takes precedence.

Parameters:

- `onLongPressCancel`: The callback to execute when a long press is cancelled.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to long press cancel events.

Example:

```dart
Container(
  child: Text('Long press feature'),
).onLongPressCancel(() {
  print('Long press cancelled');
  // Reset any long press visual feedback
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onLongPressCancel(
  VoidCallback onLongPressCancel, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onLongPressCancel: onLongPressCancel,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onLongPressDown() <Badge type="info" text="extension" /> {#onlongpressdown}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onLongPressDown</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPressDown</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to long press down events.

This method is called when a potential long press gesture begins. It provides
early notification that the user has started pressing, which can be used to
show visual feedback or prepare for the upcoming long press.

Parameters:

- `onLongPressDown`: The callback to execute when a long press down occurs.
Provides [LongPressDownDetails](https://api.flutter.dev/flutter/gestures/LongPressDownDetails-class.html) with information about the press location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to long press down events.

Example:

```dart
Container(
  child: Text('Hold me'),
).onLongPressDown((details) {
  print('Long press starting at: ${details.localPosition}');
  // Show visual feedback for long press start
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onLongPressDown(
  GestureLongPressDownCallback onLongPressDown, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onLongPressDown: onLongPressDown,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onLongPressEnd() <Badge type="info" text="extension" /> {#onlongpressend}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onLongPressEnd</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPressEnd</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to long press end events.

This method is called when a long press gesture ends, providing detailed
information about how the gesture concluded. It's useful for implementing
complex long press interactions with velocity or position-based completion.

Parameters:

- `onLongPressEnd`: The callback to execute when a long press ends.
Provides [LongPressEndDetails](https://api.flutter.dev/flutter/gestures/LongPressEndDetails-class.html) with information about the gesture end.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to long press end events.

Example:

```dart
Container(
  child: Text('Long press with details'),
).onLongPressEnd((details) {
  print('Long press ended at: ${details.localPosition}');
  // Handle detailed long press completion
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onLongPressEnd(
  GestureLongPressEndCallback onLongPressEnd, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onLongPressEnd: onLongPressEnd,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onLongPressMoveUpdate() <Badge type="info" text="extension" /> {#onlongpressmoveupdate}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onLongPressMoveUpdate</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressMoveUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPressMoveUpdate</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to long press move update events.

This method is called when the user moves their finger during a long press gesture.
It's useful for implementing drag operations that start with a long press, providing
continuous updates about the finger position.

Parameters:

- `onLongPressMoveUpdate`: The callback to execute during long press movement.
Provides [LongPressMoveUpdateDetails](https://api.flutter.dev/flutter/gestures/LongPressMoveUpdateDetails-class.html) with movement information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to long press move update events.

Example:

```dart
Container(
  child: Text('Long press and drag'),
).onLongPressMoveUpdate((details) {
  print('Long press moving to: ${details.localPosition}');
  // Update drag position
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onLongPressMoveUpdate(
  GestureLongPressMoveUpdateCallback onLongPressMoveUpdate, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onLongPressMoveUpdate: onLongPressMoveUpdate,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onLongPressStart() <Badge type="info" text="extension" /> {#onlongpressstart}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onLongPressStart</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPressStart</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to long press start events.

This method is called when a long press gesture is recognized and starts.
It provides detailed information about the gesture and is useful for implementing
drag-and-drop operations or other interactions that begin with a long press.

Parameters:

- `onLongPressStart`: The callback to execute when a long press starts.
Provides [LongPressStartDetails](https://api.flutter.dev/flutter/gestures/LongPressStartDetails-class.html) with information about the press location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to long press start events.

Example:

```dart
Container(
  child: Text('Drag me'),
).onLongPressStart((details) {
  print('Long press started at: ${details.localPosition}');
  // Begin drag operation
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onLongPressStart(
  GestureLongPressStartCallback onLongPressStart, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onLongPressStart: onLongPressStart,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onLongPressUp() <Badge type="info" text="extension" /> {#onlongpressup}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onLongPressUp</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPressUp</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to long press up events.

This method is called when the user lifts their finger after a long press gesture.
It's useful for completing drag operations or other interactions that were
initiated by a long press.

Parameters:

- `onLongPressUp`: The callback to execute when a long press up occurs.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to long press up events.

Example:

```dart
Container(
  child: Text('Long press action'),
).onLongPressUp(() {
  print('Long press released');
  // Complete long press action
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onLongPressUp(
  VoidCallback onLongPressUp, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onLongPressUp: onLongPressUp,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onPanCancel() <Badge type="info" text="extension" /> {#onpancancel}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onPanCancel</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPanCancel</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to pan cancel events.

This method is called when a pan gesture is cancelled before completion. This can
occur when another gesture recognizer takes precedence, when the system interrupts
the gesture, or when the pan gesture conflicts with other gestures. It's useful for
cleaning up any state or visual feedback that was established during the pan operation.

Parameters:

- `onPanCancel`: The callback to execute when a pan is cancelled.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to pan cancel events.

Example:

```dart
Container(
  child: Text('Pan drag feature'),
).onPanCancel(() {
  print('Pan gesture cancelled');
  // Reset pan drag state and visual feedback
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onPanCancel(
  VoidCallback onPanCancel, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onPanCancel: onPanCancel,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onPanDown() <Badge type="info" text="extension" /> {#onpandown}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onPanDown</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPanDown</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to pan down events.

This method is called when a pan gesture begins. Pan gestures allow free-direction
dragging without being constrained to horizontal or vertical movement. This is the
most flexible drag gesture and is commonly used for moving objects around the screen,
implementing custom scrolling behavior, or creating interactive canvases.

Parameters:

- `onPanDown`: The callback to execute when a pan down occurs.
Provides [DragDownDetails](https://api.flutter.dev/flutter/gestures/DragDownDetails-class.html) with information about the initial touch position.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to pan down events.

Example:

```dart
Container(
  child: Text('Drag me anywhere'),
).onPanDown((details) {
  print('Pan started at: ${details.localPosition}');
  // Initialize free-direction drag state
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onPanDown(
  GestureDragDownCallback onPanDown, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onPanDown: onPanDown,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onPanEnd() <Badge type="info" text="extension" /> {#onpanend}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onPanEnd</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPanEnd</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to pan end events.

This method is called when a pan gesture ends. It provides information about the
final velocity and position, which is useful for implementing momentum scrolling,
physics-based animations, or snap-to-position behavior for draggable objects.
Pan gestures are the most flexible drag gestures as they work in any direction.

Parameters:

- `onPanEnd`: The callback to execute when a pan ends.
Provides [DragEndDetails](https://api.flutter.dev/flutter/gestures/DragEndDetails-class.html) with velocity and position information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to pan end events.

Example:

```dart
Container(
  child: Text('Flick me in any direction'),
).onPanEnd((details) {
  print('Pan ended with velocity: ${details.velocity.pixelsPerSecond}');
  // Apply momentum or snap to position
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onPanEnd(
  GestureDragEndCallback onPanEnd, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onPanEnd: onPanEnd,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onPanStart() <Badge type="info" text="extension" /> {#onpanstart}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onPanStart</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPanStart</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to pan start events.

This method is called when a pan gesture is recognized and starts moving. It provides
detailed information about the drag initiation and is useful for setting up the initial
state for free-direction dragging, object movement, or custom scrolling implementations
that need to work in any direction.

Parameters:

- `onPanStart`: The callback to execute when a pan starts.
Provides [DragStartDetails](https://api.flutter.dev/flutter/gestures/DragStartDetails-class.html) with information about the drag start position.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to pan start events.

Example:

```dart
Container(
  child: Text('Movable object'),
).onPanStart((details) {
  print('Pan started at: ${details.localPosition}');
  // Begin free-direction drag operation
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onPanStart(
  GestureDragStartCallback onPanStart, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onPanStart: onPanStart,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onPanUpdate() <Badge type="info" text="extension" /> {#onpanupdate}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onPanUpdate</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPanUpdate</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to pan update events.

Pan gestures allow free-direction dragging and are one of the most commonly used
drag gestures. This method is called continuously as the user drags their finger
across the screen, providing real-time position updates for smooth interactions.

Parameters:

- `onPanUpdate`: The callback to execute during pan movement.
Provides [DragUpdateDetails](https://api.flutter.dev/flutter/gestures/DragUpdateDetails-class.html) with delta and position information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to pan update events.

Example:

```dart
Container(
  child: Text('Drag me around'),
).onPanUpdate((details) {
  print('Dragging by: ${details.delta}');
  // Update widget position based on drag
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onPanUpdate(
  GestureDragUpdateCallback onPanUpdate, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onPanUpdate: onPanUpdate,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onScaleEnd() <Badge type="info" text="extension" /> {#onscaleend}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onScaleEnd</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ScaleEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onScaleEnd</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to scale end events.

This method is called when a scale gesture ends. It provides information about
the final velocity of the scaling operation, which can be used to implement
momentum-based scaling, snap-to-zoom levels, or smooth scale animations that
continue after the user lifts their fingers.

Parameters:

- `onScaleEnd`: The callback to execute when a scale gesture ends.
Provides [ScaleEndDetails](https://api.flutter.dev/flutter/gestures/ScaleEndDetails-class.html) with velocity information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to scale end events.

Example:

```dart
Image.asset('photo.jpg')
  .onScaleEnd((details) {
    print('Scale ended with velocity: ${details.velocity}');
    // Apply momentum scaling or snap to zoom level
  });
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onScaleEnd(
  GestureScaleEndCallback onScaleEnd, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onScaleEnd: onScaleEnd,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onScaleStart() <Badge type="info" text="extension" /> {#onscalestart}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onScaleStart</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ScaleStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onScaleStart</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to scale start events.

This method is called when a scale gesture begins. Scale gestures are typically
initiated by pinch-to-zoom interactions (two fingers moving closer or farther apart)
or rotation gestures. This is commonly used for implementing zoom functionality
in images, maps, or other scalable content.

Parameters:

- `onScaleStart`: The callback to execute when a scale gesture starts.
Provides [ScaleStartDetails](https://api.flutter.dev/flutter/gestures/ScaleStartDetails-class.html) with information about the initial focal point.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to scale start events.

Example:

```dart
Image.asset('photo.jpg')
  .onScaleStart((details) {
    print('Scale started at focal point: ${details.focalPoint}');
    // Initialize zoom state
  });
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onScaleStart(
  GestureScaleStartCallback onScaleStart, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onScaleStart: onScaleStart,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onScaleUpdate() <Badge type="info" text="extension" /> {#onscaleupdate}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onScaleUpdate</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">ScaleUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onScaleUpdate</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to scale update events.

Scale gestures are used for pinch-to-zoom and rotation interactions. This method
is called continuously during scaling operations, providing real-time updates
about scale factor, rotation, and focal point changes.

Parameters:

- `onScaleUpdate`: The callback to execute during scale updates.
Provides [ScaleUpdateDetails](https://api.flutter.dev/flutter/gestures/ScaleUpdateDetails-class.html) with scale, rotation, and focal point information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to scale update events.

Example:

```dart
Image.asset('photo.jpg')
  .onScaleUpdate((details) {
    print('Scale: ${details.scale}, Rotation: ${details.rotation}');
    // Apply zoom and rotation transformations
  });
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onScaleUpdate(
  GestureScaleUpdateCallback onScaleUpdate, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onScaleUpdate: onScaleUpdate,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onSecondaryLongPress() <Badge type="info" text="extension" /> {#onsecondarylongpress}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onSecondaryLongPress</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryLongPress</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to secondary long press gestures.

Secondary long press gestures are triggered when the user performs a long press
with the secondary button (right-click and hold) or a two-finger long press on
mobile devices. This is useful for advanced context menus or specialized interactions.

Parameters:

- `onSecondaryLongPress`: The callback to execute when a secondary long press is completed.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to secondary long press gestures.

Example:

```dart
Container(
  child: Text('Right-click and hold'),
).onSecondaryLongPress(() {
  print('Secondary long press completed');
  // Show advanced context menu
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onSecondaryLongPress(
  VoidCallback onSecondaryLongPress, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onSecondaryLongPress: onSecondaryLongPress,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onSecondaryLongPressCancel() <Badge type="info" text="extension" /> {#onsecondarylongpresscancel}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onSecondaryLongPressCancel</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryLongPressCancel</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to secondary long press cancel events.

This method is called when a secondary long press gesture is cancelled before completion.
This can occur when the user starts a right-click and hold or two-finger long press but
then moves away from the widget, lifts too early, or when another gesture takes precedence.
It's useful for cleaning up any preparations made during the secondary long press down event.

Parameters:

- `onSecondaryLongPressCancel`: The callback to execute when a secondary long press is cancelled.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to secondary long press cancel events.

Example:

```dart
Container(
  child: Text('Advanced context menu'),
).onSecondaryLongPressCancel(() {
  print('Secondary long press cancelled');
  // Clean up context menu preparations
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onSecondaryLongPressCancel(
  VoidCallback onSecondaryLongPressCancel, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onSecondaryLongPressCancel: onSecondaryLongPressCancel,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onSecondaryLongPressDown() <Badge type="info" text="extension" /> {#onsecondarylongpressdown}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onSecondaryLongPressDown</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryLongPressDown</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to secondary long press down events.

This method is called when a secondary long press down event occurs (right-click and hold
or two-finger press and hold). It provides early notification that the user has started
a secondary long press gesture, which can be used for advanced context menu preparations
or specialized visual feedback.

Parameters:

- `onSecondaryLongPressDown`: The callback to execute when a secondary long press down occurs.
Provides [LongPressDownDetails](https://api.flutter.dev/flutter/gestures/LongPressDownDetails-class.html) with information about the press location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to secondary long press down events.

Example:

```dart
Container(
  child: Text('Right-click and hold'),
).onSecondaryLongPressDown((details) {
  print('Secondary long press starting at: ${details.localPosition}');
  // Prepare advanced context menu
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onSecondaryLongPressDown(
  GestureLongPressDownCallback onSecondaryLongPressDown, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onSecondaryLongPressDown: onSecondaryLongPressDown,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onSecondaryLongPressEnd() <Badge type="info" text="extension" /> {#onsecondarylongpressend}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onSecondaryLongPressEnd</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryLongPressEnd</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to secondary long press end events.

This method is called when a secondary long press gesture ends, providing detailed
information about how the gesture concluded. It's useful for implementing complex
secondary long press interactions with velocity or position-based completion logic.

Parameters:

- `onSecondaryLongPressEnd`: The callback to execute when a secondary long press ends.
Provides [LongPressEndDetails](https://api.flutter.dev/flutter/gestures/LongPressEndDetails-class.html) with information about the gesture end.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to secondary long press end events.

Example:

```dart
Container(
  child: Text('Secondary long press with details'),
).onSecondaryLongPressEnd((details) {
  print('Secondary long press ended at: ${details.localPosition}');
  // Handle detailed secondary long press completion
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onSecondaryLongPressEnd(
  GestureLongPressEndCallback onSecondaryLongPressEnd, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onSecondaryLongPressEnd: onSecondaryLongPressEnd,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onSecondaryLongPressMoveUpdate() <Badge type="info" text="extension" /> {#onsecondarylongpressmoveupdate}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onSecondaryLongPressMoveUpdate</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressMoveUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="param">onSecondaryLongPressMoveUpdate</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to secondary long press move update events.

This method is called when the user moves their finger during a secondary long press gesture
(right-click and hold drag or two-finger long press drag). It provides continuous updates
about finger position during the movement, enabling smooth drag operations that start with
a secondary long press.

Parameters:

- `onSecondaryLongPressMoveUpdate`: The callback to execute during secondary long press movement.
Provides [LongPressMoveUpdateDetails](https://api.flutter.dev/flutter/gestures/LongPressMoveUpdateDetails-class.html) with movement information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to secondary long press move update events.

Example:

```dart
Container(
  child: Text('Right-click and drag'),
).onSecondaryLongPressMoveUpdate((details) {
  print('Secondary long press moving to: ${details.localPosition}');
  // Update specialized drag position
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onSecondaryLongPressMoveUpdate(
  GestureLongPressMoveUpdateCallback onSecondaryLongPressMoveUpdate, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onSecondaryLongPressMoveUpdate: onSecondaryLongPressMoveUpdate,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onSecondaryLongPressStart() <Badge type="info" text="extension" /> {#onsecondarylongpressstart}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onSecondaryLongPressStart</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryLongPressStart</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to secondary long press start events.

This method is called when a secondary long press gesture is recognized and starts.
It provides detailed information about the gesture initiation and is useful for implementing
advanced drag-and-drop operations or specialized interactions that begin with a secondary
long press (right-click and hold or two-finger long press).

Parameters:

- `onSecondaryLongPressStart`: The callback to execute when a secondary long press starts.
Provides [LongPressStartDetails](https://api.flutter.dev/flutter/gestures/LongPressStartDetails-class.html) with information about the press location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to secondary long press start events.

Example:

```dart
Container(
  child: Text('Right-click drag me'),
).onSecondaryLongPressStart((details) {
  print('Secondary long press started at: ${details.localPosition}');
  // Begin specialized drag operation
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onSecondaryLongPressStart(
  GestureLongPressStartCallback onSecondaryLongPressStart, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onSecondaryLongPressStart: onSecondaryLongPressStart,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onSecondaryLongPressUp() <Badge type="info" text="extension" /> {#onsecondarylongpressup}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onSecondaryLongPressUp</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryLongPressUp</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to secondary long press up events.

This method is called when the user lifts their finger after a secondary long press gesture
(right-click and hold release or two-finger long press release). It's useful for completing
specialized drag operations or other interactions that were initiated by a secondary long press.

Parameters:

- `onSecondaryLongPressUp`: The callback to execute when a secondary long press up occurs.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to secondary long press up events.

Example:

```dart
Container(
  child: Text('Secondary long press action'),
).onSecondaryLongPressUp(() {
  print('Secondary long press released');
  // Complete specialized long press action
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onSecondaryLongPressUp(
  VoidCallback onSecondaryLongPressUp, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onSecondaryLongPressUp: onSecondaryLongPressUp,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onSecondaryTap() <Badge type="info" text="extension" /> {#onsecondarytap}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onSecondaryTap</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryTap</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to secondary tap gestures.

Secondary taps are typically right-clicks on desktop platforms or two-finger
taps on mobile devices. This is commonly used for context menus, alternative
actions, or secondary interactions that differ from the primary tap behavior.

Parameters:

- `onSecondaryTap`: The callback to execute when a secondary tap is completed.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to secondary tap gestures.

Example:

```dart
ListTile(
  title: Text('Right-click for options'),
).onSecondaryTap(() {
  showContextMenu();
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onSecondaryTap(
  VoidCallback onSecondaryTap, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onSecondaryTap: onSecondaryTap,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onSecondaryTapCancel() <Badge type="info" text="extension" /> {#onsecondarytapcancel}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onSecondaryTapCancel</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryTapCancel</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to secondary tap cancel events.

This method is called when a secondary tap gesture is cancelled before completion.
This can occur when the user starts a right-click or two-finger tap but then
moves away from the widget or when another gesture takes precedence.

Parameters:

- `onSecondaryTapCancel`: The callback to execute when a secondary tap is cancelled.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to secondary tap cancel events.

Example:

```dart
Container(
  child: Text('Right-click menu'),
).onSecondaryTapCancel(() {
  print('Secondary tap cancelled');
  // Clean up any context menu preparations
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onSecondaryTapCancel(
  VoidCallback onSecondaryTapCancel, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onSecondaryTapCancel: onSecondaryTapCancel,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onSecondaryTapDown() <Badge type="info" text="extension" /> {#onsecondarytapdown}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onSecondaryTapDown</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryTapDown</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to secondary tap down events.

This method is called when a secondary tap down event occurs (right-click press
or two-finger touch down). It's useful for providing immediate visual feedback
when the user initiates a secondary tap gesture, before the tap is completed.

Parameters:

- `onSecondaryTapDown`: The callback to execute when a secondary tap down occurs.
Provides [TapDownDetails](https://api.flutter.dev/flutter/gestures/TapDownDetails-class.html) with information about the tap location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to secondary tap down events.

Example:

```dart
Container(
  padding: EdgeInsets.all(8),
  child: Text('Right-click me'),
).onSecondaryTapDown((details) {
  print('Secondary tap down at: ${details.localPosition}');
  // Show visual feedback for right-click
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onSecondaryTapDown(
  GestureTapDownCallback onSecondaryTapDown, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onSecondaryTapDown: onSecondaryTapDown,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onSecondaryTapUp() <Badge type="info" text="extension" /> {#onsecondarytapup}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onSecondaryTapUp</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapUpDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onSecondaryTapUp</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to secondary tap up events.

This method is called when the user releases a secondary tap (right-click release
or two-finger touch up). It provides detailed information about where the tap
was released and is useful for implementing custom secondary tap behaviors.

Parameters:

- `onSecondaryTapUp`: The callback to execute when a secondary tap up occurs.
Provides [TapUpDetails](https://api.flutter.dev/flutter/gestures/TapUpDetails-class.html) with information about the tap location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to secondary tap up events.

Example:

```dart
Card(
  child: Text('Context menu item'),
).onSecondaryTapUp((details) {
  print('Secondary tap released at: ${details.localPosition}');
  // Handle context menu action completion
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onSecondaryTapUp(
  GestureTapUpCallback onSecondaryTapUp, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onSecondaryTapUp: onSecondaryTapUp,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTap() <Badge type="info" text="extension" /> {#ontap}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTap</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTap</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tap gestures.

This is a convenience method for the most common gesture - a simple tap.
It creates a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) with only the tap callback configured,
making it perfect for buttons, clickable cards, and other interactive elements.

Parameters:

- `onTap`: The callback to execute when the widget is tapped.
- `behavior`: How the gesture detector should behave during hit testing.
Defaults to null (uses Flutter's default behavior).
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tap gestures.

Example:

```dart
Container(
  padding: EdgeInsets.all(16),
  color: Colors.blue,
  child: Text('Tap me!'),
).onTap(() {
  print('Container was tapped!');
  // Handle tap action
});

// With custom behavior
Icon(Icons.favorite)
  .onTap(
    () => toggleFavorite(),
    behavior: HitTestBehavior.opaque,
  );
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTap(
  VoidCallback onTap, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTap: onTap,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTapCancel() <Badge type="info" text="extension" /> {#ontapcancel}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTapCancel</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTapCancel</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tap cancel events.

This method is called when a tap gesture is cancelled before completion.
This can happen when the user starts a tap but then drags their finger
away from the widget or when another gesture recognizer takes precedence.
It's useful for cleaning up any visual feedback or state changes that
were initiated during the tap down event.

Parameters:

- `onTapCancel`: The callback to execute when a tap gesture is cancelled.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tap cancel events.

Example:

```dart
Container(
  width: 100,
  height: 50,
  color: Colors.red,
  child: Text('Tap me'),
).onTapCancel(() {
  print('Tap was cancelled');
  // Reset any visual feedback or state
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTapCancel(
  VoidCallback onTapCancel, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTapCancel: onTapCancel,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTapDown() <Badge type="info" text="extension" /> {#ontapdown}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTapDown</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTapDown</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tap down events.

This method is useful when you need to respond immediately when the user
starts touching the widget, before they lift their finger. Common use cases
include showing visual feedback (like button press states) or starting
animations on touch down.

Parameters:

- `onTapDown`: The callback to execute when a tap down event occurs.
Provides [TapDownDetails](https://api.flutter.dev/flutter/gestures/TapDownDetails-class.html) with information about the tap location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tap down events.

Example:

```dart
Container(
  width: 100,
  height: 50,
  color: Colors.blue,
  child: Text('Press me'),
).onTapDown((details) {
  print('Tap down at: ${details.localPosition}');
  // Show press animation or visual feedback
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTapDown(
  GestureTapDownCallback onTapDown, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTapDown: onTapDown,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTapUp() <Badge type="info" text="extension" /> {#ontapup}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTapUp</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapUpDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTapUp</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tap up events.

This method is called when the user lifts their finger after a tap down event.
It's useful for implementing custom button behaviors or handling the completion
of a tap gesture with detailed information about the tap location.

Parameters:

- `onTapUp`: The callback to execute when a tap up event occurs.
Provides [TapUpDetails](https://api.flutter.dev/flutter/gestures/TapUpDetails-class.html) with information about the tap location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tap up events.

Example:

```dart
Container(
  width: 100,
  height: 50,
  color: Colors.green,
  child: Text('Release me'),
).onTapUp((details) {
  print('Tap released at: ${details.localPosition}');
  // Handle tap release, hide press animation
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTapUp(
  GestureTapUpCallback onTapUp, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTapUp: onTapUp,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTertiaryLongPress() <Badge type="info" text="extension" /> {#ontertiarylongpress}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTertiaryLongPress</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryLongPress</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tertiary long press gestures.

Tertiary long press gestures are triggered when the user performs a long press with the
tertiary button (middle-click and hold) or a three-finger long press on mobile devices.
This is useful for highly specialized interactions or advanced functionality that requires
a distinct gesture from primary and secondary long presses.

Parameters:

- `onTertiaryLongPress`: The callback to execute when a tertiary long press is completed.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tertiary long press gestures.

Example:

```dart
Container(
  child: Text('Middle-click and hold'),
).onTertiaryLongPress(() {
  print('Tertiary long press completed');
  // Show specialized feature menu
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTertiaryLongPress(
  VoidCallback onTertiaryLongPress, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTertiaryLongPress: onTertiaryLongPress,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTertiaryLongPressCancel() <Badge type="info" text="extension" /> {#ontertiarylongpresscancel}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTertiaryLongPressCancel</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryLongPressCancel</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tertiary long press cancel events.

This method is called when a tertiary long press gesture is cancelled before completion.
This can occur when the user starts a middle-click and hold or three-finger long press but
then moves away from the widget, lifts too early, or when another gesture takes precedence.
It's useful for cleaning up any preparations made during the tertiary long press down event.

Parameters:

- `onTertiaryLongPressCancel`: The callback to execute when a tertiary long press is cancelled.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tertiary long press cancel events.

Example:

```dart
Container(
  child: Text('Specialized feature'),
).onTertiaryLongPressCancel(() {
  print('Tertiary long press cancelled');
  // Clean up specialized feature preparations
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTertiaryLongPressCancel(
  VoidCallback onTertiaryLongPressCancel, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTertiaryLongPressCancel: onTertiaryLongPressCancel,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTertiaryLongPressDown() <Badge type="info" text="extension" /> {#ontertiarylongpressdown}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTertiaryLongPressDown</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryLongPressDown</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tertiary long press down events.

This method is called when a tertiary long press down event occurs (middle-click and hold
or three-finger press and hold). It provides early notification that the user has started
a tertiary long press gesture, which can be used for specialized feature preparations
or unique visual feedback.

Parameters:

- `onTertiaryLongPressDown`: The callback to execute when a tertiary long press down occurs.
Provides [LongPressDownDetails](https://api.flutter.dev/flutter/gestures/LongPressDownDetails-class.html) with information about the press location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tertiary long press down events.

Example:

```dart
Container(
  child: Text('Middle-click and hold'),
).onTertiaryLongPressDown((details) {
  print('Tertiary long press starting at: ${details.localPosition}');
  // Prepare specialized feature
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTertiaryLongPressDown(
  GestureLongPressDownCallback onTertiaryLongPressDown, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTertiaryLongPressDown: onTertiaryLongPressDown,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTertiaryLongPressEnd() <Badge type="info" text="extension" /> {#ontertiarylongpressend}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTertiaryLongPressEnd</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryLongPressEnd</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tertiary long press end events.

This method is called when a tertiary long press gesture ends, providing detailed
information about how the gesture concluded. It's useful for implementing complex
tertiary long press interactions with velocity or position-based completion logic
for highly specialized features.

Parameters:

- `onTertiaryLongPressEnd`: The callback to execute when a tertiary long press ends.
Provides [LongPressEndDetails](https://api.flutter.dev/flutter/gestures/LongPressEndDetails-class.html) with information about the gesture end.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tertiary long press end events.

Example:

```dart
Container(
  child: Text('Tertiary long press with details'),
).onTertiaryLongPressEnd((details) {
  print('Tertiary long press ended at: ${details.localPosition}');
  // Handle detailed tertiary long press completion
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTertiaryLongPressEnd(
  GestureLongPressEndCallback onTertiaryLongPressEnd, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTertiaryLongPressEnd: onTertiaryLongPressEnd,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTertiaryLongPressMoveUpdate() <Badge type="info" text="extension" /> {#ontertiarylongpressmoveupdate}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTertiaryLongPressMoveUpdate</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressMoveUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="param">onTertiaryLongPressMoveUpdate</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tertiary long press move update events.

This method is called when the user moves their finger during a tertiary long press gesture
(middle-click and hold drag or three-finger long press drag). It provides continuous updates
about finger position during the movement, enabling smooth drag operations that start with
a tertiary long press.

Parameters:

- `onTertiaryLongPressMoveUpdate`: The callback to execute during tertiary long press movement.
Provides [LongPressMoveUpdateDetails](https://api.flutter.dev/flutter/gestures/LongPressMoveUpdateDetails-class.html) with movement information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tertiary long press move update events.

Example:

```dart
Container(
  child: Text('Middle-click and drag'),
).onTertiaryLongPressMoveUpdate((details) {
  print('Tertiary long press moving to: ${details.localPosition}');
  // Update unique drag position
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTertiaryLongPressMoveUpdate(
  GestureLongPressMoveUpdateCallback onTertiaryLongPressMoveUpdate, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTertiaryLongPressMoveUpdate: onTertiaryLongPressMoveUpdate,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTertiaryLongPressStart() <Badge type="info" text="extension" /> {#ontertiarylongpressstart}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTertiaryLongPressStart</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">LongPressStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryLongPressStart</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tertiary long press start events.

This method is called when a tertiary long press gesture is recognized and starts.
It provides detailed information about the gesture initiation and is useful for implementing
highly specialized drag-and-drop operations or unique interactions that begin with a tertiary
long press (middle-click and hold or three-finger long press).

Parameters:

- `onTertiaryLongPressStart`: The callback to execute when a tertiary long press starts.
Provides [LongPressStartDetails](https://api.flutter.dev/flutter/gestures/LongPressStartDetails-class.html) with information about the press location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tertiary long press start events.

Example:

```dart
Container(
  child: Text('Middle-click drag me'),
).onTertiaryLongPressStart((details) {
  print('Tertiary long press started at: ${details.localPosition}');
  // Begin unique drag operation
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTertiaryLongPressStart(
  GestureLongPressStartCallback onTertiaryLongPressStart, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTertiaryLongPressStart: onTertiaryLongPressStart,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTertiaryLongPressUp() <Badge type="info" text="extension" /> {#ontertiarylongpressup}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTertiaryLongPressUp</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryLongPressUp</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tertiary long press up events.

This method is called when the user lifts their finger after a tertiary long press gesture
(middle-click and hold release or three-finger long press release). It's useful for completing
highly specialized drag operations or other unique interactions that were initiated by a
tertiary long press.

Parameters:

- `onTertiaryLongPressUp`: The callback to execute when a tertiary long press up occurs.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tertiary long press up events.

Example:

```dart
Container(
  child: Text('Tertiary long press action'),
).onTertiaryLongPressUp(() {
  print('Tertiary long press released');
  // Complete unique long press action
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTertiaryLongPressUp(
  VoidCallback onTertiaryLongPressUp, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTertiaryLongPressUp: onTertiaryLongPressUp,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTertiaryTapCancel() <Badge type="info" text="extension" /> {#ontertiarytapcancel}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTertiaryTapCancel</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryTapCancel</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tertiary tap cancel events.

This method is called when a tertiary tap gesture is cancelled before completion.
This can occur when the user starts a middle-click or three-finger tap but then
moves away from the widget or when another gesture takes precedence.

Parameters:

- `onTertiaryTapCancel`: The callback to execute when a tertiary tap is cancelled.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tertiary tap cancel events.

Example:

```dart
Container(
  child: Text('Middle-click feature'),
).onTertiaryTapCancel(() {
  print('Tertiary tap cancelled');
  // Clean up any middle-click preparations
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTertiaryTapCancel(
  VoidCallback onTertiaryTapCancel, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTertiaryTapCancel: onTertiaryTapCancel,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTertiaryTapDown() <Badge type="info" text="extension" /> {#ontertiarytapdown}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTertiaryTapDown</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryTapDown</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tertiary tap down events.

Tertiary taps are typically middle-clicks on desktop platforms or three-finger
taps on mobile devices. This method is called when the tertiary tap down event
occurs, useful for providing immediate feedback for specialized interactions.

Parameters:

- `onTertiaryTapDown`: The callback to execute when a tertiary tap down occurs.
Provides [TapDownDetails](https://api.flutter.dev/flutter/gestures/TapDownDetails-class.html) with information about the tap location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tertiary tap down events.

Example:

```dart
Container(
  child: Text('Middle-click me'),
).onTertiaryTapDown((details) {
  print('Tertiary tap down at: ${details.localPosition}');
  // Handle middle-click press feedback
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTertiaryTapDown(
  GestureTapDownCallback onTertiaryTapDown, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTertiaryTapDown: onTertiaryTapDown,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onTertiaryTapUp() <Badge type="info" text="extension" /> {#ontertiarytapup}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onTertiaryTapUp</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">TapUpDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onTertiaryTapUp</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to tertiary tap up events.

This method is called when the user releases a tertiary tap (middle-click release
or three-finger touch up). It provides detailed information about where the tap
was released and is useful for implementing specialized tertiary interactions.

Parameters:

- `onTertiaryTapUp`: The callback to execute when a tertiary tap up occurs.
Provides [TapUpDetails](https://api.flutter.dev/flutter/gestures/TapUpDetails-class.html) with information about the tap location.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to tertiary tap up events.

Example:

```dart
Text('Middle-click action')
  .onTertiaryTapUp((details) {
    print('Tertiary tap released at: ${details.localPosition}');
    // Handle middle-click action completion
  });
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onTertiaryTapUp(
  GestureTapUpCallback onTertiaryTapUp, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onTertiaryTapUp: onTertiaryTapUp,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onVerticalDragCancel() <Badge type="info" text="extension" /> {#onverticaldragcancel}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onVerticalDragCancel</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onVerticalDragCancel</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to vertical drag cancel events.

This method is called when a vertical drag gesture is cancelled before completion.
This can occur when another gesture recognizer takes precedence or when the system
interrupts the drag. It's useful for cleaning up any state or visual feedback that
was established during the vertical drag operation.

Parameters:

- `onVerticalDragCancel`: The callback to execute when a vertical drag is cancelled.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to vertical drag cancel events.

Example:

```dart
Container(
  height: 200,
  child: Text('Vertical drag feature'),
).onVerticalDragCancel(() {
  print('Vertical drag cancelled');
  // Reset vertical drag state
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onVerticalDragCancel(
  VoidCallback onVerticalDragCancel, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onVerticalDragCancel: onVerticalDragCancel,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onVerticalDragDown() <Badge type="info" text="extension" /> {#onverticaldragdown}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onVerticalDragDown</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragDownDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onVerticalDragDown</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to vertical drag down events.

This method is called when a vertical drag gesture begins. Vertical drag gestures
are constrained to move only in the vertical direction (up and down). This is useful
for implementing scrollable lists, sliders, or other UI elements that should only
respond to vertical movement.

Parameters:

- `onVerticalDragDown`: The callback to execute when a vertical drag down occurs.
Provides [DragDownDetails](https://api.flutter.dev/flutter/gestures/DragDownDetails-class.html) with information about the initial touch position.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to vertical drag down events.

Example:

```dart
Container(
  height: 200,
  child: Text('Drag vertically'),
).onVerticalDragDown((details) {
  print('Vertical drag started at: ${details.localPosition}');
  // Initialize vertical drag state
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onVerticalDragDown(
  GestureDragDownCallback onVerticalDragDown, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onVerticalDragDown: onVerticalDragDown,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onVerticalDragEnd() <Badge type="info" text="extension" /> {#onverticaldragend}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onVerticalDragEnd</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragEndDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onVerticalDragEnd</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to vertical drag end events.

This method is called when a vertical drag gesture ends. It provides information
about the final velocity and position, which is useful for implementing momentum
scrolling, snap-to-position behavior, or other physics-based interactions that
should continue after the user lifts their finger.

Parameters:

- `onVerticalDragEnd`: The callback to execute when a vertical drag ends.
Provides [DragEndDetails](https://api.flutter.dev/flutter/gestures/DragEndDetails-class.html) with velocity and position information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to vertical drag end events.

Example:

```dart
Container(
  height: 200,
  child: Text('Flick me vertically'),
).onVerticalDragEnd((details) {
  print('Vertical drag ended with velocity: ${details.velocity.pixelsPerSecond.dy}');
  // Apply momentum scrolling
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onVerticalDragEnd(
  GestureDragEndCallback onVerticalDragEnd, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onVerticalDragEnd: onVerticalDragEnd,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onVerticalDragStart() <Badge type="info" text="extension" /> {#onverticaldragstart}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onVerticalDragStart</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragStartDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onVerticalDragStart</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to vertical drag start events.

This method is called when a vertical drag gesture is recognized and starts moving.
It provides detailed information about the drag initiation and is useful for setting up
the initial state for vertical scrolling, sliding, or other vertical movement interactions.

Parameters:

- `onVerticalDragStart`: The callback to execute when a vertical drag starts.
Provides [DragStartDetails](https://api.flutter.dev/flutter/gestures/DragStartDetails-class.html) with information about the drag start position.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to vertical drag start events.

Example:

```dart
Container(
  height: 200,
  child: Text('Vertical slider'),
).onVerticalDragStart((details) {
  print('Vertical drag started at: ${details.localPosition}');
  // Begin vertical drag operation
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onVerticalDragStart(
  GestureDragStartCallback onVerticalDragStart, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onVerticalDragStart: onVerticalDragStart,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### onVerticalDragUpdate() <Badge type="info" text="extension" /> {#onverticaldragupdate}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">GestureDetector</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">onVerticalDragUpdate</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">DragUpdateDetails</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">details</span></span><span class="member-signature-token">)</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onVerticalDragUpdate</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">HitTestBehavior</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">behavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">excludeFromSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">dragStartBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DragStartBehavior.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollCausesScale</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">trackpadScrollToScaleFactor</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= kDefaultTrackpadScrollToScaleFactor,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Set</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">PointerDeviceKind</span></span><span class="member-signature-token">&gt;?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">supportedDevices</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) that responds to vertical drag update events.

This method is called continuously as the user drags their finger vertically across
the screen. It provides real-time updates about the vertical movement, making it
perfect for implementing smooth vertical scrolling, sliders, or progress indicators
that respond to vertical gestures.

Parameters:

- `onVerticalDragUpdate`: The callback to execute during vertical drag movement.
Provides [DragUpdateDetails](https://api.flutter.dev/flutter/gestures/DragUpdateDetails-class.html) with delta and position information.
- `behavior`: How the gesture detector should behave during hit testing.
- `excludeFromSemantics`: Whether to exclude from semantic tree. Defaults to false.
- `dragStartBehavior`: When drag gestures should start. Defaults to [DragStartBehavior.start](https://api.flutter.dev/flutter/gestures/DragStartBehavior.html).
- `trackpadScrollCausesScale`: Whether trackpad scrolling causes scaling. Defaults to false.
- `trackpadScrollToScaleFactor`: Scale factor for trackpad scroll conversion.
- `supportedDevices`: Set of supported pointer device kinds.

Returns a [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html) widget that responds to vertical drag update events.

Example:

```dart
Container(
  height: 200,
  child: Text('Scroll me vertically'),
).onVerticalDragUpdate((details) {
  print('Vertical drag delta: ${details.delta.dy}');
  // Update vertical scroll position
});
```

*Available on Widget, provided by the WidgetOnGestureExtension extension*

:::details Implementation
```dart
GestureDetector onVerticalDragUpdate(
  GestureDragUpdateCallback onVerticalDragUpdate, {
  HitTestBehavior? behavior,
  bool excludeFromSemantics = false,
  DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  bool trackpadScrollCausesScale = false,
  Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
  Set<PointerDeviceKind>? supportedDevices,
}) {
  return GestureDetector(
    onVerticalDragUpdate: onVerticalDragUpdate,
    behavior: behavior,
    excludeFromSemantics: excludeFromSemantics,
    dragStartBehavior: dragStartBehavior,
    trackpadScrollCausesScale: trackpadScrollCausesScale,
    trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
    supportedDevices: supportedDevices,
    child: this,
  );
}
```
:::

### opacity() <Badge type="info" text="extension" /> {#opacity}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Opacity</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">opacity</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">opacity</span></span><span class="member-signature-token">, {</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alwaysIncludeSemantics</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">})</span></span></div></div>

Applies the specified opacity to the widget.

Creates an [Opacity](https://api.flutter.dev/flutter/widgets/Opacity-class.html) widget that makes the child partially transparent.
This is the base method that other opacity methods in this extension use internally.

The opacity value should be between 0.0 (completely transparent) and 1.0 (completely opaque).
Values outside this range will be clamped.

Parameters:

- `opacity`: The opacity level (0.0 to 1.0).
- `alwaysIncludeSemantics`: Whether to include semantics information even when
the widget is completely transparent. Defaults to false.

Returns an [Opacity](https://api.flutter.dev/flutter/widgets/Opacity-class.html) widget containing this widget as its child.

Example:

```dart
Container(
  width: 100,
  height: 100,
  color: Colors.blue,
).opacity(0.7); // 70% opacity
```

*Available on Widget, provided by the OpacityWidgetExtension extension*

:::details Implementation
```dart
Opacity opacity(double opacity, {bool alwaysIncludeSemantics = false}) {
  assert(opacity >= 0.0 && opacity <= 1.0,
      'Opacity must be between 0.0 and 1.0');
  return Opacity(
    opacity: opacity,
    alwaysIncludeSemantics: alwaysIncludeSemantics,
    child: this,
  );
}
```
:::

### opacityHalf() <Badge type="info" text="extension" /> {#opacityhalf}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Opacity</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">opacityHalf</span></span><span class="member-signature-token">()</span></span></div></div>

Applies 50% opacity to the widget.

This is a convenience method equivalent to calling `opacity(0.5)`.
Commonly used for creating semi-transparent overlays or disabled states.

Returns an [Opacity](https://api.flutter.dev/flutter/widgets/Opacity-class.html) widget with 50% opacity.

Example:

```dart
Icon(Icons.star)
  .opacityHalf(); // Creates a semi-transparent star icon
```

*Available on Widget, provided by the OpacityWidgetExtension extension*

:::details Implementation
```dart
Opacity opacityHalf() => opacity(0.5);
```
:::

### opacityInvisible() <Badge type="info" text="extension" /> {#opacityinvisible}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Opacity</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">opacityInvisible</span></span><span class="member-signature-token">()</span></span></div></div>

Makes the widget invisible.

This is an alias for [opacityZero](https://pub.dev/documentation/exui/1.0.11/exui/OpacityWidgetExtension/opacityZero.html) that provides semantic clarity when
the intent is to make something invisible while preserving layout space.

Returns an [Opacity](https://api.flutter.dev/flutter/widgets/Opacity-class.html) widget with 0% opacity.

Example:

```dart
Widget buildConditionalContent() {
  return shouldShow
    ? Text('Visible content')
    : Text('Hidden content').opacityInvisible();
}
```

*Available on Widget, provided by the OpacityWidgetExtension extension*

:::details Implementation
```dart
Opacity opacityInvisible() => opacityZero();
```
:::

### opacityPercent() <Badge type="info" text="extension" /> {#opacitypercent}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Opacity</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">opacityPercent</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">percent</span></span><span class="member-signature-token">)</span></span></div></div>

Applies opacity using a percentage value.

This is a convenience method that converts a percentage (0-100) to an opacity
value (0.0-1.0). Useful when working with percentage-based opacity values.

Parameters:

- `percent`: The opacity percentage (0 to 100).

Returns an [Opacity](https://api.flutter.dev/flutter/widgets/Opacity-class.html) widget with the calculated opacity.

Example:

```dart
Text('Semi-transparent text')
  .opacityPercent(75); // 75% opacity (equivalent to 0.75)
```

*Available on Widget, provided by the OpacityWidgetExtension extension*

:::details Implementation
```dart
Opacity opacityPercent(double percent) => opacity(percent &#47; 100);
```
:::

### opacityQuarter() <Badge type="info" text="extension" /> {#opacityquarter}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Opacity</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">opacityQuarter</span></span><span class="member-signature-token">()</span></span></div></div>

Applies 25% opacity to the widget.

This is a convenience method equivalent to calling `opacity(0.25)`.
Useful for creating subtle background elements or very faded content.

Returns an [Opacity](https://api.flutter.dev/flutter/widgets/Opacity-class.html) widget with 25% opacity.

Example:

```dart
Image.asset('watermark.png')
  .opacityQuarter(); // Creates a subtle watermark
```

*Available on Widget, provided by the OpacityWidgetExtension extension*

:::details Implementation
```dart
Opacity opacityQuarter() => opacity(0.25);
```
:::

### opacityTransparent() <Badge type="info" text="extension" /> {#opacitytransparent}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Opacity</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">opacityTransparent</span></span><span class="member-signature-token">()</span></span></div></div>

Makes the widget completely transparent.

This is an alias for [opacityZero](https://pub.dev/documentation/exui/1.0.11/exui/OpacityWidgetExtension/opacityZero.html) that provides semantic clarity when
the intent is to make something transparent.

Returns an [Opacity](https://api.flutter.dev/flutter/widgets/Opacity-class.html) widget with 0% opacity.

Example:

```dart
Container(color: Colors.red)
  .opacityTransparent(); // Transparent container
```

*Available on Widget, provided by the OpacityWidgetExtension extension*

:::details Implementation
```dart
Opacity opacityTransparent() => opacityZero();
```
:::

### opacityZero() <Badge type="info" text="extension" /> {#opacityzero}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Opacity</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">opacityZero</span></span><span class="member-signature-token">()</span></span></div></div>

Makes the widget completely transparent (0% opacity).

This is a convenience method equivalent to calling `opacity(0.0)`.
The widget will be invisible but still take up space in the layout.

Returns an [Opacity](https://api.flutter.dev/flutter/widgets/Opacity-class.html) widget with 0% opacity.

Example:

```dart
Text('Hidden text')
  .opacityZero(); // Text is invisible but space is preserved
```

*Available on Widget, provided by the OpacityWidgetExtension extension*

:::details Implementation
```dart
Opacity opacityZero() => opacity(0);
```
:::

### orangeAccentBox() <Badge type="info" text="extension" /> {#orangeaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">orangeAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in an orange accent colored box.

Uses [Colors.orangeAccent](https://api.flutter.dev/flutter/material/Colors/orangeAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of orange.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with orange accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox orangeAccentBox() => coloredBox(Colors.orangeAccent);
```
:::

### orangeAccentBox() <Badge type="info" text="extension" /> {#orangeaccentbox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">orangeAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with active orange color.

Uses [CupertinoColors.activeOrange](https://api.flutter.dev/flutter/cupertino/CupertinoColors/activeOrange-constant.html) which is a more vibrant orange
typically used for active states, selected items, or emphasized elements.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with active orange background.

Example:

```dart
Text('Hot Deal').orangeAccentBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox orangeAccentBox() => coloredBox(CupertinoColors.activeOrange);
```
:::

### orangeBox() <Badge type="info" text="extension" /> {#orangebox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">orangeBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in an orange colored box.

Uses [Colors.orange](https://api.flutter.dev/flutter/material/Colors/orange-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with orange background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox orangeBox() => coloredBox(Colors.orange);
```
:::

### orangeBox() <Badge type="info" text="extension" /> {#orangebox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">orangeBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with system orange color.

Uses [CupertinoColors.systemOrange](https://api.flutter.dev/flutter/cupertino/CupertinoColors/systemOrange-constant.html) which adapts to light/dark mode.
This is the standard orange color used throughout iOS interfaces,
often used for secondary actions or warm accent colors.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with orange background.

Example:

```dart
Text('Featured').orangeBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox orangeBox() => coloredBox(CupertinoColors.systemOrange);
```
:::

### outlinedButton() <Badge type="info" text="extension" /> {#outlinedbutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">OutlinedButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">outlinedButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHover</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">ButtonStyle</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">style</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">WidgetStatesController</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">statesController</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates an [OutlinedButton](https://api.flutter.dev/flutter/material/OutlinedButton-class.html) with this widget as its child.

Outlined buttons are medium-emphasis buttons. They contain actions that are
important but aren't the primary action in an app. Outlined buttons pair
well with filled buttons to indicate an alternative, secondary action.

Parameters:

- `onPressed` - Called when the button is pressed. If null, button is disabled.
- `onLongPress` - Called when the button is long-pressed.
- `onHover` - Called when a pointer enters or exits the button area.
- `onFocusChange` - Called when the focus state of the button changes.
- `style` - Customizes the button's appearance and behavior.
- `focusNode` - An optional focus node to use as the focus node for this widget.
- `autofocus` - Whether this widget should focus itself if nothing else is focused.
- `clipBehavior` - The content will be clipped (or not) according to this option.
- `statesController` - Represents the interactive state of the button.

Returns an [OutlinedButton](https://api.flutter.dev/flutter/material/OutlinedButton-class.html) with this widget as its child.

Example:

```dart
Text('Cancel')
  .outlinedButton(
    onPressed: () => Navigator.pop(context),
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: Colors.red),
    ),
  )
```

See also:

- [OutlinedButton](https://api.flutter.dev/flutter/material/OutlinedButton-class.html), the underlying Material Design outlined button.
- [outlinedIconButton](https://pub.dev/documentation/exui/1.0.11/material/ElevatedButtonWidgetExtensions/outlinedIconButton.html), for creating outlined buttons with icons.

*Available on Widget, provided by the ElevatedButtonWidgetExtensions extension*

:::details Implementation
```dart
OutlinedButton outlinedButton({
  required void Function()? onPressed,
  void Function()? onLongPress,
  void Function(bool)? onHover,
  void Function(bool)? onFocusChange,
  ButtonStyle? style,
  FocusNode? focusNode,
  bool autofocus = false,
  Clip? clipBehavior,
  WidgetStatesController? statesController,
}) =>
    OutlinedButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      child: this,
    );
```
:::

### outlinedIconButton() <Badge type="info" text="extension" /> {#outlinediconbutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">OutlinedButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">outlinedIconButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHover</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">ButtonStyle</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">style</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">WidgetStatesController</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">statesController</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Widget</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">icon</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">IconAlignment</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">iconAlignment</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates an [OutlinedButton.icon](https://api.flutter.dev/flutter/material/OutlinedButton/OutlinedButton.icon.html) with this widget as its label and an optional icon.

This creates an outlined button with both an icon and a label. The icon and label
are arranged horizontally according to the `iconAlignment` parameter.

Parameters:

- `onPressed` - Called when the button is pressed. If null, button is disabled.
- `onLongPress` - Called when the button is long-pressed.
- `onHover` - Called when a pointer enters or exits the button area.
- `onFocusChange` - Called when the focus state of the button changes.
- `style` - Customizes the button's appearance and behavior.
- `focusNode` - An optional focus node to use as the focus node for this widget.
- `autofocus` - Whether this widget should focus itself if nothing else is focused.
- `clipBehavior` - The content will be clipped (or not) according to this option.
- `statesController` - Represents the interactive state of the button.
- `icon` - The icon widget to display. If null, no icon is shown.
- `iconAlignment` - How to align the icon relative to the label.

Returns an [OutlinedButton](https://api.flutter.dev/flutter/material/OutlinedButton-class.html) configured as an icon button with this widget as the label.

Example:

```dart
Text('Edit')
  .outlinedIconButton(
    onPressed: () => editItem(),
    icon: Icon(Icons.edit),
  )
```

See also:

- [OutlinedButton.icon](https://api.flutter.dev/flutter/material/OutlinedButton/OutlinedButton.icon.html), the underlying Material Design outlined icon button.
- [outlinedButton](https://pub.dev/documentation/exui/1.0.11/material/ElevatedButtonWidgetExtensions/outlinedButton.html), for creating outlined buttons without icons.

*Available on Widget, provided by the ElevatedButtonWidgetExtensions extension*

:::details Implementation
```dart
OutlinedButton outlinedIconButton({
  required void Function()? onPressed,
  void Function()? onLongPress,
  void Function(bool)? onHover,
  void Function(bool)? onFocusChange,
  ButtonStyle? style,
  FocusNode? focusNode,
  bool autofocus = false,
  Clip? clipBehavior,
  WidgetStatesController? statesController,
  Widget? icon,
  IconAlignment? iconAlignment,
}) =>
    OutlinedButton.icon(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      icon: icon,
      label: this,
      iconAlignment: iconAlignment,
    );
```
:::

### padding() <Badge type="info" text="extension" /> {#padding}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Padding</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">padding</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">EdgeInsets</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">padding</span></span><span class="member-signature-token">)</span></span></div></div>

Applies the specified [EdgeInsets](https://api.flutter.dev/flutter/painting/EdgeInsets-class.html) padding to the widget.

This is the base method that wraps the widget in a [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) widget
with the provided [EdgeInsets](https://api.flutter.dev/flutter/painting/EdgeInsets-class.html). Other padding methods in this extension
use this method internally.

Parameters:

- `padding`: The [EdgeInsets](https://api.flutter.dev/flutter/painting/EdgeInsets-class.html) to apply around the widget.

Returns a [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) widget containing this widget as its child.

Example:

```dart
Text('Custom padding')
  .padding(EdgeInsets.fromLTRB(10, 20, 30, 40));
```

*Available on Widget, provided by the PaddingExtensions extension*

:::details Implementation
```dart
Padding padding(EdgeInsets padding) => Padding(padding: padding, child: this);
```
:::

### paddingAll() <Badge type="info" text="extension" /> {#paddingall}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Padding</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">paddingAll</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">padding</span></span><span class="member-signature-token">)</span></span></div></div>

Applies uniform padding to all sides of the widget.

Creates equal padding on the left, top, right, and bottom sides.
This is one of the most commonly used padding methods for creating
consistent spacing around content.

Parameters:

- `padding`: The amount of padding to apply to all sides.

Returns a [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) widget with uniform padding on all sides.

Example:

```dart
Icon(Icons.star)
  .paddingAll(12.0); // Adds 12px padding on all sides
```

*Available on Widget, provided by the PaddingExtensions extension*

:::details Implementation
```dart
Padding paddingAll(double padding) => this.padding(EdgeInsets.all(padding));
```
:::

### paddingBottom() <Badge type="info" text="extension" /> {#paddingbottom}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Padding</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">paddingBottom</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">bottom</span></span><span class="member-signature-token">)</span></span></div></div>

Applies padding to the bottom side only.

Adds spacing to the bottom side while leaving other sides unchanged.
Useful for creating bottom margins or spacing from footers.

Parameters:

- `bottom`: The amount of padding to apply to the bottom side.

Returns a [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) widget with bottom-side padding only.

Example:

```dart
Text('Content with bottom spacing').paddingBottom(12);
```

*Available on Widget, provided by the PaddingExtensions extension*

:::details Implementation
```dart
Padding paddingBottom(double bottom) => paddingOnly(bottom: bottom);
```
:::

### paddingHorizontal() <Badge type="info" text="extension" /> {#paddinghorizontal}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Padding</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">paddingHorizontal</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">horizontal</span></span><span class="member-signature-token">)</span></span></div></div>

Applies padding to the left and right sides only.

This is a convenience method equivalent to calling
`paddingSymmetric(horizontal: horizontal)`. Useful for adding
horizontal spacing while maintaining vertical alignment.

Parameters:

- `horizontal`: The amount of padding to apply to both left and right sides.

Returns a [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) widget with horizontal padding only.

Example:

```dart
ListView.builder(
  itemBuilder: (context, index) => ListTile(
    title: Text('Item $index'),
  ).paddingHorizontal(16),
);
```

*Available on Widget, provided by the PaddingExtensions extension*

:::details Implementation
```dart
Padding paddingHorizontal(double horizontal) =>
    paddingSymmetric(horizontal: horizontal);
```
:::

### paddingLeft() <Badge type="info" text="extension" /> {#paddingleft}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Padding</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">paddingLeft</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">left</span></span><span class="member-signature-token">)</span></span></div></div>

Applies padding to the left side only.

Adds spacing to the left side while leaving other sides unchanged.
Useful for indentation or creating left margins.

Parameters:

- `left`: The amount of padding to apply to the left side.

Returns a [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) widget with left-side padding only.

Example:

```dart
Text('Indented text').paddingLeft(24);
```

*Available on Widget, provided by the PaddingExtensions extension*

:::details Implementation
```dart
Padding paddingLeft(double left) => paddingOnly(left: left);
```
:::

### paddingOnly() <Badge type="info" text="extension" /> {#paddingonly}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Padding</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">paddingOnly</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">left</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">top</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">right</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">bottom</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Applies specific padding to individual sides of the widget.

Allows fine-grained control over padding by specifying different
values for each side. Any unspecified sides default to 0.

Parameters:

- `left`: Padding for the left side. Defaults to 0.
- `top`: Padding for the top side. Defaults to 0.
- `right`: Padding for the right side. Defaults to 0.
- `bottom`: Padding for the bottom side. Defaults to 0.

Returns a [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) widget with the specified padding on each side.

Example:

```dart
Text('Asymmetric padding')
  .paddingOnly(left: 16, top: 8, right: 16, bottom: 24);
```

*Available on Widget, provided by the PaddingExtensions extension*

:::details Implementation
```dart
Padding paddingOnly({
  double left = 0,
  double top = 0,
  double right = 0,
  double bottom = 0,
}) =>
    padding(
      EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
    );
```
:::

### paddingRight() <Badge type="info" text="extension" /> {#paddingright}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Padding</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">paddingRight</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">right</span></span><span class="member-signature-token">)</span></span></div></div>

Applies padding to the right side only.

Adds spacing to the right side while leaving other sides unchanged.
Useful for creating right margins or spacing from right-aligned content.

Parameters:

- `right`: The amount of padding to apply to the right side.

Returns a [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) widget with right-side padding only.

Example:

```dart
Text('Right-spaced text').paddingRight(16);
```

*Available on Widget, provided by the PaddingExtensions extension*

:::details Implementation
```dart
Padding paddingRight(double right) => paddingOnly(right: right);
```
:::

### paddingSymmetric() <Badge type="info" text="extension" /> {#paddingsymmetric}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Padding</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">paddingSymmetric</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">horizontal</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">vertical</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">})</span></span></div></div>

Applies symmetric padding to horizontal and vertical axes.

Creates padding that is symmetric along both axes - the same padding
is applied to left/right sides and top/bottom sides respectively.
This is useful for creating balanced layouts.

Parameters:

- `horizontal`: Padding for left and right sides. Defaults to 0.
- `vertical`: Padding for top and bottom sides. Defaults to 0.

Returns a [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) widget with symmetric padding.

Example:

```dart
Card(
  child: Text('Card content')
    .paddingSymmetric(horizontal: 16, vertical: 12),
);
```

*Available on Widget, provided by the PaddingExtensions extension*

:::details Implementation
```dart
Padding paddingSymmetric({
  double horizontal = 0,
  double vertical = 0,
}) =>
    padding(
      EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
    );
```
:::

### paddingTop() <Badge type="info" text="extension" /> {#paddingtop}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Padding</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">paddingTop</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">top</span></span><span class="member-signature-token">)</span></span></div></div>

Applies padding to the top side only.

Adds spacing to the top side while leaving other sides unchanged.
Useful for creating top margins or spacing from headers.

Parameters:

- `top`: The amount of padding to apply to the top side.

Returns a [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) widget with top-side padding only.

Example:

```dart
Text('Content with top spacing').paddingTop(20);
```

*Available on Widget, provided by the PaddingExtensions extension*

:::details Implementation
```dart
Padding paddingTop(double top) => paddingOnly(top: top);
```
:::

### paddingVertical() <Badge type="info" text="extension" /> {#paddingvertical}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Padding</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">paddingVertical</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">vertical</span></span><span class="member-signature-token">)</span></span></div></div>

Applies padding to the top and bottom sides only.

This is a convenience method equivalent to calling
`paddingSymmetric(vertical: vertical)`. Useful for adding
vertical spacing while maintaining horizontal alignment.

Parameters:

- `vertical`: The amount of padding to apply to both top and bottom sides.

Returns a [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html) widget with vertical padding only.

Example:

```dart
Column(
  children: [
    Text('Title').paddingVertical(8),
    Text('Subtitle').paddingVertical(4),
  ],
);
```

*Available on Widget, provided by the PaddingExtensions extension*

:::details Implementation
```dart
Padding paddingVertical(double vertical) =>
    paddingSymmetric(vertical: vertical);
```
:::

### pinkAccentBox() <Badge type="info" text="extension" /> {#pinkaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">pinkAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a pink accent colored box.

Uses [Colors.pinkAccent](https://api.flutter.dev/flutter/material/Colors/pinkAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of pink.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with pink accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox pinkAccentBox() => coloredBox(Colors.pinkAccent);
```
:::

### pinkBox() <Badge type="info" text="extension" /> {#pinkbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">pinkBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a pink colored box.

Uses [Colors.pink](https://api.flutter.dev/flutter/material/Colors/pink-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with pink background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox pinkBox() => coloredBox(Colors.pink);
```
:::

### pinkBox() <Badge type="info" text="extension" /> {#pinkbox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">pinkBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with system pink color.

Uses [CupertinoColors.systemPink](https://api.flutter.dev/flutter/cupertino/CupertinoColors/systemPink-constant.html) which adapts to light/dark mode.
This is the standard pink color used throughout iOS interfaces,
often used for health-related features or feminine-coded elements.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with pink background.

Example:

```dart
Icon(CupertinoIcons.heart_fill).pinkBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox pinkBox() => coloredBox(CupertinoColors.systemPink);
```
:::

### positioned() <Badge type="info" text="extension" /> {#positioned}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Positioned</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">positioned</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">left</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">top</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">right</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">bottom</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">width</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">height</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget in a [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html) widget with the specified positioning constraints.

Creates a [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html) widget that controls where the child is positioned within
its [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) parent. You can specify positioning from any combination of edges,
as well as explicit width and height constraints.

**Positioning Logic:**

- If both `left` and `right` are specified, width is determined by the space between them
- If both `top` and `bottom` are specified, height is determined by the space between them
- `width` and `height` can override the calculated dimensions
- Unspecified edges allow the widget to size itself naturally in that dimension

Parameters:

- `left`: Distance from the left edge of the stack. If null, left edge is unconstrained.
- `top`: Distance from the top edge of the stack. If null, top edge is unconstrained.
- `right`: Distance from the right edge of the stack. If null, right edge is unconstrained.
- `bottom`: Distance from the bottom edge of the stack. If null, bottom edge is unconstrained.
- `width`: Explicit width constraint. If null, width is determined by positioning or child.
- `height`: Explicit height constraint. If null, height is determined by positioning or child.

Returns a [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html) widget containing this widget as its child.

Example:

```dart
Stack(
  children: [
    // Positioned 20px from left and top
    Container(width: 50, height: 50, color: Colors.red)
      .positioned(left: 20, top: 20),

    // Stretched between left and right edges, 10px from top
    Container(height: 30, color: Colors.blue)
      .positioned(left: 0, right: 0, top: 10),

    // Centered with explicit size
    Text('Centered')
      .positioned(
        left: 50, right: 50, top: 100, bottom: 100,
        width: 100, height: 50,
      ),
  ],
);
```

*Available on Widget, provided by the PositionedWidgetExtensions extension*

:::details Implementation
```dart
Positioned positioned({
  double? left,
  double? top,
  double? right,
  double? bottom,
  double? width,
  double? height,
}) =>
    Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      child: this,
    );
```
:::

### positionedBottom() <Badge type="info" text="extension" /> {#positionedbottom}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Positioned</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">positionedBottom</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">bottom</span></span><span class="member-signature-token">)</span></span></div></div>

Positions the widget at a specific distance from the bottom edge of the stack.

This is a convenience method equivalent to calling `positioned(bottom: bottom)`.
The widget will be positioned at the specified distance from the bottom edge,
while other dimensions remain unconstrained.

Parameters:

- `bottom`: Distance from the bottom edge of the stack.

Returns a [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html) widget positioned from the bottom.

Example:

```dart
Stack(
  children: [
    FloatingActionButton(onPressed: () {})
      .positionedBottom(20), // 20px from bottom
    Text('Footer').positionedBottom(60), // 60px from bottom
  ],
);
```

*Available on Widget, provided by the PositionedWidgetExtensions extension*

:::details Implementation
```dart
Positioned positionedBottom(double bottom) => positioned(bottom: bottom);
```
:::

### positionedHeight() <Badge type="info" text="extension" /> {#positionedheight}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Positioned</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">positionedHeight</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">height</span></span><span class="member-signature-token">)</span></span></div></div>

Constrains the widget to a specific height within the stack.

This is a convenience method equivalent to calling `positioned(height: height)`.
The widget will be constrained to the specified height, while position
and width remain unconstrained unless specified elsewhere.

Parameters:

- `height`: The height constraint for the positioned widget.

Returns a [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html) widget with the specified height constraint.

Example:

```dart
Stack(
  children: [
    Container(color: Colors.red)
      .positionedHeight(100)
      .positionedLeft(20), // 100px tall, positioned 20px from left
  ],
);
```

*Available on Widget, provided by the PositionedWidgetExtensions extension*

:::details Implementation
```dart
Positioned positionedHeight(double height) => positioned(height: height);
```
:::

### positionedLeft() <Badge type="info" text="extension" /> {#positionedleft}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Positioned</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">positionedLeft</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">left</span></span><span class="member-signature-token">)</span></span></div></div>

Positions the widget at a specific distance from the left edge of the stack.

This is a convenience method equivalent to calling `positioned(left: left)`.
The widget will be positioned at the specified distance from the left edge,
while other dimensions remain unconstrained.

Parameters:

- `left`: Distance from the left edge of the stack.

Returns a [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html) widget positioned from the left.

Example:

```dart
Stack(
  children: [
    Icon(Icons.menu).positionedLeft(16), // 16px from left edge
    Text('Title').positionedLeft(60),    // 60px from left edge
  ],
);
```

*Available on Widget, provided by the PositionedWidgetExtensions extension*

:::details Implementation
```dart
Positioned positionedLeft(double left) => positioned(left: left);
```
:::

### positionedRight() <Badge type="info" text="extension" /> {#positionedright}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Positioned</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">positionedRight</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">right</span></span><span class="member-signature-token">)</span></span></div></div>

Positions the widget at a specific distance from the right edge of the stack.

This is a convenience method equivalent to calling `positioned(right: right)`.
The widget will be positioned at the specified distance from the right edge,
while other dimensions remain unconstrained.

Parameters:

- `right`: Distance from the right edge of the stack.

Returns a [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html) widget positioned from the right.

Example:

```dart
Stack(
  children: [
    Icon(Icons.close).positionedRight(16), // 16px from right edge
    Text('Menu').positionedRight(60),      // 60px from right edge
  ],
);
```

*Available on Widget, provided by the PositionedWidgetExtensions extension*

:::details Implementation
```dart
Positioned positionedRight(double right) => positioned(right: right);
```
:::

### positionedTop() <Badge type="info" text="extension" /> {#positionedtop}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Positioned</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">positionedTop</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">top</span></span><span class="member-signature-token">)</span></span></div></div>

Positions the widget at a specific distance from the top edge of the stack.

This is a convenience method equivalent to calling `positioned(top: top)`.
The widget will be positioned at the specified distance from the top edge,
while other dimensions remain unconstrained.

Parameters:

- `top`: Distance from the top edge of the stack.

Returns a [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html) widget positioned from the top.

Example:

```dart
Stack(
  children: [
    Text('Header').positionedTop(20), // 20px from top
    Text('Content').positionedTop(60), // 60px from top
  ],
);
```

*Available on Widget, provided by the PositionedWidgetExtensions extension*

:::details Implementation
```dart
Positioned positionedTop(double top) => positioned(top: top);
```
:::

### positionedWidth() <Badge type="info" text="extension" /> {#positionedwidth}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Positioned</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">positionedWidth</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">width</span></span><span class="member-signature-token">)</span></span></div></div>

Constrains the widget to a specific width within the stack.

This is a convenience method equivalent to calling `positioned(width: width)`.
The widget will be constrained to the specified width, while position
and height remain unconstrained unless specified elsewhere.

Parameters:

- `width`: The width constraint for the positioned widget.

Returns a [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html) widget with the specified width constraint.

Example:

```dart
Stack(
  children: [
    Container(color: Colors.blue)
      .positionedWidth(200)
      .positionedTop(50), // 200px wide, positioned 50px from top
  ],
);
```

*Available on Widget, provided by the PositionedWidgetExtensions extension*

:::details Implementation
```dart
Positioned positionedWidth(double width) => positioned(width: width);
```
:::

### purpleAccentBox() <Badge type="info" text="extension" /> {#purpleaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">purpleAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a purple accent colored box.

Uses [Colors.purpleAccent](https://api.flutter.dev/flutter/material/Colors/purpleAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of purple.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with purple accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox purpleAccentBox() => coloredBox(Colors.purpleAccent);
```
:::

### purpleBox() <Badge type="info" text="extension" /> {#purplebox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">purpleBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with system purple color.

Uses [CupertinoColors.systemPurple](https://api.flutter.dev/flutter/cupertino/CupertinoColors/systemPurple-constant.html) which adapts to light/dark mode.
This is the standard purple color used throughout iOS interfaces,
often used for creative or premium features.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with purple background.

Example:

```dart
Icon(CupertinoIcons.star).purpleBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox purpleBox() => coloredBox(CupertinoColors.systemPurple);
```
:::

### purpleBox() <Badge type="info" text="extension" /> {#purplebox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">purpleBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a purple colored box.

Uses [Colors.purple](https://api.flutter.dev/flutter/material/Colors/purple-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with purple background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox purpleBox() => coloredBox(Colors.purple);
```
:::

### redAccentBox() <Badge type="info" text="extension" /> {#redaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">redAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a red accent colored box.

Uses [Colors.redAccent](https://api.flutter.dev/flutter/material/Colors/redAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of red.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with red accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox redAccentBox() => coloredBox(Colors.redAccent);
```
:::

### redBox() <Badge type="info" text="extension" /> {#redbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">redBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a red colored box.

Uses [Colors.red](https://api.flutter.dev/flutter/material/Colors/red-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with red background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox redBox() => coloredBox(Colors.red);
```
:::

### redBox() <Badge type="info" text="extension" /> {#redbox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">redBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with system red color.

Uses [CupertinoColors.systemRed](https://api.flutter.dev/flutter/cupertino/CupertinoColors/systemRed-constant.html) which adapts to light/dark mode.
This is the standard red color used throughout iOS interfaces.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with red background.

Example:

```dart
Icon(CupertinoIcons.heart).redBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox redBox() => coloredBox(CupertinoColors.systemRed);
```
:::

### row() <Badge type="info" text="extension" /> {#row}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Row</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">row</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">MainAxisAlignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">mainAxisAlignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= MainAxisAlignment.start,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">MainAxisSize</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">mainAxisSize</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= MainAxisSize.max,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">CrossAxisAlignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">crossAxisAlignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= CrossAxisAlignment.center,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">TextDirection</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">textDirection</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">VerticalDirection</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">verticalDirection</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= VerticalDirection.down,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">spacing</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">TextBaseline</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">textBaseline</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a [Row](https://api.flutter.dev/flutter/widgets/Row-class.html) widget containing this widget as the only child.

This method wraps the current widget in a Row with customizable
alignment and spacing options. It's equivalent to creating a Row
with a single-item list containing this widget.

Parameters:

- `mainAxisAlignment`: How the child is aligned along the main axis (horizontal)
- `mainAxisSize`: How much space the Row should occupy along the main axis
- `crossAxisAlignment`: How the child is aligned along the cross axis (vertical)
- `textDirection`: The text direction to use for resolving alignment
- `verticalDirection`: The vertical direction to use for cross axis alignment
- `spacing`: The amount of space between children (not applicable for single child)
- `textBaseline`: The baseline to use when `crossAxisAlignment` is baseline

Returns a [Row](https://api.flutter.dev/flutter/widgets/Row-class.html) widget containing this widget as the only child.

Example:

```dart
Text('Hello World')
  .row(mainAxisAlignment: MainAxisAlignment.center)
```

*Available on Widget, provided by the RowWidgetExtension extension*

:::details Implementation
```dart
Row row({
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
  MainAxisSize mainAxisSize = MainAxisSize.max,
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  TextDirection? textDirection,
  VerticalDirection verticalDirection = VerticalDirection.down,
  double spacing = 0,
  TextBaseline? textBaseline,
}) {
  return Row(
    mainAxisAlignment: mainAxisAlignment,
    crossAxisAlignment: crossAxisAlignment,
    mainAxisSize: mainAxisSize,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline,
    spacing: spacing,
    children: [this],
  );
}
```
:::

### safeArea() <Badge type="info" text="extension" /> {#safearea}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SafeArea</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">safeArea</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">left</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">true</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">top</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">true</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">right</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">true</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">bottom</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">true</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsets</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minimum</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= EdgeInsets.zero,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maintainBottomViewPadding</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget with a SafeArea with customizable padding on all sides.

Parameters:

- `left` - Whether to add padding on the left side (default: true)
- `top` - Whether to add padding on the top side (default: true)
- `right` - Whether to add padding on the right side (default: true)
- `bottom` - Whether to add padding on the bottom side (default: true)
- `minimum` - The minimum padding to apply (default: EdgeInsets.zero)
- `maintainBottomViewPadding` - Whether to maintain bottom view padding (default: false)

Returns a [SafeArea](https://api.flutter.dev/flutter/widgets/SafeArea-class.html) widget wrapping the current widget.

*Available on Widget, provided by the SafeAreaExtension extension*

:::details Implementation
```dart
SafeArea safeArea({
  bool left = true,
  bool top = true,
  bool right = true,
  bool bottom = true,
  EdgeInsets minimum = EdgeInsets.zero,
  bool maintainBottomViewPadding = false,
}) =>
    SafeArea(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      minimum: minimum,
      maintainBottomViewPadding: maintainBottomViewPadding,
      child: this,
    );
```
:::

### safeAreaAll() <Badge type="info" text="extension" /> {#safeareaall}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SafeArea</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">safeAreaAll</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsets</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minimum</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= EdgeInsets.zero,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maintainBottomViewPadding</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget with a SafeArea that adds padding on all sides.

Parameters:

- `minimum` - The minimum padding to apply (default: EdgeInsets.zero)
- `maintainBottomViewPadding` - Whether to maintain bottom view padding (default: false)

Returns a [SafeArea](https://api.flutter.dev/flutter/widgets/SafeArea-class.html) widget wrapping the current widget with padding on all sides.

*Available on Widget, provided by the SafeAreaExtension extension*

:::details Implementation
```dart
SafeArea safeAreaAll({
  EdgeInsets minimum = EdgeInsets.zero,
  bool maintainBottomViewPadding = false,
}) =>
    safeArea(
      left: true,
      top: true,
      right: true,
      bottom: true,
      minimum: minimum,
      maintainBottomViewPadding: maintainBottomViewPadding,
    );
```
:::

### safeAreaNone() <Badge type="info" text="extension" /> {#safeareanone}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SafeArea</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">safeAreaNone</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsets</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minimum</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= EdgeInsets.zero,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maintainBottomViewPadding</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget with a SafeArea that adds no padding on any side.

Parameters:

- `minimum` - The minimum padding to apply (default: EdgeInsets.zero)
- `maintainBottomViewPadding` - Whether to maintain bottom view padding (default: false)

Returns a [SafeArea](https://api.flutter.dev/flutter/widgets/SafeArea-class.html) widget wrapping the current widget with no padding.

*Available on Widget, provided by the SafeAreaExtension extension*

:::details Implementation
```dart
SafeArea safeAreaNone({
  EdgeInsets minimum = EdgeInsets.zero,
  bool maintainBottomViewPadding = false,
}) =>
    safeArea(
      left: false,
      top: false,
      right: false,
      bottom: false,
      minimum: minimum,
      maintainBottomViewPadding: maintainBottomViewPadding,
    );
```
:::

### safeAreaOnlyBottom() <Badge type="info" text="extension" /> {#safeareaonlybottom}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SafeArea</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">safeAreaOnlyBottom</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsets</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minimum</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= EdgeInsets.zero,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maintainBottomViewPadding</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget with a SafeArea that adds padding only on the bottom side.

Parameters:

- `minimum` - The minimum padding to apply (default: EdgeInsets.zero)
- `maintainBottomViewPadding` - Whether to maintain bottom view padding (default: false)

Returns a [SafeArea](https://api.flutter.dev/flutter/widgets/SafeArea-class.html) widget wrapping the current widget with bottom padding only.

*Available on Widget, provided by the SafeAreaExtension extension*

:::details Implementation
```dart
SafeArea safeAreaOnlyBottom({
  EdgeInsets minimum = EdgeInsets.zero,
  bool maintainBottomViewPadding = false,
}) =>
    safeArea(
      bottom: true,
      right: false,
      left: false,
      top: false,
      minimum: minimum,
      maintainBottomViewPadding: maintainBottomViewPadding,
    );
```
:::

### safeAreaOnlyHorizontal() <Badge type="info" text="extension" /> {#safeareaonlyhorizontal}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SafeArea</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">safeAreaOnlyHorizontal</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsets</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minimum</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= EdgeInsets.zero,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maintainBottomViewPadding</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget with a SafeArea that adds padding only on horizontal sides (left and right).

Parameters:

- `minimum` - The minimum padding to apply (default: EdgeInsets.zero)
- `maintainBottomViewPadding` - Whether to maintain bottom view padding (default: false)

Returns a [SafeArea](https://api.flutter.dev/flutter/widgets/SafeArea-class.html) widget wrapping the current widget with horizontal padding only.

*Available on Widget, provided by the SafeAreaExtension extension*

:::details Implementation
```dart
SafeArea safeAreaOnlyHorizontal({
  EdgeInsets minimum = EdgeInsets.zero,
  bool maintainBottomViewPadding = false,
}) =>
    safeArea(
      top: false,
      right: true,
      bottom: false,
      left: true,
      minimum: minimum,
      maintainBottomViewPadding: maintainBottomViewPadding,
    );
```
:::

### safeAreaOnlyLeft() <Badge type="info" text="extension" /> {#safeareaonlyleft}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SafeArea</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">safeAreaOnlyLeft</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsets</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minimum</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= EdgeInsets.zero,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maintainBottomViewPadding</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget with a SafeArea that adds padding only on the left side.

Parameters:

- `minimum` - The minimum padding to apply (default: EdgeInsets.zero)
- `maintainBottomViewPadding` - Whether to maintain bottom view padding (default: false)

Returns a [SafeArea](https://api.flutter.dev/flutter/widgets/SafeArea-class.html) widget wrapping the current widget with left padding only.

*Available on Widget, provided by the SafeAreaExtension extension*

:::details Implementation
```dart
SafeArea safeAreaOnlyLeft({
  EdgeInsets minimum = EdgeInsets.zero,
  bool maintainBottomViewPadding = false,
}) =>
    safeArea(
      left: true,
      right: false,
      top: false,
      bottom: false,
      minimum: minimum,
      maintainBottomViewPadding: maintainBottomViewPadding,
    );
```
:::

### safeAreaOnlyRight() <Badge type="info" text="extension" /> {#safeareaonlyright}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SafeArea</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">safeAreaOnlyRight</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsets</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minimum</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= EdgeInsets.zero,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maintainBottomViewPadding</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget with a SafeArea that adds padding only on the right side.

Parameters:

- `minimum` - The minimum padding to apply (default: EdgeInsets.zero)
- `maintainBottomViewPadding` - Whether to maintain bottom view padding (default: false)

Returns a [SafeArea](https://api.flutter.dev/flutter/widgets/SafeArea-class.html) widget wrapping the current widget with right padding only.

*Available on Widget, provided by the SafeAreaExtension extension*

:::details Implementation
```dart
SafeArea safeAreaOnlyRight({
  EdgeInsets minimum = EdgeInsets.zero,
  bool maintainBottomViewPadding = false,
}) =>
    safeArea(
      right: true,
      top: false,
      bottom: false,
      left: false,
      minimum: minimum,
      maintainBottomViewPadding: maintainBottomViewPadding,
    );
```
:::

### safeAreaOnlyTop() <Badge type="info" text="extension" /> {#safeareaonlytop}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SafeArea</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">safeAreaOnlyTop</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsets</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minimum</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= EdgeInsets.zero,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maintainBottomViewPadding</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget with a SafeArea that adds padding only on the top side.

Parameters:

- `minimum` - The minimum padding to apply (default: EdgeInsets.zero)
- `maintainBottomViewPadding` - Whether to maintain bottom view padding (default: false)

Returns a [SafeArea](https://api.flutter.dev/flutter/widgets/SafeArea-class.html) widget wrapping the current widget with top padding only.

*Available on Widget, provided by the SafeAreaExtension extension*

:::details Implementation
```dart
SafeArea safeAreaOnlyTop({
  EdgeInsets minimum = EdgeInsets.zero,
  bool maintainBottomViewPadding = false,
}) =>
    safeArea(
      top: true,
      right: false,
      bottom: false,
      left: false,
      minimum: minimum,
      maintainBottomViewPadding: maintainBottomViewPadding,
    );
```
:::

### safeAreaOnlyVertical() <Badge type="info" text="extension" /> {#safeareaonlyvertical}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SafeArea</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">safeAreaOnlyVertical</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">EdgeInsets</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minimum</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= EdgeInsets.zero,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">maintainBottomViewPadding</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Wraps the widget with a SafeArea that adds padding only on vertical sides (top and bottom).

Parameters:

- `minimum` - The minimum padding to apply (default: EdgeInsets.zero)
- `maintainBottomViewPadding` - Whether to maintain bottom view padding (default: false)

Returns a [SafeArea](https://api.flutter.dev/flutter/widgets/SafeArea-class.html) widget wrapping the current widget with vertical padding only.

*Available on Widget, provided by the SafeAreaExtension extension*

:::details Implementation
```dart
SafeArea safeAreaOnlyVertical({
  EdgeInsets minimum = EdgeInsets.zero,
  bool maintainBottomViewPadding = false,
}) =>
    safeArea(
      top: true,
      right: false,
      bottom: true,
      left: false,
      minimum: minimum,
      maintainBottomViewPadding: maintainBottomViewPadding,
    );
```
:::

### shadowedBox() <Badge type="info" text="extension" /> {#shadowedbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecoratedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">shadowedBox</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Color</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">color</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">const</span></span><span class="member-signature-space"> </span><span class="member-signature-token">Color(_kColorDefault),</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">offset</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Offset.zero,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">blurRadius</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0.0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">spreadRadius</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">0.0</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BlurStyle</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">blurStyle</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= BlurStyle.normal,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecorationPosition</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">position</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DecorationPosition.background,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Applies a shadow decoration to the widget.

Creates a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) with a single [BoxShadow](https://api.flutter.dev/flutter/painting/BoxShadow-class.html) that casts a shadow
behind the widget. This is useful for creating depth and elevation effects.

Parameters:

- `color`: Color of the shadow. Defaults to black.
- `offset`: Offset of the shadow from the widget. Defaults to [Offset.zero](https://api.flutter.dev/flutter/dart-ui/Offset/zero-constant.html).
- `blurRadius`: Blur radius of the shadow. Defaults to 0.0 (sharp shadow).
- `spreadRadius`: Spread radius of the shadow. Defaults to 0.0.
- `blurStyle`: Style of the blur effect. Defaults to [BlurStyle.normal](https://api.flutter.dev/flutter/dart-ui/BlurStyle.html).
- `position`: Where to paint the decoration. Defaults to background.

Returns a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) widget with the shadow decoration.

Example:

```dart
Card(
  child: Text('Elevated card'),
).shadowedBox(
  color: Colors.black26,
  offset: Offset(0, 4),
  blurRadius: 8,
);
```

*Available on Widget, provided by the DecoratedBoxWidgetExtension extension*

:::details Implementation
```dart
DecoratedBox shadowedBox({
  Color color = const Color(_kColorDefault),
  Offset offset = Offset.zero,
  double blurRadius = 0.0,
  double spreadRadius = 0.0,
  BlurStyle blurStyle = BlurStyle.normal,
  DecorationPosition position = DecorationPosition.background,
}) =>
    decoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: color,
            offset: offset,
            blurRadius: blurRadius,
            spreadRadius: spreadRadius,
            blurStyle: blurStyle,
          )
        ],
      ),
      position: position,
    );
```
:::

### shapedBox() <Badge type="info" text="extension" /> {#shapedbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecoratedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">shapedBox</span></span><span class="member-signature-token">(</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">BoxShape</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">shape</span></span><span class="member-signature-token">, {</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DecorationPosition</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">position</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DecorationPosition.background,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Applies a shape decoration to the widget.

Creates a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) with the specified [BoxShape](https://api.flutter.dev/flutter/painting/BoxShape.html). This is useful
for creating circular or rectangular containers with specific shapes.

Parameters:

- `shape`: The [BoxShape](https://api.flutter.dev/flutter/painting/BoxShape.html) to apply to the decoration.
- `position`: Where to paint the decoration. Defaults to background.

Returns a [DecoratedBox](https://api.flutter.dev/flutter/widgets/DecoratedBox-class.html) widget with the shape decoration.

Example:

```dart
Container(width: 80, height: 80, color: Colors.blue)
  .shapedBox(BoxShape.circle); // Creates a circular container
```

*Available on Widget, provided by the DecoratedBoxWidgetExtension extension*

:::details Implementation
```dart
DecoratedBox shapedBox(
  BoxShape shape, {
  DecorationPosition position = DecorationPosition.background,
}) =>
    decoratedBox(
      decoration: BoxDecoration(shape: shape),
      position: position,
    );
```
:::

### sizedBox() <Badge type="info" text="extension" /> {#sizedbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SizedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">sizedBox</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">width</span></span><span class="member-signature-token">,</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">height</span></span><span class="member-signature-token">})</span></span></div></div>

Wraps the widget in a [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html) with the specified dimensions.

Creates a [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html) that constrains the widget to the specified width
and/or height. If only one dimension is specified, the other dimension
will be determined by the widget's intrinsic size.

Parameters:

- `width`: The width constraint for the widget. If null, width is unconstrained.
- `height`: The height constraint for the widget. If null, height is unconstrained.

Returns a [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html) widget containing this widget as its child.

Example:

```dart
Container(color: Colors.blue)
  .sizedBox(width: 100, height: 50); // Fixed 100x50 blue rectangle

Text('Long text that will be constrained')
  .sizedBox(width: 200); // Fixed width, height determined by text
```

*Available on Widget, provided by the SizedBoxExtension extension*

:::details Implementation
```dart
SizedBox sizedBox({
  double? width,
  double? height,
}) =>
    SizedBox(
      width: width,
      height: height,
      child: this,
    );
```
:::

### sizedHeight() <Badge type="info" text="extension" /> {#sizedheight}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SizedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">sizedHeight</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">height</span></span><span class="member-signature-token">)</span></span></div></div>

Wraps the widget in a [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html) with a specific height.

This is a convenience method equivalent to calling `sizedBox(height: height)`.
The width will be determined by the widget's intrinsic width.

Parameters:

- `height`: The height constraint for the widget.

Returns a [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html) widget with the specified height.

Example:

```dart
Text('This text will be exactly 40 pixels tall')
  .sizedHeight(40);

Divider()
  .sizedHeight(2); // Divider with fixed 2px height
```

*Available on Widget, provided by the SizedBoxExtension extension*

:::details Implementation
```dart
SizedBox sizedHeight(double height) => sizedBox(height: height);
```
:::

### sizedWidth() <Badge type="info" text="extension" /> {#sizedwidth}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">SizedBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">sizedWidth</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">double</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">width</span></span><span class="member-signature-token">)</span></span></div></div>

Wraps the widget in a [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html) with a specific width.

This is a convenience method equivalent to calling `sizedBox(width: width)`.
The height will be determined by the widget's intrinsic height.

Parameters:

- `width`: The width constraint for the widget.

Returns a [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html) widget with the specified width.

Example:

```dart
Text('This text will be exactly 150 pixels wide')
  .sizedWidth(150);

Icon(Icons.star)
  .sizedWidth(24); // Icon with fixed 24px width
```

*Available on Widget, provided by the SizedBoxExtension extension*

:::details Implementation
```dart
SizedBox sizedWidth(double width) => sizedBox(width: width);
```
:::

### stack() <Badge type="info" text="extension" /> {#stack}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Stack</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">stack</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= AlignmentDirectional.topStart,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">TextDirection</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">textDirection</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">StackFit</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">fit</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= StackFit.loose,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.hardEdge,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) widget containing this widget as the only child.

This method wraps the current widget in a list and delegates to the
[StackWidgetListExtension.stack](https://pub.dev/documentation/exui/1.0.11/exui/StackWidgetListExtension/stack.html) method.

Parameters:

- `alignment`: How to align the widget in the stack.
Defaults to [AlignmentDirectional.topStart](https://api.flutter.dev/flutter/painting/AlignmentDirectional/topStart-constant.html).
- `textDirection`: The text direction to use when resolving alignment.
- `fit`: How to size the widget in the stack.
Defaults to [StackFit.loose](https://api.flutter.dev/flutter/rendering/StackFit.html).
- `clipBehavior`: The content clipping behavior.
Defaults to [Clip.hardEdge](https://api.flutter.dev/flutter/dart-ui/Clip.html).

Returns a [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) widget containing this widget as its only child.

*Available on Widget, provided by the StackWidgetExtension extension*

:::details Implementation
```dart
Stack stack({
  AlignmentGeometry alignment = AlignmentDirectional.topStart,
  TextDirection? textDirection,
  StackFit fit = StackFit.loose,
  Clip clipBehavior = Clip.hardEdge,
}) =>
    [this].stack(
      alignment: alignment,
      textDirection: textDirection,
      fit: fit,
      clipBehavior: clipBehavior,
    );
```
:::

### stackExpand() <Badge type="info" text="extension" /> {#stackexpand}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Stack</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">stackExpand</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= AlignmentDirectional.topStart,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">TextDirection</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">textDirection</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.hardEdge,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) with [StackFit.expand](https://api.flutter.dev/flutter/rendering/StackFit.html) containing this widget.

Wraps this widget in a stack with expand sizing behavior.
See [StackWidgetListExtension.stackExpand](https://pub.dev/documentation/exui/1.0.11/exui/StackWidgetListExtension/stackExpand.html) for details about
expand behavior.

Parameters:

- `alignment`: How to align the widget in the stack.
Defaults to [AlignmentDirectional.topStart](https://api.flutter.dev/flutter/painting/AlignmentDirectional/topStart-constant.html).
- `textDirection`: The text direction to use when resolving alignment.
- `clipBehavior`: The content clipping behavior.
Defaults to [Clip.hardEdge](https://api.flutter.dev/flutter/dart-ui/Clip.html).

Returns a [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) widget with expand sizing behavior.

*Available on Widget, provided by the StackWidgetExtension extension*

:::details Implementation
```dart
Stack stackExpand({
  AlignmentGeometry alignment = AlignmentDirectional.topStart,
  TextDirection? textDirection,
  Clip clipBehavior = Clip.hardEdge,
}) =>
    [this].stackExpand(
      alignment: alignment,
      textDirection: textDirection,
      clipBehavior: clipBehavior,
    );
```
:::

### stackLoose() <Badge type="info" text="extension" /> {#stackloose}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Stack</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">stackLoose</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= AlignmentDirectional.topStart,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">TextDirection</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">textDirection</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.hardEdge,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) with [StackFit.loose](https://api.flutter.dev/flutter/rendering/StackFit.html) containing this widget.

Wraps this widget in a stack with loose sizing behavior.
See [StackWidgetListExtension.stackLoose](https://pub.dev/documentation/exui/1.0.11/exui/StackWidgetListExtension/stackLoose.html) for details about
loose behavior.

Parameters:

- `alignment`: How to align the widget in the stack.
Defaults to [AlignmentDirectional.topStart](https://api.flutter.dev/flutter/painting/AlignmentDirectional/topStart-constant.html).
- `textDirection`: The text direction to use when resolving alignment.
- `clipBehavior`: The content clipping behavior.
Defaults to [Clip.hardEdge](https://api.flutter.dev/flutter/dart-ui/Clip.html).

Returns a [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) widget with loose sizing behavior.

*Available on Widget, provided by the StackWidgetExtension extension*

:::details Implementation
```dart
Stack stackLoose({
  AlignmentGeometry alignment = AlignmentDirectional.topStart,
  TextDirection? textDirection,
  Clip clipBehavior = Clip.hardEdge,
}) =>
    [this].stackLoose(
        alignment: alignment,
        textDirection: textDirection,
        clipBehavior: clipBehavior);
```
:::

### stackPassthrough() <Badge type="info" text="extension" /> {#stackpassthrough}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Stack</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">stackPassthrough</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">AlignmentGeometry</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">alignment</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= AlignmentDirectional.topStart,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">TextDirection</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">textDirection</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= Clip.hardEdge,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) with [StackFit.passthrough](https://api.flutter.dev/flutter/rendering/StackFit.html) containing this widget.

Wraps this widget in a stack with passthrough sizing behavior.
See [StackWidgetListExtension.stackPassthrough](https://pub.dev/documentation/exui/1.0.11/exui/StackWidgetListExtension/stackPassthrough.html) for details about
passthrough behavior.

Parameters:

- `alignment`: How to align the widget in the stack.
Defaults to [AlignmentDirectional.topStart](https://api.flutter.dev/flutter/painting/AlignmentDirectional/topStart-constant.html).
- `textDirection`: The text direction to use when resolving alignment.
- `clipBehavior`: The content clipping behavior.
Defaults to [Clip.hardEdge](https://api.flutter.dev/flutter/dart-ui/Clip.html).

Returns a [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) widget with passthrough sizing behavior.

*Available on Widget, provided by the StackWidgetExtension extension*

:::details Implementation
```dart
Stack stackPassthrough({
  AlignmentGeometry alignment = AlignmentDirectional.topStart,
  TextDirection? textDirection,
  Clip clipBehavior = Clip.hardEdge,
}) =>
    [this].stackPassthrough(
      alignment: alignment,
      textDirection: textDirection,
      clipBehavior: clipBehavior,
    );
```
:::

### tealAccentBox() <Badge type="info" text="extension" /> {#tealaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">tealAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a teal accent colored box.

Uses [Colors.tealAccent](https://api.flutter.dev/flutter/material/Colors/tealAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of teal.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with teal accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox tealAccentBox() => coloredBox(Colors.tealAccent);
```
:::

### tealBox() <Badge type="info" text="extension" /> {#tealbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">tealBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a teal colored box.

Uses [Colors.teal](https://api.flutter.dev/flutter/material/Colors/teal-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with teal background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox tealBox() => coloredBox(Colors.teal);
```
:::

### tealBox() <Badge type="info" text="extension" /> {#tealbox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">tealBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with system teal color.

Uses [CupertinoColors.systemTeal](https://api.flutter.dev/flutter/cupertino/CupertinoColors/systemTeal-constant.html) which adapts to light/dark mode.
This is the standard teal color used throughout iOS interfaces,
often used for communication or water-themed elements.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with teal background.

Example:

```dart
Icon(CupertinoIcons.phone).tealBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox tealBox() => coloredBox(CupertinoColors.systemTeal);
```
:::

### textButton() <Badge type="info" text="extension" /> {#textbutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">TextButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">textButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHover</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">ButtonStyle</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">style</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">false</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">WidgetStatesController</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">statesController</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">isSemanticButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">true</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a [TextButton](https://api.flutter.dev/flutter/material/TextButton-class.html) with this widget as its child.

Text buttons are low-emphasis buttons. They're typically used for less-important
actions, including those located in dialogs and cards. In cards, text buttons
help maintain an emphasis hierarchy.

Parameters:

- `onPressed` - Called when the button is pressed. If null, button is disabled.
- `onLongPress` - Called when the button is long-pressed.
- `onHover` - Called when a pointer enters or exits the button area.
- `onFocusChange` - Called when the focus state of the button changes.
- `style` - Customizes the button's appearance and behavior.
- `focusNode` - An optional focus node to use as the focus node for this widget.
- `autofocus` - Whether this widget should focus itself if nothing else is focused.
- `clipBehavior` - The content will be clipped (or not) according to this option.
- `statesController` - Represents the interactive state of the button.
- `isSemanticButton` - Whether this button should be treated as a button by screen readers.

Returns a [TextButton](https://api.flutter.dev/flutter/material/TextButton-class.html) with this widget as its child.

Example:

```dart
Text('Learn More')
  .textButton(
    onPressed: () => showMoreInfo(),
    style: TextButton.styleFrom(
      foregroundColor: Colors.blue,
    ),
  )
```

See also:

- [TextButton](https://api.flutter.dev/flutter/material/TextButton-class.html), the underlying Material Design text button.
- [textIconButton](https://pub.dev/documentation/exui/1.0.11/material/ElevatedButtonWidgetExtensions/textIconButton.html), for creating text buttons with icons.

*Available on Widget, provided by the ElevatedButtonWidgetExtensions extension*

:::details Implementation
```dart
TextButton textButton({
  required void Function()? onPressed,
  void Function()? onLongPress,
  void Function(bool)? onHover,
  void Function(bool)? onFocusChange,
  ButtonStyle? style,
  FocusNode? focusNode,
  bool autofocus = false,
  Clip? clipBehavior,
  WidgetStatesController? statesController,
  bool? isSemanticButton = true,
}) =>
    TextButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      isSemanticButton: isSemanticButton,
      child: this,
    );
```
:::

### textIconButton() <Badge type="info" text="extension" /> {#texticonbutton}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">TextButton</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">textIconButton</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="kw">required</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onPressed</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">()?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onLongPress</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onHover</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">Function</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">)?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">onFocusChange</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">ButtonStyle</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">style</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">FocusNode</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">focusNode</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">autofocus</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Clip</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">clipBehavior</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">WidgetStatesController</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">statesController</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">Widget</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">icon</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">IconAlignment</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">iconAlignment</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Creates a [TextButton.icon](https://api.flutter.dev/flutter/material/TextButton/TextButton.icon.html) with this widget as its label and an optional icon.

This creates a text button with both an icon and a label. The icon and label
are arranged horizontally according to the `iconAlignment` parameter.

Text icon buttons are ideal for actions that benefit from an icon to clarify
their purpose while maintaining low visual emphasis.

Parameters:

- `onPressed` - Called when the button is pressed. If null, button is disabled.
- `onLongPress` - Called when the button is long-pressed.
- `onHover` - Called when a pointer enters or exits the button area.
- `onFocusChange` - Called when the focus state of the button changes.
- `style` - Customizes the button's appearance and behavior.
- `focusNode` - An optional focus node to use as the focus node for this widget.
- `autofocus` - Whether this widget should focus itself if nothing else is focused.
- `clipBehavior` - The content will be clipped (or not) according to this option.
- `statesController` - Represents the interactive state of the button.
- `icon` - The icon widget to display. If null, no icon is shown.
- `iconAlignment` - How to align the icon relative to the label.

Returns a [TextButton](https://api.flutter.dev/flutter/material/TextButton-class.html) configured as an icon button with this widget as the label.

Example:

```dart
Text('Help')
  .textIconButton(
    onPressed: () => showHelp(),
    icon: Icon(Icons.help_outline),
  )
```

See also:

- [TextButton.icon](https://api.flutter.dev/flutter/material/TextButton/TextButton.icon.html), the underlying Material Design text icon button.
- [textButton](https://pub.dev/documentation/exui/1.0.11/material/ElevatedButtonWidgetExtensions/textButton.html), for creating text buttons without icons.

*Available on Widget, provided by the ElevatedButtonWidgetExtensions extension*

:::details Implementation
```dart
TextButton textIconButton({
  required void Function()? onPressed,
  void Function()? onLongPress,
  void Function(bool)? onHover,
  void Function(bool)? onFocusChange,
  ButtonStyle? style,
  FocusNode? focusNode,
  bool? autofocus,
  Clip? clipBehavior,
  WidgetStatesController? statesController,
  Widget? icon,
  IconAlignment? iconAlignment,
}) =>
    TextButton.icon(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      clipBehavior: clipBehavior,
      statesController: statesController,
      icon: icon,
      label: this,
      iconAlignment: iconAlignment,
    );
```
:::

### toDiagnosticsNode() <Badge type="info" text="inherited" /> {#todiagnosticsnode}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">DiagnosticsNode</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">toDiagnosticsNode</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">name</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DiagnosticsTreeStyle</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">style</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Returns a debug representation of the object that is used by debugging
tools and by [DiagnosticsNode.toStringDeep](https://api.flutter.dev/flutter/foundation/DiagnosticsNode/toStringDeep.html).

Leave `name` as null if there is not a meaningful description of the
relationship between the this node and its parent.

Typically the `style` argument is only specified to indicate an atypical
relationship between the parent and the node. For example, pass
[DiagnosticsTreeStyle.offstage](https://api.flutter.dev/flutter/foundation/DiagnosticsTreeStyle.html) to indicate that a node is offstage.

*Inherited from DiagnosticableTree.*

:::details Implementation
```dart
@override
DiagnosticsNode toDiagnosticsNode({String? name, DiagnosticsTreeStyle? style}) {
  return DiagnosticableTreeNode(name: name, value: this, style: style);
}
```
:::

### toString() <Badge type="info" text="inherited" /> {#tostring}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">toString</span></span><span class="member-signature-token">({</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">DiagnosticLevel</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minLevel</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DiagnosticLevel.info})</span></span></div></div>

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

*Inherited from Diagnosticable.*

:::details Implementation
```dart
@override
String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
  String? fullString;
  assert(() {
    fullString = toDiagnosticsNode(
      style: DiagnosticsTreeStyle.singleLine,
    ).toString(minLevel: minLevel);
    return true;
  }());
  return fullString ?? toStringShort();
}
```
:::

### toStringDeep() <Badge type="info" text="inherited" /> {#tostringdeep}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">toStringDeep</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">prefixLineOne</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="str-lit">''</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">prefixOtherLines</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DiagnosticLevel</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minLevel</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DiagnosticLevel.debug,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">wrapWidth</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="num-lit">65</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Returns a string representation of this node and its descendants.

`prefixLineOne` will be added to the front of the first line of the
output. `prefixOtherLines` will be added to the front of each other line.
If `prefixOtherLines` is null, the `prefixLineOne` is used for every line.
By default, there is no prefix.

`minLevel` specifies the minimum [DiagnosticLevel](https://api.flutter.dev/flutter/foundation/DiagnosticLevel.html) for properties included
in the output.

`wrapWidth` specifies the column number where word wrapping will be
applied.

The [toStringDeep](https://api.flutter.dev/flutter/foundation/DiagnosticableTree/toStringDeep.html) method takes other arguments, but those are intended
for internal use when recursing to the descendants, and so can be ignored.

See also:

- [toString](https://api.flutter.dev/flutter/foundation/Diagnosticable/toString.html), for a brief description of the object but not its children.
- [toStringShallow](https://api.flutter.dev/flutter/foundation/DiagnosticableTree/toStringShallow.html), for a detailed description of the object but not its
children.

*Inherited from DiagnosticableTree.*

:::details Implementation
```dart
String toStringDeep({
  String prefixLineOne = '',
  String? prefixOtherLines,
  DiagnosticLevel minLevel = DiagnosticLevel.debug,
  int wrapWidth = 65,
}) {
  return toDiagnosticsNode().toStringDeep(
    prefixLineOne: prefixLineOne,
    prefixOtherLines: prefixOtherLines,
    minLevel: minLevel,
    wrapWidth: wrapWidth,
  );
}
```
:::

### toStringShallow() <Badge type="info" text="inherited" /> {#tostringshallow}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">toStringShallow</span></span><span class="member-signature-token">({</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">joiner</span></span><span class="member-signature-space"> </span><span class="member-signature-token">=</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="str-lit">', '</span></span><span class="member-signature-token">,</span></span><span class="member-signature-line"><span class="member-signature-token"><span class="type">DiagnosticLevel</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">minLevel</span></span><span class="member-signature-space"> </span><span class="member-signature-token">= DiagnosticLevel.debug,</span></span><span class="member-signature-line"><span class="member-signature-token">});</span></span></div></div>

Returns a one-line detailed description of the object.

This description is often somewhat long. This includes the same
information given by [toStringDeep](https://api.flutter.dev/flutter/foundation/DiagnosticableTree/toStringDeep.html), but does not recurse to any children.

`joiner` specifies the string which is place between each part obtained
from [debugFillProperties](https://api.flutter.dev/flutter/foundation/Diagnosticable/debugFillProperties.html). Passing a string such as `'\n '` will result
in a multiline string that indents the properties of the object below its
name (as per [toString](https://api.flutter.dev/flutter/foundation/Diagnosticable/toString.html)).

`minLevel` specifies the minimum [DiagnosticLevel](https://api.flutter.dev/flutter/foundation/DiagnosticLevel.html) for properties included
in the output.

See also:

- [toString](https://api.flutter.dev/flutter/foundation/Diagnosticable/toString.html), for a brief description of the object.
- [toStringDeep](https://api.flutter.dev/flutter/foundation/DiagnosticableTree/toStringDeep.html), for a description of the subtree rooted at this object.

*Inherited from DiagnosticableTree.*

:::details Implementation
```dart
String toStringShallow({String joiner = ', ', DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
  String? shallowString;
  assert(() {
    final result = StringBuffer();
    result.write(toString());
    result.write(joiner);
    final builder = DiagnosticPropertiesBuilder();
    debugFillProperties(builder);
    result.write(
      builder.properties.where((DiagnosticsNode n) => !n.isFiltered(minLevel)).join(joiner),
    );
    shallowString = result.toString();
    return true;
  }());
  return shallowString ?? toString();
}
```
:::

### toStringShort() <Badge type="info" text="inherited" /> {#tostringshort}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">toStringShort</span></span><span class="member-signature-token">()</span></span></div></div>

A short, textual description of this widget.

*Inherited from Widget.*

:::details Implementation
```dart
@override
String toStringShort() {
  final String type = objectRuntimeType(this, 'Widget');
  return key == null ? type : '$type-$key';
}
```
:::

### visibleIf() <Badge type="info" text="extension" /> {#visibleif}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Widget</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">visibleIf</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">condition</span></span><span class="member-signature-token">)</span></span></div></div>

Shows the widget if the condition is true, otherwise returns an empty [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html).

This method provides conditional visibility based on a boolean condition.
When the condition is false, the widget is completely removed from the layout
and replaced with a [SizedBox.shrink](https://api.flutter.dev/flutter/widgets/SizedBox/SizedBox.shrink.html) that takes up no space.

Parameters:

- `condition`: The boolean condition to evaluate.

Returns this widget if condition is true, otherwise a [SizedBox.shrink](https://api.flutter.dev/flutter/widgets/SizedBox/SizedBox.shrink.html).

Example:

```dart
Text('Admin only content')
  .visibleIf(user.isAdmin);

Icon(Icons.star)
  .visibleIf(item.isFavorite);
```

*Available on Widget, provided by the VisibleWidgetExtension extension*

:::details Implementation
```dart
Widget visibleIf(bool condition) =>
    condition ? this : const SizedBox.shrink();
```
:::

### visibleIfNot() <Badge type="info" text="extension" /> {#visibleifnot}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Widget</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">visibleIfNot</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">bool</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">condition</span></span><span class="member-signature-token">)</span></span></div></div>

Shows the widget if the condition is false, otherwise returns an empty [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html).

This method provides inverted conditional visibility. It's equivalent to
calling `visibleIf(!condition)` but provides better semantic clarity.

Parameters:

- `condition`: The boolean condition to evaluate (inverted).

Returns this widget if condition is false, otherwise a [SizedBox.shrink](https://api.flutter.dev/flutter/widgets/SizedBox/SizedBox.shrink.html).

Example:

```dart
Text('Guest content')
  .visibleIfNot(user.isLoggedIn);

Button('Login')
  .visibleIfNot(user.isAuthenticated);
```

*Available on Widget, provided by the VisibleWidgetExtension extension*

:::details Implementation
```dart
Widget visibleIfNot(bool condition) => visibleIf(!condition);
```
:::

### visibleIfNotNull() <Badge type="info" text="extension" /> {#visibleifnotnull}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Widget</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">visibleIfNotNull</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">Object</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">value</span></span><span class="member-signature-token">)</span></span></div></div>

Shows the widget if the value is not null, otherwise returns an empty [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html).

This method provides non-null conditional visibility. Useful for showing
content only when data is available.

Parameters:

- `value`: The value to check for non-null.

Returns this widget if value is not null, otherwise a [SizedBox.shrink](https://api.flutter.dev/flutter/widgets/SizedBox/SizedBox.shrink.html).

Example:

```dart
Text(user.name ?? '')
  .visibleIfNotNull(user.name);

Image.network(imageUrl)
  .visibleIfNotNull(imageUrl);
```

*Available on Widget, provided by the VisibleWidgetExtension extension*

:::details Implementation
```dart
Widget visibleIfNotNull(Object? value) => visibleIf(value != null);
```
:::

### visibleIfNull() <Badge type="info" text="extension" /> {#visibleifnull}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Widget</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">visibleIfNull</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">Object</span></span><span class="member-signature-token">?</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">value</span></span><span class="member-signature-token">)</span></span></div></div>

Shows the widget if the value is null, otherwise returns an empty [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html).

This method provides null-based conditional visibility. Useful for showing
placeholder content or fallback widgets when data is not available.

Parameters:

- `value`: The value to check for null.

Returns this widget if value is null, otherwise a [SizedBox.shrink](https://api.flutter.dev/flutter/widgets/SizedBox/SizedBox.shrink.html).

Example:

```dart
Text('No data available')
  .visibleIfNull(userData);

CircularProgressIndicator()
  .visibleIfNull(loadedContent);
```

*Available on Widget, provided by the VisibleWidgetExtension extension*

:::details Implementation
```dart
Widget visibleIfNull(Object? value) => visibleIf(value == null);
```
:::

### whiteBox() <Badge type="info" text="extension" /> {#whitebox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">whiteBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with white color.

Uses [CupertinoColors.white](https://api.flutter.dev/flutter/cupertino/CupertinoColors/white-constant.html) which provides a pure white background.
This color does not adapt to light/dark mode and remains consistently white.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with white background.

Example:

```dart
Text('Light Mode').whiteBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox whiteBox() => coloredBox(CupertinoColors.white);
```
:::

### whiteBox() <Badge type="info" text="extension" /> {#whitebox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">whiteBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a white colored box.

Uses [Colors.white](https://api.flutter.dev/flutter/material/Colors/white-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with white background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox whiteBox() => coloredBox(Colors.white);
```
:::

### yellowAccentBox() <Badge type="info" text="extension" /> {#yellowaccentbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">yellowAccentBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a yellow accent colored box.

Uses [Colors.yellowAccent](https://api.flutter.dev/flutter/material/Colors/yellowAccent-constant.html) as the background color, which is typically
a brighter, more vibrant version of yellow.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with yellow accent background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox yellowAccentBox() => coloredBox(Colors.yellowAccent);
```
:::

### yellowBox() <Badge type="info" text="extension" /> {#yellowbox}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">yellowBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with system yellow color.

Uses [CupertinoColors.systemYellow](https://api.flutter.dev/flutter/cupertino/CupertinoColors/systemYellow-constant.html) which adapts to light/dark mode.
This is the standard yellow color used throughout iOS interfaces,
commonly used for warnings or attention-grabbing elements.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) containing the current widget with yellow background.

Example:

```dart
Icon(CupertinoIcons.exclamationmark_triangle).yellowBox()
```

*Available on Widget, provided by the CupertinoBoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox yellowBox() => coloredBox(CupertinoColors.systemYellow);
```
:::

### yellowBox() <Badge type="info" text="extension" /> {#yellowbox-2}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">ColoredBox</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">yellowBox</span></span><span class="member-signature-token">()</span></span></div></div>

Wraps the widget in a yellow colored box.

Uses [Colors.yellow](https://api.flutter.dev/flutter/material/Colors/yellow-constant.html) as the background color.

Returns a [ColoredBox](https://api.flutter.dev/flutter/widgets/ColoredBox-class.html) with yellow background containing this widget.

*Available on Widget, provided by the BoxColorsExtension extension*

:::details Implementation
```dart
ColoredBox yellowBox() => coloredBox(Colors.yellow);
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
the [hashCode](/api/package-ivs_projekt_2_widgets_display_calculator_expression_field/CalculatorExpressionField#prop-hashcode) method as well to maintain consistency.

*Inherited from Widget.*

:::details Implementation
```dart
@override
@nonVirtual
bool operator ==(Object other) => super == other;
```
:::

