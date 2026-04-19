import 'package:exui/exui.dart';
import 'package:flutter/material.dart';

import '../models/function_button_data.dart';

/// Scientific function pad with quick actions and insertion buttons.
///
/// This widget groups common calculator helper actions together with a grid
/// of scientific functions. It is designed to be reusable across calculator
/// layouts and exposes callbacks for all user interactions.
class CalculatorFunctionPad extends StatelessWidget {
  /// Creates the function pad widget.
  const CalculatorFunctionPad({
    super.key,
    required this.functionRows,
    required this.onDeletePressed,
    required this.onClearPressed,
    required this.onFractionPressed,
    required this.onFunctionPressed,
  });

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: [
            Wrap(
              spacing: 8,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  'Scientific functions',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                IconButton.filledTonal(
                  onPressed: onDeletePressed,
                  icon: const Icon(Icons.backspace_outlined),
                  tooltip: 'Delete',
                ),
                FilledButton.tonal(
                  onPressed: onClearPressed,
                  child: const Text('Clear'),
                ),
                FilledButton.tonal(
                  onPressed: onFractionPressed,
                  child: const Text('a/b'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Column(
                children: functionRows
                    .map(
                      (row) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: row
                                .map(
                                  (button) => Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 4.0,
                                      ),
                                      child: OutlinedButton(
                                        onPressed: () =>
                                            onFunctionPressed(button.insertion),
                                        style: OutlinedButton.styleFrom(
                                          minimumSize: const Size.fromHeight(
                                            48,
                                          ),
                                          textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                          ),
                                        ),
                                        child: Text(button.label),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ].column(crossAxisAlignment: CrossAxisAlignment.start),
        ),
      ),
    );
  }
}
