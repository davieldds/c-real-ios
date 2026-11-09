import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../pages/calculator/calculator_page_constants.dart';
import 'calculator_result_viewport.dart';

/// Result panel with action buttons and a custom result viewport.
///
/// This widget is intended to be used by the calculator display and delegates
/// rendering of the scrolling result text to [resultViewport]. It also provides
/// quick actions for copying and formatting the current result.
class CalculatorResultPanel extends StatelessWidget {
  /// Creates the result panel.
  const CalculatorResultPanel({
    super.key,
    required this.resultText,
    required this.resultViewport,
    required this.resultViewportController,
    this.onIncreasePrecisionRequested,
    this.onToggleFractionRequested,
    this.copyButtonKey,
    this.increasePrecisionButtonKey,
    this.toggleFractionButtonKey,
    this.jumpButtonKey,
    this.resultViewportKey,
  });

  /// Text displayed as the calculator result.
  final String resultText;

  /// Viewport widget responsible for rendering the result contents.
  final Widget resultViewport;

  /// Controller used for external viewport navigation actions.
  final CalculatorResultViewportController resultViewportController;

  /// Callback invoked when the precision button is pressed.
  final VoidCallback? onIncreasePrecisionRequested;

  /// Callback invoked when the fraction/decimal toggle is pressed.
  final VoidCallback? onToggleFractionRequested;

  /// Optional key for the copy action button.
  final Key? copyButtonKey;

  /// Optional key for the increase precision action button.
  final Key? increasePrecisionButtonKey;

  /// Optional key for the fraction/decimal toggle action button.
  final Key? toggleFractionButtonKey;

  /// Optional key for the jump-to-most-significant-digit action button.
  final Key? jumpButtonKey;

  /// Optional key for the result viewport region.
  final Key? resultViewportKey;

  @override
  Widget build(BuildContext context) {
    final ColorScheme scheme = Theme.of(context).colorScheme;
    final bool enableCopy = resultText.trim().isNotEmpty;

    final bool useSplitLayout =
        MediaQuery.of(context).size.width >=
        CalculatorPageConstants.splitLayoutWidth;

    final double iconDimension = useSplitLayout ? 28 : 20;

    final List<Widget> buttons = [
      _ActionButton(
        key: copyButtonKey,
        tooltip: 'Copy result',
        compact: !useSplitLayout,
        onPressed: enableCopy ? () => _copyResult(context, resultText) : null,
        child: Icon(Icons.copy, size: iconDimension),
      ),
      const SizedBox(width: 8),
      _ActionButton(
        key: increasePrecisionButtonKey,
        tooltip: onIncreasePrecisionRequested == null
            ? 'The result is precise'
            : 'Increase precision',
        compact: !useSplitLayout,
        onPressed: onIncreasePrecisionRequested,
        child: SvgPicture.asset(
          'assets/icons/AddPrecisionIcon.svg',
          width: iconDimension,
          height: iconDimension,
          colorFilter: ColorFilter.mode(
            scheme.onSecondaryContainer,
            BlendMode.srcIn,
          ),
        ),
      ),
      const SizedBox(width: 8),
      _ActionButton(
        key: toggleFractionButtonKey,
        tooltip: onToggleFractionRequested == null
            ? 'Result is not fractional'
            : 'Toggle fraction / decimal',
        compact: !useSplitLayout,
        onPressed: onToggleFractionRequested,
        child: SvgPicture.asset(
          'assets/icons/SwitchIcon.svg',
          width: iconDimension,
          height: iconDimension,
          colorFilter: ColorFilter.mode(
            scheme.onSecondaryContainer,
            BlendMode.srcIn,
          ),
        ),
      ),
      const SizedBox(width: 8),
      AnimatedBuilder(
        animation: resultViewportController,
        builder: (context, _) {
          final bool canJump =
              resultViewportController.canJumpToMostSignificantDigit;
          return _ActionButton(
            key: jumpButtonKey,
            tooltip: canJump
                ? 'Jump to most significant digit'
                : 'No left overflow to jump to',
            compact: !useSplitLayout,
            onPressed: canJump
                ? resultViewportController.jumpToMostSignificantDigit
                : null,
            child: Icon(Icons.first_page, size: iconDimension),
          );
        },
      ),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 14.0,
        vertical: useSplitLayout ? 10.0 : 6.0,
      ),
      child: useSplitLayout
          ? [
              ...buttons,
              const SizedBox(width: 12),
              Expanded(key: resultViewportKey, child: resultViewport),
            ].row()
          : [
              Expanded(key: resultViewportKey, child: resultViewport),
              const SizedBox(height: 6),
              buttons.row(mainAxisAlignment: MainAxisAlignment.center),
            ].column(),
    );
  }

  // Copies the current result to the clipboard and shows feedback.
  void _copyResult(BuildContext context, String value) {
    // Use a single clipboard write so the OS can surface it immediately.
    Clipboard.setData(ClipboardData(text: value));
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Result copied to clipboard')));
  }
}

/// Small circular button used in the result action row.
class _ActionButton extends StatelessWidget {
  const _ActionButton({
    super.key,
    required this.tooltip,
    required this.onPressed,
    required this.child,
    this.compact = false,
  });

  final String tooltip;
  final VoidCallback? onPressed;
  final Widget child;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final bool isEnabled = onPressed != null;

    return Tooltip(
      message: tooltip,
      child: AnimatedScale(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOutBack,
        scale: isEnabled ? 1 : 0.94,
        child: IconButton.filledTonal(
          iconSize: compact ? 20 : 28,
          onPressed: onPressed,
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(compact ? 12 : 16),
            ),
            padding: EdgeInsets.all(compact ? 8 : 12),
          ),
          icon: child,
        ),
      ),
    );
  }
}
