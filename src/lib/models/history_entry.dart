/// Immutable history item containing a previous expression and its result.
class HistoryEntry {
  /// Creates a history entry.
  const HistoryEntry({required this.expression, required this.result});

  /// Expression shown in the history list.
  final String expression;

  /// Result shown for the expression.
  final String result;
}
