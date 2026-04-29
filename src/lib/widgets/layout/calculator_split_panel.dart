import 'package:exui/exui.dart';
import 'package:flutter/material.dart';

/// Two-column layout used by the calculator on wide screens.
///
/// The widget renders [leading] and [trailing] panels side-by-side with
/// consistent spacing and optional outer padding.
class CalculatorSplitPanel extends StatelessWidget {
  /// Creates a split panel layout.
  const CalculatorSplitPanel({
    super.key,
    required this.leading,
    required this.trailing,
    this.spacing = 10,
    this.padding,
  });

  /// Left (leading) panel widget.
  final Widget leading;

  /// Right (trailing) panel widget.
  final Widget trailing;

  /// Horizontal spacing between the two panels.
  final double spacing;

  /// Optional outer padding for the row.
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final row = [
      Expanded(child: leading),
      SizedBox(width: spacing),
      Expanded(child: trailing),
    ].row();

    if (padding == null) {
      return row;
    }

    return Padding(padding: padding!, child: row);
  }
}
