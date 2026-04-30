---
title: "CustomTeXParser"
description: "API documentation for CustomTeXParser class from custom_tex_parser"
category: "Classes"
library: "custom_tex_parser"
outline: [2, 3]
editLink: false
prev: false
next: false
---

# CustomTeXParser

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">class</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">CustomTeXParser</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">extends</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">TeXParser</span></span></span></div></div>

Custom TeX parser that adds calculator-specific behavior.

## Constructors {#section-constructors}

### CustomTeXParser() {#ctor-customtexparser}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="fn">CustomTeXParser</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">inputString</span></span><span class="member-signature-token">)</span></span></div></div>

Creates a parser with normalized input.

:::details Implementation
```dart
CustomTeXParser(String inputString) : super(replace(inputString));
```
:::

## Properties {#section-properties}

### hashCode <Badge type="tip" text="no setter" /> <Badge type="info" text="inherited" /> {#prop-hashcode}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">int</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="kw">get</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">hashCode</span></span></span></div></div>

The hash code for this object.

A hash code is a single integer which represents the state of the object
that affects [operator ==](/api/package-ivs_projekt_2_utils_parsing_custom_tex_parser/CustomTeXParser#operator-equals) comparisons.

All objects have hash codes.
The default hash code implemented by [Object](https://api.flutter.dev/flutter/dart-core/Object-class.html)
represents only the identity of the object,
the same way as the default [operator ==](/api/package-ivs_projekt_2_utils_parsing_custom_tex_parser/CustomTeXParser#operator-equals) implementation only considers objects
equal if they are identical (see [identityHashCode](https://api.flutter.dev/flutter/dart-core/identityHashCode.html)).

If [operator ==](/api/package-ivs_projekt_2_utils_parsing_custom_tex_parser/CustomTeXParser#operator-equals) is overridden to use the object state instead,
the hash code must also be changed to represent that state,
otherwise the object cannot be used in hash based data structures
like the default [Set](https://api.flutter.dev/flutter/dart-core/Set-class.html) and [Map](https://api.flutter.dev/flutter/dart-core/Map-class.html) implementations.

Hash codes must be the same for objects that are equal to each other
according to [operator ==](/api/package-ivs_projekt_2_utils_parsing_custom_tex_parser/CustomTeXParser#operator-equals).
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

If a subclass overrides [hashCode](/api/package-ivs_projekt_2_utils_parsing_custom_tex_parser/CustomTeXParser#prop-hashcode), it should override the
[operator ==](/api/package-ivs_projekt_2_utils_parsing_custom_tex_parser/CustomTeXParser#operator-equals) operator as well to maintain consistency.

*Inherited from Object.*

:::details Implementation
```dart
external int get hashCode;
```
:::

### inputString <Badge type="tip" text="final" /> <Badge type="info" text="inherited" /> {#prop-inputstring}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="kw">final</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="type">String</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">inputString</span></span></span></div></div>

The TeX String to parse.

*Inherited from TeXParser.*

:::details Implementation
```dart
final String inputString;
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

### addFactorial() {#addfactorial}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">addFactorial</span></span><span class="member-signature-token">(</span><span class="member-signature-token"><span class="type">List</span></span><span class="member-signature-token">&lt;</span><span class="member-signature-token"><span class="type">Expression</span></span><span class="member-signature-token">&gt;</span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="param">result</span></span><span class="member-signature-token">)</span></span></div></div>

Checks whether factorial can be calculated.

:::details Implementation
```dart
@override
void addFactorial(List<Expression> result) {
  &#47;&#47; Convert factorial into a variable token so it is kept as a postfix symbol.
  final operand = result.removeLast();
  result.add(Variable('${operand.toString()}!'));
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

### parse() <Badge type="info" text="inherited" /> {#parse}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">Expression</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">parse</span></span><span class="member-signature-token">()</span></span></div></div>

Parses TeX to math_expression.

*Inherited from TeXParser.*

:::details Implementation
```dart
&#47;&#47; ignore: code-metrics, long-method
Expression parse() {
  tokenize();
  shuntingYard();
  final result = <Expression>[];
  Expression left;
  Expression right;
  for (final element in _outputStack) {
    switch (element) {
      case '+':
        right = result.removeLast();
        left = result.removeLast();
        result.add(left + right);
        break;
      case '-':
        right = result.removeLast();
        left = result.removeLast();
        if (left.toString() == '0') {
          result.add(-right);
        } else {
          result.add(left - right);
        }
        break;
      case r'\times':
      case r'\cdot':
        right = result.removeLast();
        left = result.removeLast();
        result.add(left * right);
        break;
      case r'\div':
        right = result.removeLast();
        left = result.removeLast();
        result.add(left &#47; right);
        break;
      case r'\frac':
        right = result.removeLast();
        left = result.removeLast();
        result.add(left &#47; right);
        break;
      case '^':
        right = result.removeLast();
        left = result.removeLast();
        result.add(left ^ right);
        break;
      case r'\sin':
        result.add(Sin(result.removeLast()));
        break;
      case r'\cos':
        result.add(Cos(result.removeLast()));
        break;
      case r'\tan':
        result.add(Tan(result.removeLast()));
        break;
      case r'\sin^{-1}':
        result.add(Asin(result.removeLast()));
        break;
      case r'\cos^{-1}':
        result.add(Acos(result.removeLast()));
        break;
      case r'\tan^{-1}':
        result.add(Atan(result.removeLast()));
        break;
      case r'\ln':
        result.add(Ln(result.removeLast()));
        break;
      case r'\log':
        right = result.removeLast();
        left = result.removeLast();
        result.add(Log(left, right));
        break;
      case r'\sqrt':
        final arg = result.removeLast();
        result.add(arg ^ (Number(1.0) &#47; Number(2.0)));
        break;
      case r'\nrt':
        left = result.removeLast();
        right = result.removeLast();
        result.add(left ^ (Number(1.0) &#47; right));
        break;
      case r'\abs':
        result.add(Abs(result.removeLast()));
        break;
      case '!':
        try {
          addFactorial(result);
          &#47;&#47; ignore: empty_catches
        } catch (e) {}
        break;
      case r'\%':
        right = result.removeLast();
        result.add(right &#47; Number(100));
        break;
      &#47;&#47; workaround for WASM casting bug, needs at least one non-string case
      &#47;&#47; remove when https:&#47;&#47;github.com&#47;dart-lang&#47;sdk&#47;issues&#47;59782 is fixed
      case 0:
      default:
        if (element is TextNumber) {
          result.add(element);
        } else if (element is String) {
          result.add(Variable(element));
        } else {
          result.add(Number(element));
        }
    }
  }
  &#47;&#47; ignore: code-metrics
  if (result.length == 1) {
    return result[0];
  } else {
    throw 'Parse Error';
  }
}
```
:::

### shuntingYard() <Badge type="info" text="inherited" /> {#shuntingyard}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">shuntingYard</span></span><span class="member-signature-token">()</span></span></div></div>

Creates an AST from the String.

*Inherited from TeXParser.*

:::details Implementation
```dart
&#47;&#47; ignore: code-metrics
void shuntingYard() {
  for (var i = 0; i < _stream.length; i++) {
    switch (_stream[i][1]) {
      case 'b':
        _outputStack.add(_stream[i][0]);
        break;
      case 'f':
        _operatorStack.add(_stream[i]);
        break;
      case 'l':
        if (_stream[i][0] == r'\left|') {
          _operatorStack.add([r'\abs', 'f']);
        }
        _operatorStack.add(_stream[i]);
        break;
      case 'r':
        while (_operatorStack.isNotEmpty) {
          if (_operatorStack.last[1] != 'l') {
            _outputStack.add(_operatorStack.last[0]);
            _operatorStack.removeLast();
            continue;
          } else {
            _operatorStack.removeLast();
          }
          break;
        }
        break;
      case 'u':
        if (_stream[i][0] is TextNumber || _stream[i][0] is num) {
          _outputStack.add(_stream[i][0]);
        }
        break;
      default:
        while (_operatorStack.isNotEmpty) {
          if (_operatorStack.last[1] == 'f') {
            _outputStack.add(_operatorStack.last[0]);
            _operatorStack.removeLast();
            continue;
          }
          if (_operatorStack.last[1] is List) {
            if (_operatorStack.last[1][1] > _stream[i][1][1]) {
              _outputStack.add(_operatorStack.last[0]);
              _operatorStack.removeLast();
              continue;
            } else if (_operatorStack.last[1][1] == _stream[i][1][1] &&
                _operatorStack.last[1][2] == 'l') {
              _outputStack.add(_operatorStack.last[0]);
              _operatorStack.removeLast();
              continue;
            }
          }
          break;
        }
        _operatorStack.add(_stream[i]);
    }
  }
  while (_operatorStack.isNotEmpty) {
    _outputStack.add(_operatorStack.last[0]);
    _operatorStack.removeLast();
  }
}
```
:::

### tokenize() <Badge type="info" text="inherited" /> {#tokenize}

<div class="member-signature"><div class="member-signature-code" data-signature-normalized="true"><span class="member-signature-line"><span class="member-signature-token"><span class="type">void</span></span><span class="member-signature-space"> </span><span class="member-signature-token"><span class="fn">tokenize</span></span><span class="member-signature-token">()</span></span></div></div>

Traverses the TeX String and creates classifies symbols.

*Inherited from TeXParser.*

:::details Implementation
```dart
&#47;&#47; ignore: code-metrics, long-method
void tokenize() {
  &#47;&#47;&#47; types:
  &#47;&#47;&#47; b -> basic
  &#47;&#47;&#47; f -> function
  &#47;&#47;&#47; l -> left parenthesis
  &#47;&#47;&#47; r -> right parenthesis
  &#47;&#47;&#47; o+digit+(l) -> operator + precedence + (left-associativity)
  &#47;&#47;&#47; u -> other
  final integer = digit().plus().flatten();
  final number = ((integer | char('.').and()) &
          (char('.') & integer).pick(1).optional() &
          (char('E') & pattern('+-').optional() & integer).optional())
      .flatten()
      .map((value) => TextNumber(value));

  final pi = (string('{') & string(r'\pi') & string('}')).map((a) => 'pi');
  final e = (string('{') & string('e') & string('}')).map((a) => 'e');
  final variable =
      (string('{') & letter().plus().flatten() & string('}')).pick(1);

  final basic = (number | pi | e | variable).map((v) => [v, 'b']);

  final sqrt =
      (string(r'\sqrt') & char('{').and()).map((v) => [r'\sqrt', 'f']);
  final nrt = (string(r'\sqrt') & char('[').and()).map((v) => [r'\nrt', 'f']);
  final simpleFunction = ((string(r'\sin^{-1}') |
              string(r'\cos^{-1}') |
              string(r'\tan^{-1}') |
              string(r'\sin') |
              string(r'\cos') |
              string(r'\tan') |
              string(r'\ln')) &
          string('(').and())
      .pick(0)
      .map((v) => [v, 'f']);
  final otherFunction =
      (string(r'\frac') | string(r'\log')).map((v) => [v, 'f']);
  final function = simpleFunction | otherFunction | sqrt | nrt;

  final lp = (string('(') | char('{') | string(r'\left|') | char('['))
      .map((v) => [v, 'l']);

  final rp = (string(')') | char('}') | string(r'\right|') | char(']'))
      .map((v) => [v, 'r']);

  final plus = char('+').map((v) => [
        v,
        ['o', 2, 'l'],
      ]);

  final minus = char('-').map((v) => [
        v,
        ['o', 2, 'l'],
      ]);

  final times = (string(r'\times') | string(r'\cdot')).map((v) => [
        v,
        ['o', 3, 'l'],
      ]);

  final divide = string(r'\div').map((v) => [
        v,
        ['o', 3, 'l'],
      ]);

  final expo = char('^').map((v) => [
        v,
        ['o', 4, 'r'],
      ]);

  final factorial = char('!').map((v) => [
        v,
        ['o', 5, 'l'],
      ]);

  final percent = string(r'\%').map((v) => [
        v,
        ['o', 5, 'l'],
      ]);

  final operator = plus | minus | times | divide | expo | factorial | percent;

  final subNumber = (char('_') & digit().map(int.parse)).pick(1);

  final underline = char('_');

  final other = (subNumber | underline).map((v) => [v, 'u']);

  final tokenize =
      (basic | function | lp | rp | operator | other).star().end();

  final tex = inputString.replaceAll(' ', '');
  _stream = tokenize.parse(tex).value;

  if (_stream[0][0] == '-' && _stream[1][1].contains(RegExp('[bfl]'))) {
    _stream.insert(0, [0, 'b']);
  }
  if (_stream[0][0] == '!' || _stream[0][0] == r'\%') {
    throw 'Unable to parse';
  }

  for (var i = 0; i < _stream.length; i++) {
    &#47;&#47;&#47; wrong syntax: fr fo lr lo oo (b&#47;r postfix or wrong)
    &#47;&#47;&#47; need times: bb bf bl rb rf rl !f !l
    &#47;&#47;&#47; negative number: -(bfl) &#47; l-(bfl)

    &#47;&#47; negative number
    if (i > 0 &&
        i < _stream.length - 1 &&
        _stream[i - 1][1] == 'l' &&
        _stream[i][0] == '-' &&
        _stream[i + 1][1].contains(RegExp('[bfl]'))) {
      _stream.insert(i, [0, 'b']);
      i++;
      continue;
    }

    &#47;&#47; add ×
    if (i < _stream.length - 1 && _stream[i][1] == 'b') {
      switch (_stream[i + 1][1]) {
        case 'b':
        case 'f':
        case 'l':
          _stream.insert(i + 1, [
            r'\times',
            ['o', 3, 'l'],
          ]);
          i++;
          break;
        default:
          break;
      }
      continue;
    }
    if (i < _stream.length - 1 && _stream[i][1] == 'r') {
      var insertTimes = false;
      switch (_stream[i + 1][1]) {
        case 'b':
        case 'f':
          insertTimes = true;
          break;
        case 'l':
          &#47;&#47; In case there is a closing parenthesis directly followed by an
          &#47;&#47; opening one, some further checks are necessary.
          if (_stream[i][0] == ')' && _stream[i + 1][0] == '(') {
            insertTimes = true;
          } else if (_stream[i][0] == '}' && _stream[i + 1][0] == '(') {
            &#47;&#47; This case is unfavorable. If the '}' closes the second argument
            &#47;&#47; of a fraction or marks the end of an exponent, we want to
            &#47;&#47; insert 'times'. However, if '}' closes the base argument of a
            &#47;&#47; logarithm function, we don't want to insert a times symbol.
            &#47;&#47; That's why we have to check what's in front of the matching
            &#47;&#47; opening '{'.
            final stack = ['}'];
            var j = i - 1;
            while (j > 0 && stack.isNotEmpty) {
              if (_stream[j][0] == '{') {
                stack.removeLast();
              } else if (_stream[j][0] == '}') {
                stack.add('}');
              }
              j--;
            }
            if (j >= 0 && _stream[j][0] != '_') {
              insertTimes = true;
            }
          }
          break;
        default:
          break;
      }
      if (insertTimes) {
        _stream.insert(i + 1, [
          r'\times',
          ['o', 3, 'l'],
        ]);
        i++;
      }
      continue;
    }
    if (i < _stream.length - 1 &&
        (_stream[i][0] == '!' || _stream[i][0] == r'\%')) {
      switch (_stream[i + 1][1]) {
        case 'b':
        case 'l':
        case 'f':
          _stream.insert(i + 1, [
            r'\times',
            ['o', 3, 'l'],
          ]);
          i++;
          break;
        default:
          break;
      }
      continue;
    }

    &#47;&#47; check wrong syntax
    if (i > 0 && (_stream[i][1] == 'r' || _stream[i][1] is List)) {
      if (_stream[i - 1][1] is List && _stream[i - 1][1][1] != 5) {
        throw 'Unable to parse';
      }
      switch (_stream[i - 1][1]) {
        case 'l':
        case 'f':
          throw 'Unable to parse';
        default:
          break;
      }
      continue;
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

