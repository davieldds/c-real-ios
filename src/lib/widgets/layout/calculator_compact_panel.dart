import 'package:exui/exui.dart';
import 'package:flutter/material.dart';

import '../../pages/calculator/compact_panel_view.dart';

/// Compact layout panel switcher for small screens.
///
/// Renders a segmented control that toggles between keypad and history,
/// and displays the active panel below it.
class CalculatorCompactPanel extends StatelessWidget {
  /// Creates the compact panel switcher.
  const CalculatorCompactPanel({
    super.key,
    required this.activeView,
    required this.onViewChanged,
    required this.keypadPanel,
    required this.historyPanel,
    this.segmentWidth = 220,
    this.segmentHeight = 40,
    this.headerPadding = const EdgeInsets.only(left: 24, top: 24),
    this.transitionDuration = const Duration(milliseconds: 200),
    this.indicatorDuration = const Duration(milliseconds: 250),
  });

  /// Currently selected panel.
  final CompactPanelView activeView;

  /// Callback invoked when the user selects a new panel.
  final ValueChanged<CompactPanelView> onViewChanged;

  /// Widget shown when [activeView] is [CompactPanelView.keypad].
  final Widget keypadPanel;

  /// Widget shown when [activeView] is [CompactPanelView.history].
  final Widget historyPanel;

  /// Width of the segmented control.
  final double segmentWidth;

  /// Height of the segmented control.
  final double segmentHeight;

  /// Padding for the segmented control in the stack.
  final EdgeInsets headerPadding;

  /// Duration for panel fade/size transitions.
  final Duration transitionDuration;

  /// Duration for the indicator slide animation.
  final Duration indicatorDuration;

  @override
  Widget build(BuildContext context) {
    final bool isKeypad = activeView == CompactPanelView.keypad;

    final Widget segmentButton = _SegmentedControl(
      width: segmentWidth,
      height: segmentHeight,
      isKeypadSelected: isKeypad,
      indicatorDuration: indicatorDuration,
      onKeypadPressed: () => _selectView(context, CompactPanelView.keypad),
      onHistoryPressed: () => _selectView(context, CompactPanelView.history),
    );

    return Stack(
      children: [
        [
          Expanded(
            child: AnimatedSwitcher(
              duration: transitionDuration,
              child: isKeypad
                  ? KeyedSubtree(
                      key: const ValueKey<String>('keypad'),
                      child: keypadPanel,
                    )
                  : KeyedSubtree(
                      key: const ValueKey<String>('history'),
                      child: historyPanel,
                    ),
            ),
          ),
        ].column(),
        Positioned(
          left: headerPadding.left,
          top: headerPadding.top,
          child: segmentButton,
        ),
      ],
    );
  }

  void _selectView(BuildContext context, CompactPanelView view) {
    if (view == activeView) {
      return;
    }
    onViewChanged(view);
  }
}

/// Segmented control used by the compact panel switcher.
class _SegmentedControl extends StatelessWidget {
  const _SegmentedControl({
    required this.width,
    required this.height,
    required this.isKeypadSelected,
    required this.indicatorDuration,
    required this.onKeypadPressed,
    required this.onHistoryPressed,
  });

  final double width;
  final double height;
  final bool isKeypadSelected;
  final Duration indicatorDuration;
  final VoidCallback onKeypadPressed;
  final VoidCallback onHistoryPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final double halfWidth = width / 2;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            duration: indicatorDuration,
            curve: Curves.easeInOutCubic,
            alignment: isKeypadSelected
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Container(
              width: halfWidth,
              height: height,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(height / 2),
              ),
            ),
          ),
          [
            Expanded(
              child: _SegmentTab(
                title: 'Keypad',
                icon: Icons.dialpad_outlined,
                isSelected: isKeypadSelected,
                onPressed: onKeypadPressed,
              ),
            ),
            Expanded(
              child: _SegmentTab(
                title: 'History',
                icon: Icons.history,
                isSelected: !isKeypadSelected,
                onPressed: onHistoryPressed,
              ),
            ),
          ].row(),
        ],
      ),
    );
  }
}

/// Single tab inside the segmented control.
class _SegmentTab extends StatelessWidget {
  const _SegmentTab({
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onPressed,
  });

  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: SizedBox(
        height: double.infinity,
        child: [
          Icon(
            icon,
            size: 18,
            color: isSelected
                ? theme.colorScheme.onPrimary
                : theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 8),
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 250),
            style: TextStyle(
              color: isSelected
                  ? theme.colorScheme.onPrimary
                  : theme.colorScheme.onSurfaceVariant,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
            child: Text(title),
          ),
        ].row(mainAxisAlignment: MainAxisAlignment.center),
      ),
    );
  }
}
