import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// Controller used to drive result viewport navigation actions.
class CalculatorResultViewportController extends ChangeNotifier {
  VoidCallback? _jumpToMostSignificantDigitAction;
  bool _canJumpToMostSignificantDigit = false;

  /// Whether jumping to the leftmost visible overflow digit is currently possible.
  bool get canJumpToMostSignificantDigit => _canJumpToMostSignificantDigit;

  void _attachJumpAction(VoidCallback action) {
    _jumpToMostSignificantDigitAction = action;
  }

  void _detachJumpAction(VoidCallback action) {
    if (identical(_jumpToMostSignificantDigitAction, action)) {
      _jumpToMostSignificantDigitAction = null;
    }
  }

  void _setCanJumpToMostSignificantDigit(bool value) {
    if (_canJumpToMostSignificantDigit == value) {
      return;
    }
    _canJumpToMostSignificantDigit = value;
    notifyListeners();
  }

  /// Scrolls the viewport to the most significant (leftmost) digit.
  void jumpToMostSignificantDigit() {
    if (!_canJumpToMostSignificantDigit) {
      return;
    }
    _jumpToMostSignificantDigitAction?.call();
  }
}

/// Scrollable result viewport with digit indicators and precision prefetch hooks.
///
/// This widget renders a horizontally scrollable result string and exposes
/// callbacks for automatic precision prefetching and manual scrolling. It
/// provides smooth snapping to character boundaries so individual digits can
/// be inspected.
class CalculatorResultViewport extends StatefulWidget {
  /// Creates the result viewport.
  const CalculatorResultViewport({
    super.key,
    required this.resultText,
    required this.isFocused,
    required this.controller,
    this.isCalculating = false,
    this.onAutoIncreasePrecisionRequested,
  });

  /// Result string to render.
  final String resultText;

  /// Whether the parent display is focused.
  final bool isFocused;

  /// Controller for external viewport navigation actions.
  final CalculatorResultViewportController controller;

  /// Whether the result is currently being calculated.
  final bool isCalculating;

  /// Callback invoked when the viewport requests more precision.
  final VoidCallback? onAutoIncreasePrecisionRequested;

  @override
  State<CalculatorResultViewport> createState() =>
      _CalculatorResultViewportState();
}

class _CalculatorResultViewportState extends State<CalculatorResultViewport> {
  static const Duration _resultAnimationDuration = Duration(milliseconds: 280);
  static const Curve _emphasizedCurve = Curves.easeOutCubic;
  static const int _precisionPrefetchDigits = 48;

  late final ScrollController _resultScrollController = ScrollController()
    ..addListener(_handleResultScroll);

  bool _showLeftOverflowIndicator = false;
  double? _pendingResultOffset;
  double? _resultTargetOffset;
  double _resultHorizontalDragRemainder = 0;
  double _resultVerticalDragRemainder = 0;
  Timer? _resultSnapDebounce;
  Timer? _spinnerTimer;
  bool _showSpinner = false;
  bool _isPrefetching = false;
  bool _preserveScrollOnUpdate = false;
  int _fixedLeadingPadding = 0;
  bool _shouldRecalculatePadding = true;

  bool get _hasResult => widget.resultText.trim().isNotEmpty;
  String get _effectiveResult =>
      widget.resultText.isEmpty ? '0' : widget.resultText;
  bool get _isErrorResult =>
      _hasResult && _effectiveResult.trimLeft().startsWith('Error');

  @override
  void initState() {
    super.initState();
    widget.controller._attachJumpAction(_jumpResultToMostSignificantDigit);
  }

  void _setPrefetching(bool value) {
    if (_isPrefetching == value) {
      return;
    }
    _isPrefetching = value;
    if (value) {
      _preserveScrollOnUpdate = true;
    }
  }

  void _updateSpinnerVisibility(bool shouldShowSpinner) {
    if (shouldShowSpinner) {
      _spinnerTimer?.cancel();
      _spinnerTimer = Timer(const Duration(milliseconds: 300), () {
        if (mounted && widget.isCalculating) {
          setState(() {
            _showSpinner = true;
          });
        }
      });
    } else {
      _spinnerTimer?.cancel();
      if (_showSpinner) {
        setState(() {
          _showSpinner = false;
        });
      }
    }
  }

  @override
  void didUpdateWidget(covariant CalculatorResultViewport oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller._detachJumpAction(_jumpResultToMostSignificantDigit);
      widget.controller._attachJumpAction(_jumpResultToMostSignificantDigit);
      widget.controller._setCanJumpToMostSignificantDigit(
        _showLeftOverflowIndicator,
      );
    }

    if (oldWidget.isCalculating != widget.isCalculating) {
      _updateSpinnerVisibility(widget.isCalculating);
    }

    if (oldWidget.resultText != widget.resultText) {
      _setPrefetching(false);
      if (!_preserveScrollOnUpdate) {
        _shouldRecalculatePadding = true;
      }
      _preserveAndRestoreScroll(oldWidget.resultText);
    }
  }

  // Preserves the current result scroll offset when the precision increases.
  void _preserveAndRestoreScroll(String oldResult) {
    double? preservedTargetOffset;

    if (_preserveScrollOnUpdate &&
        mounted &&
        _resultScrollController.hasClients) {
      final double step = _resultCharacterStep(context);
      final int addedCharacters = widget.resultText.length - oldResult.length;
      final double baseOffset =
          _pendingResultOffset ??
          _resultTargetOffset ??
          _resultScrollController.offset;
      final double precisionCompensationOffset =
          math.max(0, addedCharacters) * step;
      final double estimatedMaxScrollExtent =
          _resultScrollController.position.maxScrollExtent +
          precisionCompensationOffset;

      preservedTargetOffset = _snapResultOffset(
        baseOffset + precisionCompensationOffset,
      ).clamp(0.0, estimatedMaxScrollExtent);

      _resultTargetOffset = preservedTargetOffset;
      _resultScrollController.position.correctPixels(preservedTargetOffset);
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_resultScrollController.hasClients) {
        return;
      }

      if (_preserveScrollOnUpdate) {
        final double targetOffset = (preservedTargetOffset ?? 0).clamp(
          0.0,
          _resultScrollController.position.maxScrollExtent,
        );

        _scrollResultTo(_snapResultOffset(targetOffset));
        _pendingResultOffset = null;
      } else {
        _jumpResultToTrailingEdge();
      }

      _handleResultScroll();
      _preserveScrollOnUpdate = false;
    });
  }

  TextStyle _resultTextStyle(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontFamily: 'CascadiaMono',
          fontWeight: FontWeight.bold,
        ) ??
        const TextStyle(
          fontSize: 28,
          fontFamily: 'CascadiaMono',
          fontWeight: FontWeight.bold,
        );
  }

  double _resultCharacterStep(BuildContext context) {
    final TextStyle style = _resultTextStyle(context);

    final TextPainter painter = TextPainter(
      text: TextSpan(text: '0', style: style),
      textDirection: Directionality.of(context),
      maxLines: 1,
    )..layout();

    return painter.width;
  }

  String _buildPaddedResult(
    BuildContext context,
    String value,
    double availableWidth,
  ) {
    if (availableWidth <= 0) {
      return value;
    }

    final double step = _resultCharacterStep(context);
    if (step <= 0) {
      return value;
    }

    final int availableCharacters = (availableWidth / step).floor();
    final int paddingCharacters = _shouldRecalculatePadding
        ? math.max(0, availableCharacters - value.length)
        : _fixedLeadingPadding;

    if (_shouldRecalculatePadding) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) {
          return;
        }
        setState(() {
          _fixedLeadingPadding = paddingCharacters;
          _shouldRecalculatePadding = false;
        });
      });
    }

    if (paddingCharacters == 0) {
      return value;
    }

    return ''.padLeft(paddingCharacters) + value;
  }

  double _snapResultOffset(double targetOffset) {
    if (!mounted) {
      return targetOffset;
    }

    final double step = _resultCharacterStep(context);
    if (step <= 0) {
      return targetOffset;
    }

    return (targetOffset / step).round() * step;
  }

  void _scrollResultTo(double targetOffset, {bool animated = false}) {
    if (!_resultScrollController.hasClients) {
      return;
    }

    final double clampedOffset = targetOffset.clamp(
      0.0,
      math.max(0.0, _resultScrollController.position.maxScrollExtent),
    );

    _resultTargetOffset = clampedOffset;

    if ((clampedOffset - _resultScrollController.offset).abs() < 0.5) {
      _handleResultScroll();
      return;
    }

    if (animated) {
      _resultScrollController.animateTo(
        clampedOffset,
        duration: const Duration(milliseconds: 110),
        curve: Curves.easeOutCubic,
      );
    } else {
      _resultScrollController.jumpTo(clampedOffset);
    }
  }

  void _jumpResultToTrailingEdge() {
    if (!_resultScrollController.hasClients) {
      return;
    }
    _resultTargetOffset = 0;
    _resultScrollController.jumpTo(0);
  }

  void _jumpResultToMostSignificantDigit() {
    if (!_resultScrollController.hasClients) {
      return;
    }
    final double leftmostOffset = _snapResultOffset(
      _resultScrollController.position.maxScrollExtent,
    );
    _scrollResultTo(leftmostOffset, animated: true);
  }

  void _handleResultScroll() {
    if (!_resultScrollController.hasClients) {
      return;
    }

    final position = _resultScrollController.position;
    final bool shouldShowLeftOverflowIndicator =
        position.maxScrollExtent > 0 &&
        _resultScrollController.offset < position.maxScrollExtent - 1;

    if (shouldShowLeftOverflowIndicator != _showLeftOverflowIndicator) {
      setState(() {
        _showLeftOverflowIndicator = shouldShowLeftOverflowIndicator;
      });
    }
    widget.controller._setCanJumpToMostSignificantDigit(
      shouldShowLeftOverflowIndicator,
    );
  }

  void _maybePrefetchPrecision(
    BuildContext context,
    int direction,
    double currentOffset,
  ) {
    if (!_resultScrollController.hasClients || direction >= 0) {
      return;
    }

    final double step = _resultCharacterStep(context);
    final double prefetchThreshold = step * _precisionPrefetchDigits;

    // Request extra precision when the user scrolls close to the left edge.
    if (currentOffset <= prefetchThreshold && !_isPrefetching) {
      _setPrefetching(true);
      _pendingResultOffset = _snapResultOffset(
        currentOffset + (step * direction),
      );
      widget.onAutoIncreasePrecisionRequested?.call();
    }
  }

  void _scrollResultByStep(
    BuildContext context,
    int direction, {
    bool animated = false,
  }) {
    if (!_resultScrollController.hasClients || direction == 0) {
      return;
    }

    final double step = _resultCharacterStep(context);
    final double currentTargetOffset = _snapResultOffset(
      _resultTargetOffset ?? _resultScrollController.offset,
    );
    final double targetOffset = _snapResultOffset(
      currentTargetOffset + (step * direction),
    );

    _maybePrefetchPrecision(context, direction, currentTargetOffset);

    if (_pendingResultOffset != null) {
      _pendingResultOffset = _snapResultOffset(
        _pendingResultOffset! + (step * direction),
      );
    }

    _scrollResultTo(targetOffset, animated: animated);
  }

  void _consumeSnappedDelta(BuildContext context, double delta, Axis axis) {
    if (!_resultScrollController.hasClients || delta == 0) {
      return;
    }

    final double step = _resultCharacterStep(context);
    if (step <= 0) {
      return;
    }

    if (axis == Axis.horizontal) {
      _resultHorizontalDragRemainder += delta;
      while (_resultHorizontalDragRemainder.abs() >= step) {
        final int direction = _resultHorizontalDragRemainder.isNegative
            ? 1
            : -1;
        _scrollResultByStep(context, direction);
        _resultHorizontalDragRemainder +=
            _resultHorizontalDragRemainder.isNegative ? step : -step;
      }
    } else {
      _resultVerticalDragRemainder += delta;
      while (_resultVerticalDragRemainder.abs() >= step) {
        final int direction = _resultVerticalDragRemainder.isNegative ? -1 : 1;
        _scrollResultByStep(context, direction);
        _resultVerticalDragRemainder += _resultVerticalDragRemainder.isNegative
            ? step
            : -step;
      }
    }
  }

  void _resetResultDragRemainders() {
    _resultHorizontalDragRemainder = 0;
    _resultVerticalDragRemainder = 0;
  }

  void _scheduleResultSnap(BuildContext context) {
    _resultSnapDebounce?.cancel();
    _resultSnapDebounce = Timer(const Duration(milliseconds: 80), () {
      if (!mounted || !_resultScrollController.hasClients) {
        return;
      }
      _scrollResultTo(
        _snapResultOffset(
          _resultTargetOffset ?? _resultScrollController.offset,
        ),
        animated: true,
      );
    });
  }

  void _handleResultPointerSignal(
    BuildContext context,
    PointerSignalEvent event,
  ) {
    if (event is! PointerScrollEvent) {
      return;
    }

    final bool isHorizontalScroll =
        event.scrollDelta.dx.abs() >= event.scrollDelta.dy.abs();
    final double dominantDelta = isHorizontalScroll
        ? event.scrollDelta.dx
        : event.scrollDelta.dy;

    if (dominantDelta == 0) {
      return;
    }

    final int direction = isHorizontalScroll
        ? (dominantDelta.isNegative ? 1 : -1)
        : (dominantDelta.isNegative ? -1 : 1);

    _scrollResultByStep(context, direction);
  }

  int? _currentDecimalDigitIndex(BuildContext context, String value) {
    if (!_resultScrollController.hasClients) {
      final int decimals = _decimalDigitCount(value);
      return decimals > 0 ? decimals : null;
    }

    final int decimalPointIndex = value.indexOf('.');
    if (decimalPointIndex == -1) {
      return null;
    }

    final int totalDecimalDigits = _decimalDigitCount(value);
    if (totalDecimalDigits == 0) {
      return null;
    }

    final double step = _resultCharacterStep(context);
    if (step <= 0) {
      return totalDecimalDigits;
    }

    final int scrolledCharacterSteps =
        ((_resultTargetOffset ?? _resultScrollController.offset) / step)
            .round();
    final int rightmostCharacterIndex =
        value.length - 1 - scrolledCharacterSteps;

    if (rightmostCharacterIndex <= decimalPointIndex) {
      return 0;
    }

    final int digitIndex = rightmostCharacterIndex - decimalPointIndex;
    return digitIndex.clamp(0, totalDecimalDigits);
  }

  int _decimalDigitCount(String value) {
    final int decimalPointIndex = value.indexOf('.');
    if (decimalPointIndex == -1 || decimalPointIndex >= value.length - 1) {
      return 0;
    }

    int count = 0;
    for (int i = decimalPointIndex + 1; i < value.length; i++) {
      final String char = value[i];
      if (_isNumericDigit(char)) {
        count++;
      }
    }
    return count;
  }

  bool _isNumericDigit(String char) {
    return char.codeUnitAt(0) >= 48 && char.codeUnitAt(0) <= 57;
  }

  String _digitIndicatorText(BuildContext context, String value) {
    if (value.trimLeft().startsWith('Error')) {
      return '';
    }

    final int decimalDigits = _decimalDigitCount(value);
    if (decimalDigits == 0) {
      return 'Precise result';
    }

    final int? currentDigit = _currentDecimalDigitIndex(context, value);
    if (currentDigit == null || currentDigit <= 0) {
      return 'Viewing integer part';
    }

    return '$currentDigit/$decimalDigits';
  }

  @override
  void dispose() {
    _resultSnapDebounce?.cancel();
    _spinnerTimer?.cancel();
    widget.controller._detachJumpAction(_jumpResultToMostSignificantDigit);
    widget.controller._setCanJumpToMostSignificantDigit(false);
    _resultScrollController
      ..removeListener(_handleResultScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme scheme = Theme.of(context).colorScheme;
    final Color panelBackgroundColor = widget.isFocused
        ? scheme.surfaceContainerLowest
        : scheme.surface;
    final String effectiveResult = _effectiveResult;

    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 60,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onHorizontalDragStart: (_) => _resetResultDragRemainders(),
              onVerticalDragStart: (_) => _resetResultDragRemainders(),
              onHorizontalDragUpdate: (details) {
                _consumeSnappedDelta(
                  context,
                  details.delta.dx,
                  Axis.horizontal,
                );
              },
              onVerticalDragUpdate: (details) {
                _consumeSnappedDelta(context, details.delta.dy, Axis.vertical);
              },
              onHorizontalDragEnd: (_) {
                _resetResultDragRemainders();
                _scheduleResultSnap(context);
              },
              onVerticalDragEnd: (_) {
                _resetResultDragRemainders();
                _scheduleResultSnap(context);
              },
              onHorizontalDragCancel: _resetResultDragRemainders,
              onVerticalDragCancel: _resetResultDragRemainders,
              child: Listener(
                behavior: HitTestBehavior.opaque,
                onPointerSignal: (event) =>
                    _handleResultPointerSignal(context, event),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: ScrollConfiguration(
                        behavior: const MaterialScrollBehavior().copyWith(
                          dragDevices: {
                            PointerDeviceKind.mouse,
                            PointerDeviceKind.touch,
                            PointerDeviceKind.trackpad,
                            PointerDeviceKind.stylus,
                            PointerDeviceKind.invertedStylus,
                          },
                        ),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            const double horizontalPadding = 18;
                            final double availableWidth = math.max(
                              0,
                              constraints.maxWidth - (horizontalPadding * 2),
                            );
                            final String displayResult = _buildPaddedResult(
                              context,
                              effectiveResult,
                              availableWidth,
                            );

                            return SingleChildScrollView(
                              controller: _resultScrollController,
                              scrollDirection: Axis.horizontal,
                              reverse: true,
                              physics: const NeverScrollableScrollPhysics(),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: horizontalPadding,
                                  vertical: 12,
                                ),
                                child: AnimatedSwitcher(
                                  duration: _resultAnimationDuration,
                                  switchInCurve: _emphasizedCurve,
                                  switchOutCurve: Curves.easeInCubic,
                                  transitionBuilder: (child, animation) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  },
                                  child: _showSpinner
                                      ? const Padding(
                                          key: ValueKey<String>(
                                            'result-spinner',
                                          ),
                                          padding: EdgeInsets.only(right: 8.0),
                                          child: SizedBox(
                                            width: 20,
                                            height: 20,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                            ),
                                          ),
                                        )
                                      : Text(
                                          displayResult,
                                          key: const ValueKey<String>(
                                            'result-text',
                                          ),
                                          maxLines: 1,
                                          softWrap: false,
                                          style: _resultTextStyle(context)
                                              .copyWith(
                                                color: _hasResult
                                                    ? (_isErrorResult
                                                          ? scheme.error
                                                          : scheme.onSurface)
                                                    : scheme.onSurfaceVariant
                                                          .withValues(
                                                            alpha: 0.72,
                                                          ),
                                              ),
                                        ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    IgnorePointer(
                      child: AnimatedOpacity(
                        duration: _resultAnimationDuration,
                        curve: _emphasizedCurve,
                        opacity: _showLeftOverflowIndicator ? 1 : 0,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 36,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  panelBackgroundColor,
                                  panelBackgroundColor.withValues(alpha: 0.92),
                                  panelBackgroundColor.withValues(alpha: 0.0),
                                ],
                                stops: const [0.0, 0.55, 1.0],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 18,
          bottom: 16,
          child: AnimatedBuilder(
            animation: _resultScrollController,
            builder: (context, child) {
              return Text(
                _digitIndicatorText(context, effectiveResult),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: scheme.onSurfaceVariant.withValues(alpha: 0.85),
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
