import 'package:flutter/foundation.dart';

/// Immutable description of a single scientific function button.
///
/// The [label] is shown to the user, while [insertion] is inserted into the
/// expression field when the button is pressed.
@immutable
class FunctionButtonData {
  /// Creates a function button descriptor.
  const FunctionButtonData({
    required this.label,
    required this.insertion,
    this.isNumber = false,
  });

  /// User-visible button label.
  final String label;

  /// Text inserted into the expression field.
  final String insertion;

  /// Whether the button represents a numeric input key.
  final bool isNumber;
}
