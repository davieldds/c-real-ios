import 'package:exui/exui.dart';
import 'package:flutter/material.dart';

import '../../models/function_button_data.dart';

/// Scientific function pad with quick actions and insertion buttons.
///
/// This widget groups common calculator helper actions together with a grid
/// of scientific functions. It is designed to be reusable across calculator
/// layouts and exposes callbacks for all user interactions.
class CalculatorFunctionPad extends StatelessWidget {
  /// Creates the function pad widget.
  const CalculatorFunctionPad({
    super.key,
    this.headerAction,
    required this.functionRows,
    required this.onDeletePressed,
    required this.onClearPressed,
    required this.onFractionPressed,
    required this.onFunctionPressed,
    this.buttonKeys = const <String, Key>{},
  });

  /// Optional action widget shown in the header (e.g., segmented control for compact view).
  final Widget? headerAction;

  /// Button rows displayed in the scientific function grid.
  final List<List<FunctionButtonData>> functionRows;

  /// Callback invoked when the delete action is pressed.
  final VoidCallback onDeletePressed;

  /// Callback invoked when the clear action is pressed.
  final VoidCallback onClearPressed;

  /// Callback invoked when the fraction conversion action is pressed.
  final VoidCallback onFractionPressed;

  /// Callback invoked with the text inserted by a function button.
  final ValueChanged<String> onFunctionPressed;

  /// Optional per-button keys indexed by insertion token.
  final Map<String, Key> buttonKeys;

  @override
  Widget build(BuildContext context) {
    final Color numberAccent = Theme.of(
      context,
    ).colorScheme.primary.withValues(alpha: 0.15);
    final Color functionAccent = Theme.of(
      context,
    ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.5);

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: [
            [
              ?headerAction,
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      TextButton(
                        onPressed: onClearPressed,
                        style: TextButton.styleFrom(
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.secondaryContainer,
                          foregroundColor: Theme.of(
                            context,
                          ).colorScheme.onSecondaryContainer,
                        ),
                        child: const Text(
                          'Clear',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                        onPressed: onDeletePressed,
                        style: TextButton.styleFrom(
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.secondaryContainer,
                          foregroundColor: Theme.of(
                            context,
                          ).colorScheme.onSecondaryContainer,
                        ),
                        child: const Icon(Icons.backspace_outlined),
                      ),
                    ],
                  ),
                ),
              ),
            ].row(),
            const SizedBox(height: 12),
            Expanded(
              child: functionRows
                  .map(
                    (row) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: row
                            .map(
                              (button) => Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0,
                                  ),
                                  child: TextButton(
                                    key: buttonKeys[button.insertion],
                                    onPressed: () =>
                                        onFunctionPressed(button.insertion),
                                    style: TextButton.styleFrom(
                                      backgroundColor: button.isNumber
                                          ? numberAccent
                                          : functionAccent,
                                      alignment: Alignment.center,
                                      minimumSize: const Size.fromHeight(48),
                                      textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    child: Text(
                                      button.label,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList()
                            .row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                            ),
                      ),
                    ),
                  )
                  .toList()
                  .column(),
            ),
          ].column(crossAxisAlignment: CrossAxisAlignment.start),
        ),
      ),
    );
  }
}
