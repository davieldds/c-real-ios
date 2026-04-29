import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_keyboard/math_keyboard.dart';

import '../../pages/calculator/calculator_page_constants.dart';
import 'calculator_result_panel.dart';
import 'calculator_result_viewport.dart';

/// Main display area for calculator input and results.
///
/// The display coordinates the expression editor, submit button, and result
/// actions while reacting to focus/typing state for subtle animations.
class CalculatorDisplay extends StatefulWidget {
  /// Creates the calculator display.
  const CalculatorDisplay({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onSubmitRequested,
    required this.resultText,
    this.onIncreasePrecisionRequested,
    this.onAutoIncreasePrecisionRequested,
    this.onToggleFractionRequested,
    this.errorText,
    this.helperText,
    this.isCalculating = false,
    this.resultCopyButtonKey,
    this.resultPrecisionButtonKey,
    this.resultToggleButtonKey,
    this.resultJumpButtonKey,
    this.resultFieldKey,
  });

  /// Math field controller for the expression editor.
  final MathFieldEditingController controller;

  /// Focus node used by the expression editor.
  final FocusNode focusNode;

  /// Callback invoked when the user requests evaluation.
  final VoidCallback onSubmitRequested;

  /// Callback invoked when the user requests more precision.
  final VoidCallback? onIncreasePrecisionRequested;

  /// Callback invoked when the viewport wants auto precision.
  final VoidCallback? onAutoIncreasePrecisionRequested;

  /// Callback invoked when fraction/decimal toggle is pressed.
  final VoidCallback? onToggleFractionRequested;

  /// Text displayed as the current calculator result.
  final String resultText;

  /// Optional error message for the expression editor.
  final String? errorText;

  /// Optional helper message for the expression editor.
  final String? helperText;

  /// Whether a calculation is currently running.
  final bool isCalculating;

  /// Optional key for the result copy button.
  final Key? resultCopyButtonKey;

  /// Optional key for the result precision button.
  final Key? resultPrecisionButtonKey;

  /// Optional key for the result fraction/decimal toggle button.
  final Key? resultToggleButtonKey;

  /// Optional key for the jump-to-most-significant-digit button.
  final Key? resultJumpButtonKey;

  /// Optional key for the result viewport field.
  final Key? resultFieldKey;

  @override
  State<CalculatorDisplay> createState() => _CalculatorDisplayState();
}

class _CalculatorDisplayState extends State<CalculatorDisplay> {
  static const Duration _containerAnimationDuration = Duration(
    milliseconds: 260,
  );
  static const Duration _contentAnimationDuration = Duration(milliseconds: 320);
  static const Duration _resultAnimationDuration = Duration(milliseconds: 280);
  static const Curve _emphasizedCurve = Curves.easeOutCubic;
  static const Curve _deceleratedCurve = Curves.easeOutQuart;
  static const double _resultPanelHeight = 112;

  late final ScrollController _expressionScrollController = ScrollController();
  late final CalculatorResultViewportController _resultViewportController =
      CalculatorResultViewportController();

  bool _hasExpression = false;
  bool _isFocused = false;

  bool get _hasResult => widget.resultText.trim().isNotEmpty;
  bool get _showAnimatedEmptyState => !_hasExpression && !_isFocused;

  @override
  void initState() {
    super.initState();
    _syncLocalInteractionState();

    widget.controller.addListener(_handleExpressionChanged);
    widget.focusNode.addListener(_handleFocusChanged);
  }

  @override
  void didUpdateWidget(covariant CalculatorDisplay oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_handleExpressionChanged);
      widget.controller.addListener(_handleExpressionChanged);
      _handleExpressionChanged();
    }

    if (oldWidget.focusNode != widget.focusNode) {
      oldWidget.focusNode.removeListener(_handleFocusChanged);
      widget.focusNode.addListener(_handleFocusChanged);
      _handleFocusChanged();
    }
  }

  String _currentExpressionText() {
    return widget.controller.currentEditingValue(placeholderWhenEmpty: false);
  }

  void _syncLocalInteractionState() {
    _hasExpression = _currentExpressionText().trim().isNotEmpty;
    _isFocused = widget.focusNode.hasFocus;
  }

  void _handleExpressionChanged() {
    final bool nextHasExpression = _currentExpressionText().trim().isNotEmpty;
    if (nextHasExpression != _hasExpression && mounted) {
      setState(() {
        _hasExpression = nextHasExpression;
      });
    }
  }

  void _handleFocusChanged() {
    final bool nextFocused = widget.focusNode.hasFocus;
    if (nextFocused != _isFocused && mounted) {
      setState(() {
        _isFocused = nextFocused;
      });
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_handleExpressionChanged);
    widget.focusNode.removeListener(_handleFocusChanged);
    _expressionScrollController.dispose();
    super.dispose();
  }

  Widget _buildEmptyState(BuildContext context) {
    final ColorScheme scheme = Theme.of(context).colorScheme;

    return IgnorePointer(
      child: AnimatedOpacity(
        duration: _contentAnimationDuration,
        curve: _emphasizedCurve,
        opacity: _showAnimatedEmptyState ? 1 : 0,
        child: AnimatedSlide(
          duration: _contentAnimationDuration,
          curve: _deceleratedCurve,
          offset: _showAnimatedEmptyState
              ? Offset.zero
              : const Offset(0, -0.08),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final bool compactHeight = constraints.maxHeight < 140;

              return Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                    child: [
                      TweenAnimationBuilder<double>(
                        tween: Tween<double>(
                          begin: 0.96,
                          end: _showAnimatedEmptyState ? 1.0 : 0.96,
                        ),
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOutBack,
                        builder: (context, value, child) {
                          return Transform.scale(scale: value, child: child);
                        },
                        child: Container(
                          padding: EdgeInsets.all(compactHeight ? 12 : 18),
                          decoration: BoxDecoration(
                            color: scheme.surfaceContainerHighest.withValues(
                              alpha: 0.38,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.ads_click,
                            size: compactHeight ? 28 : 42,
                            color: scheme.primary.withValues(alpha: 0.9),
                          ),
                        ),
                      ),
                      SizedBox(height: compactHeight ? 10 : 16),
                      Text(
                        'Enter an expression…',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: scheme.onSurface.withValues(alpha: 0.42),
                              fontSize: compactHeight ? 18 : null,
                            ),
                      ),
                      SizedBox(height: compactHeight ? 4 : 8),
                      Text(
                        'Click here to use your keyboard',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: scheme.onSurfaceVariant.withValues(
                            alpha: 0.72,
                          ),
                          fontWeight: FontWeight.w700,
                          fontSize: compactHeight ? 12 : null,
                        ),
                      ),
                    ].column(mainAxisSize: MainAxisSize.min),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildExpressionEditor(BuildContext context) {
    return Focus(
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent &&
            (event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.numpadEnter)) {
          widget.onSubmitRequested();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => widget.focusNode.requestFocus(),
        child: ClipRect(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  Scrollbar(
                    controller: _expressionScrollController,
                    thumbVisibility: _isFocused && _hasExpression,
                    child: SingleChildScrollView(
                      controller: _expressionScrollController,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: Align(
                          alignment: _showAnimatedEmptyState
                              ? Alignment.center
                              : Alignment.topLeft,
                          child: AnimatedPadding(
                            duration: _contentAnimationDuration,
                            curve: _deceleratedCurve,
                            padding: EdgeInsets.only(
                              top: _showAnimatedEmptyState ? 36 : 8,
                              bottom: 8,
                              right: 8,
                            ),
                            child: AnimatedOpacity(
                              duration: _contentAnimationDuration,
                              curve: _emphasizedCurve,
                              opacity: _showAnimatedEmptyState ? 0.02 : 1,
                              child: MathField(
                                controller: widget.controller,
                                focusNode: widget.focusNode,
                                opensKeyboard: false,
                                onSubmitted: (_) => widget.onSubmitRequested(),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  isCollapsed: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(child: _buildEmptyState(context)),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final ColorScheme scheme = Theme.of(context).colorScheme;
    final bool emphasized = _hasExpression || _isFocused;

    return AnimatedSlide(
      duration: _contentAnimationDuration,
      curve: _deceleratedCurve,
      offset: emphasized ? Offset.zero : const Offset(0.08, 0),
      child: AnimatedScale(
        duration: _contentAnimationDuration,
        curve: Curves.easeOutBack,
        scale: emphasized ? 1 : 0.92,
        child: SizedBox.square(
          dimension: 72,
          child: FilledButton(
            onPressed: widget.onSubmitRequested,
            style: FilledButton.styleFrom(
              backgroundColor: emphasized
                  ? scheme.primary
                  : scheme.primary.withValues(alpha: 0.82),
              foregroundColor: scheme.onPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.zero,
              elevation: emphasized ? 4 : 0,
            ),
            child: AnimatedDefaultTextStyle(
              duration: _contentAnimationDuration,
              curve: _emphasizedCurve,
              style: TextStyle(
                fontSize: emphasized ? 30 : 28,
                fontWeight: FontWeight.bold,
                color: scheme.onPrimary,
                height: 1,
              ),
              child: Center(child: _buildEqualsGlyph(color: scheme.onPrimary)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEqualsBar(Color color) {
    return Container(
      width: 26,
      height: 4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(99),
      ),
    );
  }

  Widget _buildEqualsGlyph({required Color color}) {
    return SizedBox(
      width: 28,
      height: 28,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildEqualsBar(color),
          const SizedBox(height: 6),
          _buildEqualsBar(color),
        ],
      ),
    );
  }

  Widget _buildResultPanel(BuildContext context) {
    return AnimatedOpacity(
      duration: _resultAnimationDuration,
      curve: _emphasizedCurve,
      opacity: _hasResult ? 1 : 0.78,
      child: AnimatedSlide(
        duration: _resultAnimationDuration,
        curve: _deceleratedCurve,
        offset: _hasResult ? Offset.zero : const Offset(0, 0.08),
        child: CalculatorResultPanel(
          resultText: widget.resultText,
          resultViewportController: _resultViewportController,
          onIncreasePrecisionRequested: widget.onIncreasePrecisionRequested,
          onToggleFractionRequested: widget.onToggleFractionRequested,
          copyButtonKey: widget.resultCopyButtonKey,
          increasePrecisionButtonKey: widget.resultPrecisionButtonKey,
          toggleFractionButtonKey: widget.resultToggleButtonKey,
          jumpButtonKey: widget.resultJumpButtonKey,
          resultViewportKey: widget.resultFieldKey,
          resultViewport: CalculatorResultViewport(
            controller: _resultViewportController,
            resultText: widget.resultText,
            isFocused: _isFocused,
            isCalculating: widget.isCalculating,
            onAutoIncreasePrecisionRequested:
                widget.onAutoIncreasePrecisionRequested,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Keep focus and expression state in sync for animated layout.
    _syncLocalInteractionState();

    final ColorScheme scheme = Theme.of(context).colorScheme;
    final Color borderColor = _isFocused
        ? scheme.primary.withValues(alpha: 0.65)
        : scheme.outlineVariant;
    final Color backgroundColor = _isFocused
        ? scheme.surfaceContainerLowest
        : scheme.surface;
    final List<BoxShadow> shadows = _isFocused
        ? [
            BoxShadow(
              color: scheme.primary.withValues(alpha: 0.12),
              blurRadius: 28,
              spreadRadius: 1,
              offset: const Offset(0, 10),
            ),
          ]
        : [
            BoxShadow(
              color: scheme.shadow.withValues(alpha: 0.04),
              blurRadius: 18,
              offset: const Offset(0, 8),
            ),
          ];

    return AnimatedContainer(
      duration: _containerAnimationDuration,
      curve: _emphasizedCurve,
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: borderColor, width: _isFocused ? 2.2 : 2),
        boxShadow: shadows,
      ),
      child: [
        Expanded(
          flex: _hasResult ? 3 : 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: [
              Expanded(child: _buildExpressionEditor(context)),
              const SizedBox(width: 16),
              _buildSubmitButton(context),
            ].row(crossAxisAlignment: CrossAxisAlignment.center),
          ),
        ),
        AnimatedSwitcher(
          duration: _resultAnimationDuration,
          switchInCurve: _deceleratedCurve,
          switchOutCurve: Curves.easeInCubic,
          layoutBuilder: (currentChild, previousChildren) {
            return currentChild ?? const SizedBox.shrink();
          },
          transitionBuilder: (child, animation) {
            final Animation<Offset> slide = Tween<Offset>(
              begin: const Offset(0, 0.12),
              end: Offset.zero,
            ).animate(animation);
            return FadeTransition(
              opacity: animation,
              child: SlideTransition(position: slide, child: child),
            );
          },
          child: _hasResult
              ? KeyedSubtree(
                  key: const ValueKey<String>('result-panel-visible'),
                  child: [
                    Divider(
                      height: 1,
                      thickness: 2,
                      color: scheme.outlineVariant,
                    ),
                    SizedBox(
                      height:
                          MediaQuery.of(context).size.width >=
                              CalculatorPageConstants.splitLayoutWidth
                          ? _resultPanelHeight
                          : _resultPanelHeight + 68,
                      child: _buildResultPanel(context),
                    ),
                  ].column(),
                )
              : const SizedBox(
                  key: ValueKey<String>('result-panel-hidden'),
                  height: 0,
                ),
        ),
      ].column(),
    );
  }
}
