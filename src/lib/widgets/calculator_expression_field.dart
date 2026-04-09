import 'package:flutter/material.dart';
import 'package:math_keyboard/math_keyboard.dart';

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
  final MathFieldEditingController controller;

  /// Focus node used to restore keyboard focus after function insertion.
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      // We use MathField here for native LaTeX rendering.
      // opensKeyboard is set to false because we want to embed the math keyboard
      // inside our custom calculator_function_pad.dart instead of using the overlay.
      child: InputDecorator(
        decoration: const InputDecoration(
          labelText: 'Expression',
          hintText: 'Enter your calculation here',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.functions),
        ),
        child: ClipRect(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: MathField(
              controller: controller,
              focusNode: focusNode,
              opensKeyboard: false,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
