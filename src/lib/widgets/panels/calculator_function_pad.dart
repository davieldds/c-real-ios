import 'package:exui/exui.dart';
import 'package:flutter/material.dart';

import '../../models/function_button_data.dart';
import '../../pages/calculator/calculator_page_constants.dart';

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
    final bool useSplitLayout =
        MediaQuery.of(context).size.width >=
        CalculatorPageConstants.splitLayoutWidth;

    final Color numberAccent = Theme.of(
      context,
    ).colorScheme.primary.withValues(alpha: 0.15);
    final Color functionAccent = Theme.of(
      context,
    ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.5);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: useSplitLayout ? 12.0 : 4.0,
        vertical: useSplitLayout ? 12.0 : 4.0,
      ),
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: useSplitLayout ? 12.0 : 8.0,
            vertical: useSplitLayout ? 12.0 : 8.0,
          ),
          child: [
            [
              ?headerAction,
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
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
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          'Clear',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: onDeletePressed,
                        style: TextButton.styleFrom(
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.secondaryContainer,
                          foregroundColor: Theme.of(
                            context,
                          ).colorScheme.onSecondaryContainer,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8,
                          ),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Icon(Icons.backspace_outlined, size: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ].row(),
            SizedBox(height: useSplitLayout ? 12 : 8),
            Expanded(
              child: functionRows
                  .map(
                    (row) => Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: useSplitLayout ? 8.0 : 6.0,
                        ),
                        child: row
                            .map(
                              (button) => Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 3.0,
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
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          useSplitLayout ? 16 : 14,
                                        ),
                                      ),
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        button.label,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: button.isNumber ? 20 : 16,
                                          fontWeight: button.isNumber
                                              ? FontWeight.bold
                                              : FontWeight.w600,
                                        ),
                                      ),
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
