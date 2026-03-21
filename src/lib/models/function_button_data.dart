import 'package:flutter/foundation.dart';

/// Immutable description of a single scientific function button.
///
/// The [label] is shown to the user, while [insertion] is inserted into the
/// expression field when the button is pressed.
@immutable
class FunctionButtonData {
  /// Creates a function button descriptor.
  const FunctionButtonData({required this.label, required this.insertion});

  /// User-visible button label.
  final String label;

  /// Text inserted into the expression field.
  final String insertion;
}
