import 'package:exui/exui.dart';
import 'package:flutter/material.dart';

import '../models/function_button_data.dart';
import '../models/history_entry.dart';
import '../widgets/calculator_app_bar.dart';
import '../widgets/calculator_expression_field.dart';
import '../widgets/calculator_function_pad.dart';
import '../widgets/calculator_history_panel.dart';
import '../widgets/calculator_result_bar.dart';

/// Main calculator screen containing the expression field, result bar,
/// history panel, function pad, and app menu.
class CalculatorPage extends StatefulWidget {
  /// Creates the main calculator page.
  const CalculatorPage({super.key, required this.title});

  /// Title displayed in the app bar and dialog metadata.
  final String title;

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

/// State for [CalculatorPage].
///
/// Manages text insertion into the expression field and interactive controls
/// used by the calculator UI.
class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController _expressionController = TextEditingController();
  final FocusNode _expressionFocusNode = FocusNode();

  static const List<HistoryEntry> _historyItems = [
    HistoryEntry(expression: 'sin(pi / 2)', result: '1'),
    HistoryEntry(expression: 'sqrt(2)', result: '1.41421356'),
    HistoryEntry(expression: '5!', result: '120'),
    HistoryEntry(expression: 'log(100)', result: '2'),
    HistoryEntry(expression: '3^4 + 1', result: '82'),
  ];

  static const List<List<FunctionButtonData>> _functionRows = [
    [
      FunctionButtonData(label: 'sin', insertion: 'sin()'),
      FunctionButtonData(label: 'cos', insertion: 'cos()'),
      FunctionButtonData(label: 'tan', insertion: 'tan()'),
      FunctionButtonData(label: 'ln', insertion: 'ln()'),
      FunctionButtonData(label: 'log', insertion: 'log()'),
    ],
    [
      FunctionButtonData(label: 'asin', insertion: 'asin()'),
      FunctionButtonData(label: 'acos', insertion: 'acos()'),
      FunctionButtonData(label: 'atan', insertion: 'atan()'),
      FunctionButtonData(label: '√', insertion: 'sqrt()'),
      FunctionButtonData(label: 'x²', insertion: '^2'),
    ],
    [
      FunctionButtonData(label: 'xʸ', insertion: '^'),
      FunctionButtonData(label: 'π', insertion: 'pi'),
      FunctionButtonData(label: 'e', insertion: 'e'),
      FunctionButtonData(label: '|x|', insertion: 'abs()'),
      FunctionButtonData(label: 'mod', insertion: 'mod'),
    ],
    [
      FunctionButtonData(label: '(', insertion: '('),
      FunctionButtonData(label: ')', insertion: ')'),
      FunctionButtonData(label: '!', insertion: '!'),
      FunctionButtonData(label: '%', insertion: '%'),
      FunctionButtonData(label: ',', insertion: ','),
    ],
  ];

  /// Releases controller and focus resources used by the expression field.
  @override
  void dispose() {
    _expressionController.dispose();
    _expressionFocusNode.dispose();
    super.dispose();
  }

  /// Inserts [text] into the expression field at the current cursor or
  /// selection position.
  ///
  /// If the inserted text contains `()`, the caret is moved inside the
  /// parentheses to make function entry faster.
  void _insertText(String text) {
    final TextEditingValue value = _expressionController.value;
    final TextSelection selection = value.selection;
    final int start = selection.start >= 0
        ? selection.start
        : value.text.length;
    final int end = selection.end >= 0 ? selection.end : value.text.length;

    final String newText = value.text.replaceRange(start, end, text);
    final int caretOffset = _calculateCaretOffset(text);

    _expressionController.value = TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: start + caretOffset),
    );

    _expressionFocusNode.requestFocus();
  }

  /// Calculates the target caret position after inserting [insertedText].
  ///
  /// For function-like values ending in `()`, the caret is placed between the
  /// parentheses. Otherwise it is placed after the inserted text.
  int _calculateCaretOffset(String insertedText) {
    final int parenthesisIndex = insertedText.indexOf('()');
    if (parenthesisIndex != -1) {
      return parenthesisIndex + 1;
    }
    return insertedText.length;
  }

  /// Removes the selected text or the character immediately before the caret.
  void _backspace() {
    final TextEditingValue value = _expressionController.value;
    final TextSelection selection = value.selection;

    if (selection.start < 0 || selection.end < 0) {
      return;
    }

    if (!selection.isCollapsed) {
      final String newText = value.text.replaceRange(
        selection.start,
        selection.end,
        '',
      );
      _expressionController.value = TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: selection.start),
      );
      _expressionFocusNode.requestFocus();
      return;
    }

    if (selection.start == 0) {
      return;
    }

    final int removeIndex = selection.start - 1;
    final String newText = value.text.replaceRange(
      removeIndex,
      selection.start,
      '',
    );

    _expressionController.value = TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: removeIndex),
    );

    _expressionFocusNode.requestFocus();
  }

  /// Clears the entire expression field and returns focus to it.
  void _clearExpression() {
    _expressionController.clear();
    _expressionFocusNode.requestFocus();
  }

  /// Opens the standard Flutter about dialog for the application.
  void _showAboutDialog() {
    showAboutDialog(
      context: context,
      applicationName: widget.title,
      applicationVersion: '1.0.0',
      applicationIcon: const Icon(Icons.calculate_outlined),
      children: const [
        Text('Scientific calculator for the IVS Projekt 2 team project.'),
      ],
    );
  }

  /// Builds the calculator UI layout.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalculatorAppBar(
        title: widget.title,
        onAboutSelected: _showAboutDialog,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: [
          CalculatorExpressionField(
            controller: _expressionController,
            focusNode: _expressionFocusNode,
          ).container(height: 150),
          CalculatorResultBar(
            resultText: '0',
            onCalculatePressed: () {},
          ).container(height: 96),
          [
            CalculatorHistoryPanel(
              historyItems: _historyItems,
              onClearHistory: () {},
              onReuseEntry: (_) {},
            ).expanded1,
            CalculatorFunctionPad(
              functionRows: _functionRows,
              onDeletePressed: _backspace,
              onClearPressed: _clearExpression,
              onFractionPressed: () {},
              onFunctionPressed: _insertText,
            ).expanded1,
          ].row().container(height: 350),
        ].column(spacing: 10.0),
      ),
    );
  }
}
