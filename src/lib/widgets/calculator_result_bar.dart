import 'package:exui/exui.dart';
import 'package:flutter/material.dart';

/// Result bar showing the current result and a primary calculate button.
class CalculatorResultBar extends StatelessWidget {
  /// Creates the result bar.
  const CalculatorResultBar({
    super.key,
    required this.resultText,
    required this.onCalculatePressed,
  });

  /// Text displayed as the current calculator result.
  final String resultText;

  /// Callback invoked when the calculate button is pressed.
  final VoidCallback onCalculatePressed;

  @override
  Widget build(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 6.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Result',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      resultText,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ).expanded5,
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox.expand(
          child: FilledButton(
            onPressed: onCalculatePressed,
            style: FilledButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Text('=').fontSize(32),
          ),
        ),
      ).expanded1,
    ].row();
  }
}
