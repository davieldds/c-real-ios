import 'package:flutter/material.dart';
import 'package:flutter_welcome_kit/flutter_welcome_kit.dart';

/// Identifiers for tutorial target widgets.
enum CalculatorTutorialTarget {
  displayPanel,
  keypadPanel,
  historyPanel,
  resultCopyButton,
  resultPrecisionButton,
  resultToggleButton,
  resultJumpButton,
  resultField,
  menuButton,
}

/// Immutable tutorial content and presentation metadata for one step.
class CalculatorTutorialStepContent {
  const CalculatorTutorialStepContent({
    required this.target,
    required this.title,
    required this.description,
    required this.icon,
    required this.highlightShape,
    required this.animation,
    this.allowTargetTap = false,
    this.isLast = false,
  });

  final CalculatorTutorialTarget target;
  final String title;
  final String description;
  final IconData icon;
  final HighlightShape highlightShape;
  final StepAnimation animation;
  final bool allowTargetTap;
  final bool isLast;
}

/// Ordered tutorial copy for the calculator onboarding flow.
const List<CalculatorTutorialStepContent> calculatorTutorialContent = [
  CalculatorTutorialStepContent(
    target: CalculatorTutorialTarget.displayPanel,
    title: 'Expression Display',
    description:
        'Enter your formula here and press Enter or = button to evaluate.',
    icon: Icons.calculate_outlined,
    highlightShape: HighlightShape.rounded,
    animation: StepAnimation.fadeSlideUp,
  ),
  CalculatorTutorialStepContent(
    target: CalculatorTutorialTarget.keypadPanel,
    title: 'Keypad',
    description:
        'Use advanced operations and constants from this keypad or write them with your keyboard.',
    icon: Icons.grid_view_outlined,
    highlightShape: HighlightShape.rounded,
    animation: StepAnimation.fadeSlideLeft,
  ),
  CalculatorTutorialStepContent(
    target: CalculatorTutorialTarget.resultCopyButton,
    title: 'Copy Result',
    description: 'Copy the current result to your clipboard.',
    icon: Icons.copy,
    highlightShape: HighlightShape.circle,
    animation: StepAnimation.fadeSlideUp,
  ),
  CalculatorTutorialStepContent(
    target: CalculatorTutorialTarget.resultPrecisionButton,
    title: 'Increase Precision',
    description:
        'Calculate more digits of the result when you need additional precision.',
    icon: Icons.exposure_plus_1,
    highlightShape: HighlightShape.circle,
    animation: StepAnimation.fadeSlideUp,
  ),
  CalculatorTutorialStepContent(
    target: CalculatorTutorialTarget.resultToggleButton,
    title: 'Fraction / Decimal',
    description:
        'Toggle between fraction and decimal views for rational results.',
    icon: Icons.swap_horiz,
    highlightShape: HighlightShape.circle,
    animation: StepAnimation.fadeSlideUp,
  ),
  CalculatorTutorialStepContent(
    target: CalculatorTutorialTarget.resultJumpButton,
    title: 'Jump to Most Significant Digit',
    description:
        'Jump directly to the left side of long results when extra digits overflow.',
    icon: Icons.first_page,
    highlightShape: HighlightShape.circle,
    animation: StepAnimation.fadeSlideUp,
  ),
  CalculatorTutorialStepContent(
    target: CalculatorTutorialTarget.resultField,
    title: 'Result Field Scrolling',
    description: 'Scroll in the result field to inspect additional digits.',
    icon: Icons.swap_horiz,
    highlightShape: HighlightShape.rounded,
    animation: StepAnimation.fadeSlideRight,
  ),
  CalculatorTutorialStepContent(
    target: CalculatorTutorialTarget.historyPanel,
    title: 'Calculation History',
    description: 'Reuse or delete previous expressions from your history.',
    icon: Icons.history_outlined,
    highlightShape: HighlightShape.rounded,
    animation: StepAnimation.fadeSlideRight,
  ),
  CalculatorTutorialStepContent(
    target: CalculatorTutorialTarget.menuButton,
    title: 'Menu and Help',
    description:
        'Open this menu any time to restart the tutorial, show keybinds or view app details.',
    icon: Icons.menu,
    highlightShape: HighlightShape.circle,
    animation: StepAnimation.fade,
    isLast: true,
  ),
];
