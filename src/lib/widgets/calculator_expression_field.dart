import 'package:flutter/material.dart';

/// Expression editor used for manual formula entry.
///
/// This widget provides the main text input area for calculator expressions.
/// It is intentionally generic so that expression parsing and validation logic
/// can be supplied by other parts of the application.
class CalculatorExpressionField extends StatelessWidget {
  /// Creates the expression field widget.
  const CalculatorExpressionField({
    super.key,
    required this.controller,
    required this.focusNode,
  });

  /// Controller used to read and modify the expression text.
  final TextEditingController controller;

  /// Focus node used to restore keyboard focus after function insertion.
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        maxLines: null,
        expands: true,
        textAlignVertical: TextAlignVertical.top,
        decoration: const InputDecoration(
          labelText: 'Expression',
          hintText: 'Enter your calculation here',
          alignLabelWithHint: true,
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.functions),
        ),
      ),
    );
  }
}
