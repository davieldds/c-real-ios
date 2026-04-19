import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    required this.onSubmitRequested,
    this.errorText,
    this.helperText,
  });

  /// Controller used to read and modify the expression text.
  final MathFieldEditingController controller;

  /// Focus node used to restore keyboard focus after function insertion.
  final FocusNode focusNode;

  /// Callback invoked when Enter/NumpadEnter is pressed.
  final VoidCallback onSubmitRequested;

  /// Optional inline error shown under the expression editor.
  final String? errorText;

  /// Optional helper text shown below the expression editor.
  final String? helperText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      // We use MathField here for native LaTeX rendering.
      // opensKeyboard is set to false because we want to embed the math keyboard
      // inside our custom calculator_function_pad.dart instead of using the overlay.
      child: SizedBox.expand(
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: 'Expression',
            hintText: 'Enter your calculation here',
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.functions),
            errorText: errorText,
            helperText: helperText,
          ),
          child: Focus(
            onKeyEvent: (node, event) {
              if (event is KeyDownEvent &&
                  (event.logicalKey == LogicalKeyboardKey.enter ||
                      event.logicalKey == LogicalKeyboardKey.numpadEnter)) {
                onSubmitRequested();
                return KeyEventResult.handled;
              }
              return KeyEventResult.ignored;
            },
            child: SizedBox.expand(
              child: Align(
                alignment: Alignment.centerLeft,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(minHeight: 48),
                  child: MathField(
                    controller: controller,
                    focusNode: focusNode,
                    opensKeyboard: false,
                    onSubmitted: (_) => onSubmitRequested(),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                      // Work around math_keyboard's high baseline by biasing
                      // the field's own internal content box downward.
                      contentPadding: EdgeInsets.only(top: 18.0, bottom: 0.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
