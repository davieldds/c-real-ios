/// Immutable history item containing a previous expression and its result.
class HistoryEntry {
  /// Creates a history entry.
  const HistoryEntry({required this.expression, required this.result});

  /// Expression shown in the history list.
  final String expression;

  /// Result shown for the expression.
  final String result;

  /// Converts this entry to a serializable map.
  Map<String, String> toMap() {
    return {'expression': expression, 'result': result};
  }

  /// Creates a history entry from persisted map data.
  factory HistoryEntry.fromMap(Map<String, dynamic> map) {
    return HistoryEntry(
      expression: (map['expression'] ?? '').toString(),
      result: (map['result'] ?? '').toString(),
    );
  }
}
