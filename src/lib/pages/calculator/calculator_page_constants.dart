import '../../models/function_button_data.dart';

/// Layout, asset, and storage constants for the calculator page.
class CalculatorPageConstants {
  /// Prevents instantiation.
  const CalculatorPageConstants._();

  /// Minimum width that triggers the split history/keypad layout.
  static const double splitLayoutWidth = 980;

  /// Brand logo asset used in the app bar and about dialog.
  static const String brandLogoAsset = 'assets/logo/logo512.png';

  /// Brand cat mascot asset used in the about dialog.
  static const String brandCatAsset = 'assets/logocat/logocat512.png';

  /// Brand title wordmark used in the app bar.
  static const String brandTitleAsset = 'assets/title/title.svg';

  /// Shared preferences key for persisted history.
  static const String historyStorageKey = 'calculator.history';

  /// Shared preferences key for persisted result.
  static const String resultStorageKey = 'calculator.result';

  /// Shared preferences key for compact view selection.
  static const String compactViewStorageKey = 'calculator.compact_view';

  /// Shared preferences key tracking first-run tutorial completion.
  static const String tutorialSeenStorageKey = 'calculator.tutorial_seen';

  /// Maximum number of history entries to keep.
  static const int maxHistoryItems = 50;

  /// Debounce delay before preview evaluation.
  static const Duration previewDebounce = Duration(milliseconds: 200);

  /// Token inserted to move the caret left inside the math field.
  static const String cursorLeftToken = '__LEFT__';

  /// Token inserted to move the caret right inside the math field.
  static const String cursorRightToken = '__RIGHT__';
}

/// Predefined button rows used by the function keypad.
class CalculatorFunctionRows {
  /// Prevents instantiation.
  const CalculatorFunctionRows._();

  /// Scientific keypad rows in display order.
  static const List<List<FunctionButtonData>> rows = [
    [
      FunctionButtonData(label: '!', insertion: '!'),
      FunctionButtonData(
        label: 'π',
        insertion:
            '{'
            r'\pi'
            '}',
      ),
      FunctionButtonData(label: 'e', insertion: '{e}'),
      FunctionButtonData(label: 'logᵧ(x)', insertion: r'\log_'),
      FunctionButtonData(label: 'ln(x)', insertion: r'\ln'),
    ],
    [
      FunctionButtonData(label: 'x²', insertion: '^2'),
      FunctionButtonData(label: 'xʸ', insertion: '^'),
      FunctionButtonData(label: '×10ˣ', insertion: r'\cdot 10^'),
      FunctionButtonData(label: '√x', insertion: r'\sqrt{'),
      FunctionButtonData(label: 'ʸ√x', insertion: r'\nrt_'),
    ],
    [
      FunctionButtonData(label: '7', insertion: '7', isNumber: true),
      FunctionButtonData(label: '8', insertion: '8', isNumber: true),
      FunctionButtonData(label: '9', insertion: '9', isNumber: true),
      FunctionButtonData(label: '(', insertion: '('),
      FunctionButtonData(label: ')', insertion: ')'),
    ],
    [
      FunctionButtonData(label: '4', insertion: '4', isNumber: true),
      FunctionButtonData(label: '5', insertion: '5', isNumber: true),
      FunctionButtonData(label: '6', insertion: '6', isNumber: true),
      FunctionButtonData(label: '×', insertion: r'\cdot'),
      FunctionButtonData(label: '÷', insertion: r'\frac'),
    ],
    [
      FunctionButtonData(label: '1', insertion: '1', isNumber: true),
      FunctionButtonData(label: '2', insertion: '2', isNumber: true),
      FunctionButtonData(label: '3', insertion: '3', isNumber: true),
      FunctionButtonData(label: '+', insertion: '+'),
      FunctionButtonData(label: '-', insertion: '-'),
    ],
    [
      FunctionButtonData(label: '0', insertion: '0', isNumber: true),
      FunctionButtonData(label: '.', insertion: '.', isNumber: true),
      FunctionButtonData(label: '%', insertion: r'\%'),
      FunctionButtonData(
        label: '←',
        insertion: CalculatorPageConstants.cursorLeftToken,
      ),
      FunctionButtonData(
        label: '→',
        insertion: CalculatorPageConstants.cursorRightToken,
      ),
    ],
  ];
}
