part of 'calculator_page.dart';

/// UI builders for [CalculatorPage].
class _CalculatorPageState extends _CalculatorPageStateBase
    with _CalculatorPagePersistence {
  /// Opens the standard Flutter about dialog for the application.
  void _showAboutDialog() {
    showAboutDialog(
      context: context,
      applicationName: widget.title,
      applicationVersion: '1.0.1',
      applicationIcon: Image.asset(
        CalculatorPageConstants.brandLogoAsset,
        width: 48,
        height: 48,
      ),
      children: [
        const Text('Scientific calculator for the IVS Projekt 2 team project.'),
        const SizedBox(height: 8),
        Center(
          child: Image.asset(
            CalculatorPageConstants.brandCatAsset,
            width: 120,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }

  /// Opens the keymap popup dialog.
  void _showKeymapDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Keybindings'),
          content: SingleChildScrollView(
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Enter:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ' Calculate\n'),
                  const TextSpan(
                    text: 'Arrows:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ' Move cursor\n'),
                  const TextSpan(
                    text: '*:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ' Multiplication\n'),
                  const TextSpan(
                    text: '/:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ' Division\n'),
                  const TextSpan(
                    text: 'P:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ' Pi\n'),
                  const TextSpan(
                    text: 'E:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ' Euler\'s number\n'),
                  const TextSpan(
                    text: '^:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ' Exponent\n'),
                  const TextSpan(
                    text: 'R:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ' Square root\n'),
                  const TextSpan(
                    text: 'L:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ' Logarithm\n'),
                  const TextSpan(
                    text: 'N:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: ' Natural logarithm\n'),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  /// Builds the calculator UI layout.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalculatorAppBar(
        menuButtonKey: _tutorialTargets.menuButtonKey,
        title: widget.title,
        titleAssetPath: CalculatorPageConstants.brandTitleAsset,
        logoAssetPath: _showLogoCat
            ? CalculatorPageConstants.brandCatAsset
            : CalculatorPageConstants.brandLogoAsset,
        onLogoTapped: _handleLogoTap,
        onThemeSeedSelected: widget.onThemeSeedChanged,
        onTutorialSelected: () => _tutorialCoordinator.start(
          context,
          onStart: _prepareTutorialExpression,
          onEnd: _finishTutorialExpression,
        ),
        onAboutSelected: _showAboutDialog,
        onKeymapSelected: _showKeymapDialog,
      ),
      body: CallbackShortcuts(
        bindings: <ShortcutActivator, VoidCallback>{
          const SingleActivator(LogicalKeyboardKey.enter): () =>
              _calculateExpression(saveToHistory: true),
          const SingleActivator(LogicalKeyboardKey.numpadEnter): () =>
              _calculateExpression(saveToHistory: true),
          const SingleActivator(LogicalKeyboardKey.arrowLeft): () =>
              _insertText(CalculatorPageConstants.cursorLeftToken),
          const SingleActivator(LogicalKeyboardKey.arrowRight): () =>
              _insertText(CalculatorPageConstants.cursorRightToken),
        },
        child: Focus(
          autofocus: true,
          child: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final bool useSplitLayout =
                    constraints.maxWidth >=
                    CalculatorPageConstants.splitLayoutWidth;
                final bool hasResult = _resultText.trim().isNotEmpty;

                final double expressionHeight = useSplitLayout
                    ? (constraints.maxHeight * 0.20).clamp(110.0, 160.0)
                    : (constraints.maxHeight * 0.12).clamp(84.0, 104.0);

                final double resultHeight = useSplitLayout
                    ? (hasResult ? 100.0 : 0.0)
                    : (hasResult ? 104.0 : 0.0);

                final double displayHeight = expressionHeight + resultHeight;
                final double horizontalPadding = useSplitLayout ? 12.0 : 8.0;
                final double verticalPadding = useSplitLayout ? 12.0 : 6.0;

                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: verticalPadding,
                  ),
                  child: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 260),
                      curve: Curves.easeOutCubic,
                      height: displayHeight,
                      child: KeyedSubtree(
                        key: _tutorialTargets.displayPanelKey,
                        child: CalculatorDisplay(
                          controller: _expressionController,
                          focusNode: _expressionFocusNode,
                          onSubmitRequested: () =>
                              _calculateExpression(saveToHistory: true),
                          errorText: _expressionErrorText,
                          resultText: _resultText,
                          isCalculating: _isCalculating,
                          onIncreasePrecisionRequested:
                              (_syntaxTree.root?.value is RationalResult &&
                                  !_showAsDecimal)
                              ? null
                              : () => _calculateExpression(reuseTree: true),
                          onAutoIncreasePrecisionRequested:
                              (_syntaxTree.root?.value is RationalResult &&
                                  !_showAsDecimal)
                              ? null
                              : () => _calculateExpression(
                                  reuseTree: true,
                                  precisionIncrement: 50,
                                ),
                          onToggleFractionRequested:
                              (_syntaxTree.root?.value is RationalResult)
                              ? () {
                                  setState(() {
                                    _showAsDecimal = !_showAsDecimal;
                                  });
                                  if (_syntaxTree.root != null) {
                                    _calculateExpression(
                                      reuseTree: true,
                                      isToggle: true,
                                    );
                                  }
                                }
                              : null,
                          resultCopyButtonKey:
                              _tutorialTargets.resultCopyButtonKey,
                          resultPrecisionButtonKey:
                              _tutorialTargets.resultPrecisionButtonKey,
                          resultToggleButtonKey:
                              _tutorialTargets.resultToggleButtonKey,
                          resultJumpButtonKey:
                              _tutorialTargets.resultJumpButtonKey,
                          resultFieldKey: _tutorialTargets.resultFieldKey,
                        ),
                      ),
                    ),
                    SizedBox(height: useSplitLayout ? 10 : 6),
                    Expanded(
                      child: useSplitLayout
                          ? _buildSplitContent()
                          : _buildCompactContent(),
                    ),
                  ].column(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSplitContent() {
    return CalculatorSplitPanel(
      leading: KeyedSubtree(
        key: _tutorialTargets.historyPanelKey,
        child: CalculatorHistoryPanel(
          historyItems: _historyItems,
          onClearHistory: _clearHistory,
          onReuseEntry: _reuseHistoryEntry,
          onDeleteEntry: _deleteHistoryEntry,
        ),
      ),
      trailing: KeyedSubtree(
        key: _tutorialTargets.keypadPanelKey,
        child: _buildFunctionPad(),
      ),
    );
  }

  Widget _buildCompactContent() {
    final Widget segmentAction = const SizedBox(width: 176, height: 36);

    return CalculatorCompactPanel(
      segmentWidth: 176,
      segmentHeight: 36,
      headerPadding: const EdgeInsets.only(left: 18, top: 14),
      activeView: _compactPanelView,
      onViewChanged: (view) {
        setState(() {
          _compactPanelView = view;
        });
        _saveCompactView();
      },
      keypadPanel: KeyedSubtree(
        key: _tutorialTargets.keypadPanelKey,
        child: _buildFunctionPad(headerAction: segmentAction),
      ),
      historyPanel: KeyedSubtree(
        key: _tutorialTargets.historyPanelKey,
        child: CalculatorHistoryPanel(
          headerAction: segmentAction,
          historyItems: _historyItems,
          onClearHistory: _clearHistory,
          onReuseEntry: _reuseHistoryEntry,
          onDeleteEntry: _deleteHistoryEntry,
        ),
      ),
    );
  }

  Widget _buildFunctionPad({Widget? headerAction}) {
    return CalculatorFunctionPad(
      headerAction: headerAction,
      functionRows: CalculatorFunctionRows.rows,
      onDeletePressed: _backspace,
      onClearPressed: _clearExpression,
      onFractionPressed: () {
        _expressionController.addFunction(r'\frac', [
          TeXArg.braces,
          TeXArg.braces,
        ]);
      },
      onFunctionPressed: _insertText,
    );
  }
}
