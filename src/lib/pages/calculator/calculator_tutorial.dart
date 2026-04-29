import 'package:flutter/material.dart';
import 'package:flutter_welcome_kit/flutter_welcome_kit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'calculator_page_constants.dart';
import 'calculator_tutorial_content.dart';

/// Global keys used by the calculator tutorial spotlight steps.
class CalculatorTutorialTargets {
  final GlobalKey menuButtonKey = GlobalKey(debugLabel: 'tutorial.menu');
  final GlobalKey displayPanelKey = GlobalKey(debugLabel: 'tutorial.display');
  final GlobalKey keypadPanelKey = GlobalKey(debugLabel: 'tutorial.keypad');
  final GlobalKey historyPanelKey = GlobalKey(debugLabel: 'tutorial.history');
  final GlobalKey resultCopyButtonKey = GlobalKey(
    debugLabel: 'tutorial.result.copy',
  );
  final GlobalKey resultPrecisionButtonKey = GlobalKey(
    debugLabel: 'tutorial.result.precision',
  );
  final GlobalKey resultToggleButtonKey = GlobalKey(
    debugLabel: 'tutorial.result.toggle',
  );
  final GlobalKey resultJumpButtonKey = GlobalKey(
    debugLabel: 'tutorial.result.jump',
  );
  final GlobalKey resultFieldKey = GlobalKey(
    debugLabel: 'tutorial.result.field',
  );
}

/// Encapsulates tutorial step setup, display logic, and persistence updates.
class CalculatorTutorialCoordinator {
  CalculatorTutorialCoordinator({required this.targets});

  static const Duration _manualStepDuration = Duration(days: 365);

  final CalculatorTutorialTargets targets;
  TourController? _tourController;

  /// Cleans up any active overlay when the screen is disposed.
  void dispose() {
    _tourController?.end();
  }

  /// Starts the onboarding tutorial.
  Future<void> start(
    BuildContext context, {
    bool persistCompletion = false,
    VoidCallback? onStart,
    VoidCallback? onEnd,
  }) async {
    _tourController?.end();
    onStart?.call();
    final TourController controller = TourController(
      context: context,
      startDelay: const Duration(milliseconds: 200),
      dismissOnBarrierTap: false,
      steps: _buildSteps(context),
      onComplete: () {
        onEnd?.call();
        _persistIfEnabled(persistCompletion);
      },
      onSkip: () {
        onEnd?.call();
        _persistIfEnabled(persistCompletion);
      },
    );
    _tourController = controller;
    await controller.start();
  }

  List<TourStep> _buildSteps(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return calculatorTutorialContent
        .map(
          (stepContent) => TourStep(
            key: _targetKeyFor(stepContent.target),
            title: stepContent.title,
            description: stepContent.description,
            // Prevent flutter_welcome_kit's built-in timed auto-advance.
            duration: _manualStepDuration,
            icon: stepContent.icon,
            iconColor: colorScheme.primary,
            backgroundColor: colorScheme.surfaceContainerHighest,
            highlightShape: stepContent.highlightShape,
            animation: stepContent.animation,
            allowTargetTap: stepContent.allowTargetTap,
            isLast: stepContent.isLast,
          ),
        )
        .toList(growable: false);
  }

  GlobalKey _targetKeyFor(CalculatorTutorialTarget target) {
    switch (target) {
      case CalculatorTutorialTarget.displayPanel:
        return targets.displayPanelKey;
      case CalculatorTutorialTarget.keypadPanel:
        return targets.keypadPanelKey;
      case CalculatorTutorialTarget.historyPanel:
        return targets.historyPanelKey;
      case CalculatorTutorialTarget.resultCopyButton:
        return targets.resultCopyButtonKey;
      case CalculatorTutorialTarget.resultPrecisionButton:
        return targets.resultPrecisionButtonKey;
      case CalculatorTutorialTarget.resultToggleButton:
        return targets.resultToggleButtonKey;
      case CalculatorTutorialTarget.resultJumpButton:
        return targets.resultJumpButtonKey;
      case CalculatorTutorialTarget.resultField:
        return targets.resultFieldKey;
      case CalculatorTutorialTarget.menuButton:
        return targets.menuButtonKey;
    }
  }

  Future<void> _persistIfEnabled(bool persistCompletion) async {
    if (!persistCompletion) {
      return;
    }
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(CalculatorPageConstants.tutorialSeenStorageKey, true);
  }
}
