part of 'calculator_page.dart';

/// Persistence helpers for [CalculatorPage].
///
/// This mixin handles saving and restoring history, result state, and compact
/// view preferences from shared preferences.
mixin _CalculatorPagePersistence on _CalculatorPageStateBase {
  /// Restores history, result, and compact view preferences.
  @override
  Future<void> _loadPersistedState() async {
    final prefs = await SharedPreferences.getInstance();
    final rawJson = prefs.getString(CalculatorPageConstants.historyStorageKey);
    final persistedResult = prefs.getString(
      CalculatorPageConstants.resultStorageKey,
    );
    final persistedCompactView = prefs.getString(
      CalculatorPageConstants.compactViewStorageKey,
    );
    final bool hasSeenTutorial =
        prefs.getBool(CalculatorPageConstants.tutorialSeenStorageKey) ?? false;

    try {
      var loadedEntries = <HistoryEntry>[];
      if (rawJson != null && rawJson.isNotEmpty) {
        final decoded = jsonDecode(rawJson);
        if (decoded is List) {
          loadedEntries = decoded
              .whereType<Map<String, dynamic>>()
              .map(HistoryEntry.fromMap)
              .where((entry) => entry.expression.trim().isNotEmpty)
              .take(CalculatorPageConstants.maxHistoryItems)
              .toList();
        }
      }

      if (!mounted) {
        return;
      }

      setState(() {
        if (loadedEntries.isNotEmpty) {
          _historyItems
            ..clear()
            ..addAll(loadedEntries);
        }

        if (persistedResult != null && persistedResult.isNotEmpty) {
          _resultText = persistedResult;
        }

        if (persistedCompactView == CompactPanelView.history.name) {
          _compactPanelView = CompactPanelView.history;
        }
      });

      _expressionController.clear();

      if (!hasSeenTutorial) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) {
            return;
          }
          _tutorialCoordinator.start(
            context,
            persistCompletion: true,
            onStart: _prepareTutorialExpression,
            onEnd: _finishTutorialExpression,
          );
        });
      }
    } catch (_) {
      // Ignore malformed persisted history and keep current in-memory defaults.
    }
  }

  /// Saves history and result state together.
  @override
  Future<void> _saveState() async {
    await Future.wait([_saveHistory(), _saveResult()]);
  }

  /// Persists the current history list.
  @override
  Future<void> _saveHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final encoded = jsonEncode(
      _historyItems.map((item) => item.toMap()).toList(),
    );
    await prefs.setString(CalculatorPageConstants.historyStorageKey, encoded);
  }

  /// Persists the current result text.
  @override
  Future<void> _saveResult() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      CalculatorPageConstants.resultStorageKey,
      _resultText,
    );
  }

  /// Persists the selected compact panel view.
  Future<void> _saveCompactView() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      CalculatorPageConstants.compactViewStorageKey,
      _compactPanelView.name,
    );
  }
}
