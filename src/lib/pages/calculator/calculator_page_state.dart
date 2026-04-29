part of 'calculator_page.dart';

/// State for [CalculatorPage].
///
/// Manages text insertion, evaluation, and history logic used by the UI.
abstract class _CalculatorPageStateBase extends State<CalculatorPage> {
  final CalculatorTutorialTargets _tutorialTargets =
      CalculatorTutorialTargets();
  late final CalculatorTutorialCoordinator _tutorialCoordinator =
      CalculatorTutorialCoordinator(targets: _tutorialTargets);

  final MathFieldEditingController _expressionController =
      MathFieldEditingController();
  final FocusNode _expressionFocusNode = FocusNode();

  final List<HistoryEntry> _historyItems = [];

  CompactPanelView _compactPanelView = CompactPanelView.keypad;
  String _resultText = '';
  String? _expressionErrorText;
  bool _isCalculating = false;
  bool _showAsDecimal = false;
  bool _showLogoCat = false;
  int _logoTapCount = 0;
  int _currentPrecision = 10;
  Timer? _previewDebounceTimer;
  CancellableEvaluationTask? _activeEvaluationTask;
  int _evaluationGeneration = 0;

  // Syntax tree is reused for precision updates.
  SyntaxTree _syntaxTree = SyntaxTree();
  String? _cachedSyntaxTreeTeX;

  Future<void> _loadPersistedState();
  Future<void> _saveState();
  Future<void> _saveHistory();
  Future<void> _saveResult();

  @override
  void initState() {
    super.initState();
    _loadPersistedState();
    _expressionController.addListener(_handleExpressionChanged);
  }

  @override
  void dispose() {
    _tutorialCoordinator.dispose();
    _previewDebounceTimer?.cancel();
    _cancelActiveEvaluation();
    _expressionController.dispose();
    _expressionFocusNode.dispose();
    super.dispose();
  }

  /// Handles expression edits and schedules a preview evaluation.
  void _handleExpressionChanged() {
    _evaluationGeneration++;
    _cancelActiveEvaluation();

    final String tex = _expressionController.currentEditingValue(
      placeholderWhenEmpty: false,
    );
    final bool reuseCachedTreeForPreview = tex == _cachedSyntaxTreeTeX;

    _previewDebounceTimer?.cancel();
    _previewDebounceTimer = Timer(CalculatorPageConstants.previewDebounce, () {
      if (!mounted) {
        return;
      }

      if (tex.trim().isEmpty) {
        _syntaxTree.clear();
        _cachedSyntaxTreeTeX = null;
        setState(() {
          _expressionErrorText = null;
          _resultText = '';
        });
        _saveResult();
      } else {
        _calculateExpression(
          reuseTree: reuseCachedTreeForPreview,
          // Cursor movement should not alter precision-related state.
          isToggle: reuseCachedTreeForPreview,
        );
      }
    });
  }

  /// Inserts [text] into the expression field using the MathField controller.
  void _insertText(String text) {
    if (text == CalculatorPageConstants.cursorLeftToken) {
      _expressionController.goBack();
      return;
    }

    if (text == CalculatorPageConstants.cursorRightToken) {
      _expressionController.goNext();
      return;
    }

    if (text == r'\sqrt{') {
      _expressionController.addFunction(r'\sqrt', [TeXArg.braces]);
      return;
    }

    if (text == r'\nrt_') {
      _expressionController.addFunction(r'\sqrt', [
        TeXArg.brackets,
        TeXArg.braces,
      ]);
      return;
    }

    if (text == r'\frac') {
      _expressionController.addFunction(r'\frac', [
        TeXArg.braces,
        TeXArg.braces,
      ]);
      return;
    }

    if (text == r'\cdot 10^') {
      _expressionController.addLeaf(r'\cdot');
      _expressionController.addLeaf('1');
      _expressionController.addLeaf('0');
      _expressionController.addFunction('^', [TeXArg.braces]);
      return;
    }

    if (text == '^') {
      _expressionController.addFunction('^', [TeXArg.braces]);
      return;
    }

    if (text == '^2') {
      _expressionController.addFunction('^', [TeXArg.braces]);
      _expressionController.addLeaf('2');
      return;
    }

    if (text == r'\log_') {
      _expressionController.addFunction(r'\log_', [
        TeXArg.braces,
        TeXArg.parentheses,
      ]);
      return;
    }

    // Functions that should add parentheses automatically.
    if (const [r'\ln'].contains(text)) {
      _expressionController.addFunction(text, [TeXArg.parentheses]);
      return;
    }

    if (const [r'\log_'].contains(text)) {
      _expressionController.addFunction(text, [TeXArg.parentheses]);
      return;
    }

    _expressionController.addLeaf(text);
  }

  /// Removes the character immediately before the caret.
  void _backspace() {
    _expressionController.goBack(deleteMode: true);
  }

  /// Clears the entire expression field and returns focus to it.
  void _clearExpression() {
    _expressionController.clear();
    _expressionFocusNode.requestFocus();
  }

  /// Seeds the expression field for tutorial walkthrough examples.
  void _prepareTutorialExpression() {
    _expressionController.clear();
    _insertText(
      '{'
      r'\pi'
      '}',
    );
    _expressionFocusNode.requestFocus();
  }

  /// Clears tutorial seed input and removes focus from the expression field.
  void _finishTutorialExpression() {
    _expressionController.clear();
    _expressionFocusNode.unfocus();
  }

  /// Tracks logo taps and enables the hidden cat logo after five taps.
  void _handleLogoTap() {
    if (_showLogoCat) {
      return;
    }

    _logoTapCount++;
    if (_logoTapCount >= 5) {
      setState(() {
        _showLogoCat = true;
      });
    }
  }

  /// Evaluates the expression and stores it as a history item.
  Future<void> _calculateExpression({
    bool reuseTree = false,
    bool isToggle = false,
    bool saveToHistory = false,
    int precisionIncrement = 10,
  }) async {
    final int requestGeneration = ++_evaluationGeneration;
    _cancelActiveEvaluation();

    if (!reuseTree) {
      // Only show the calculating indicator for fresh evaluations.
      setState(() {
        _isCalculating = true;
      });
    }

    final String tex = _expressionController.currentEditingValue(
      placeholderWhenEmpty: false,
    );

    if (!reuseTree) {
      _currentPrecision = 10;
      _showAsDecimal = false;

      if (tex.trim().isEmpty) {
        return;
      }

      try {
        final parsedExpression = CustomTeXParser(tex).parse();

        // Reset the syntax tree before loading a newly parsed expression.
        _syntaxTree.clear();
        _syntaxTree.parseEquation(parsedExpression.toString());
        _cachedSyntaxTreeTeX = tex;
      } catch (error) {
        setState(() {
          _resultText = 'Error: Invalid expression. Please check syntax.';
          _expressionErrorText = null;
          _isCalculating = false;
        });
        _saveResult();
        return;
      }
    } else if (!isToggle) {
      _currentPrecision += precisionIncrement;
    }

    try {
      // Run evaluation in an isolate to keep the UI thread responsive.
      final CancellableEvaluationTask evaluationTask =
          await CancellableEvaluationTask.start(
            _syntaxTree,
            _currentPrecision,
            _showAsDecimal,
          );
      _activeEvaluationTask = evaluationTask;

      final (SyntaxTree evaluatedTree, String formattedResult) =
          await evaluationTask.result;

      if (!mounted || requestGeneration != _evaluationGeneration) {
        return;
      }
      _activeEvaluationTask = null;

      _syntaxTree = evaluatedTree;

      setState(() {
        _resultText = formattedResult;
        _expressionErrorText = null;

        if (!reuseTree) {
          _currentPrecision = 10;
          if (saveToHistory) {
            _appendHistoryEntry(tex, formattedResult);
          }
        }
      });
      _saveState();
    } on CancelledEvaluationException {
      return;
    } catch (error) {
      if (!mounted || requestGeneration != _evaluationGeneration) {
        return;
      }
      _activeEvaluationTask = null;
      setState(() {
        _resultText = 'Error: Evaluation error.';
        _expressionErrorText = null;
      });
      _saveResult();
    } finally {
      if (mounted && !reuseTree && requestGeneration == _evaluationGeneration) {
        setState(() {
          _isCalculating = false;
        });
      }
    }
  }

  void _cancelActiveEvaluation() {
    _activeEvaluationTask?.cancel();
    _activeEvaluationTask = null;
  }

  /// Clears all history entries.
  void _clearHistory() {
    setState(_historyItems.clear);
    _saveHistory();
  }

  /// Deletes a single history entry.
  void _deleteHistoryEntry(HistoryEntry entry) {
    setState(() {
      _historyItems.remove(entry);
    });
    _saveHistory();
  }

  /// Restores a history entry expression into the editor.
  void _reuseHistoryEntry(HistoryEntry entry) {
    try {
      final parsedExpression = CustomTeXParser(entry.expression).parse();
      _expressionController.updateValue(parsedExpression);
      _restorePiLeaves(_expressionController.root);
    } catch (_) {
      _clearExpression();
      _expressionController.addLeaf(entry.expression);
    }
    _expressionFocusNode.requestFocus();
  }

  /// Rewrites variable-like `pi` leaves to the keyboard constant token.
  bool _restorePiLeaves(TeXNode node) {
    bool updated = false;
    for (int i = 0; i < node.children.length; i++) {
      final TeX child = node.children[i];
      if (child is TeXLeaf &&
          (child.expression == 'pi' || child.expression == '{pi}')) {
        node.children[i] = const TeXLeaf(r'{\pi}');
        updated = true;
        continue;
      }
      if (child is TeXFunction) {
        for (final TeXNode argNode in child.argNodes) {
          updated = _restorePiLeaves(argNode) || updated;
        }
      }
    }
    return updated;
  }

  bool _appendHistoryEntry(String expression, String result) {
    if (_historyItems.isNotEmpty &&
        _historyItems.first.expression == expression &&
        _historyItems.first.result == result) {
      return false;
    }

    _historyItems.insert(
      0,
      HistoryEntry(expression: expression, result: result),
    );

    if (_historyItems.length > CalculatorPageConstants.maxHistoryItems) {
      _historyItems.removeRange(
        CalculatorPageConstants.maxHistoryItems,
        _historyItems.length,
      );
    }
    return true;
  }
}
