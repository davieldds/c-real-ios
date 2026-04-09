import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:math_keyboard/math_keyboard.dart';
// ignore: implementation_imports
import 'package:math_keyboard/src/foundation/node.dart';

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
  final MathFieldEditingController _expressionController =
      MathFieldEditingController();
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
      FunctionButtonData(label: 'sin', insertion: r'\sin'),
      FunctionButtonData(label: 'cos', insertion: r'\cos'),
      FunctionButtonData(label: 'tan', insertion: r'\tan'),
      FunctionButtonData(label: 'ln', insertion: r'\ln'),
      FunctionButtonData(label: 'log', insertion: r'\log_'),
    ],
    [
      FunctionButtonData(label: 'asin', insertion: r'\sin^{-1}'),
      FunctionButtonData(label: 'acos', insertion: r'\cos^{-1}'),
      FunctionButtonData(label: 'atan', insertion: r'\tan^{-1}'),
      FunctionButtonData(label: '√', insertion: r'\sqrt{'),
      FunctionButtonData(label: 'x²', insertion: '^2'),
    ],
    [
      FunctionButtonData(label: 'xʸ', insertion: '^'),
      FunctionButtonData(label: 'π', insertion: r'\pi'),
      FunctionButtonData(label: 'e', insertion: 'e'),
      FunctionButtonData(label: '|x|', insertion: 'abs()'),
      FunctionButtonData(label: 'mod', insertion: r'\mod'),
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
  void initState() {
    super.initState();
    _expressionController.addListener(() {
      try {
        final tex = _expressionController.currentEditingValue();
        TeXParser(tex).parse();
        // You can update the live result here if desired using the parsed expression
      } catch (e) {
        // Ignore parse errors while typing
      }
    });
  }

  @override
  void dispose() {
    _expressionController.dispose();
    _expressionFocusNode.dispose();
    super.dispose();
  }

  /// Inserts [text] into the expression field using the MathField controller.
  void _insertText(String text) {
    if (text == r'\sqrt{') {
      _expressionController.addFunction(r'\sqrt', [TeXArg.braces]);
    } else if (text == '^') {
      _expressionController.addFunction('^', [TeXArg.braces]);
    } else if (text == r'\log_') {
      _expressionController.addFunction(r'\log_', [
        TeXArg.braces,
        TeXArg.parentheses,
      ]);
    } else if (const [
      r'\sin',
      r'\cos',
      r'\tan',
      r'\ln',
      r'\sin^{-1}',
      r'\cos^{-1}',
      r'\tan^{-1}',
    ].contains(text)) {
      _expressionController.addFunction(text, [TeXArg.parentheses]);
    } else if (text == 'abs()') {
      _expressionController.addLeaf('|');
    } else {
      _expressionController.addLeaf(text);
    }
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
              onFractionPressed: () {
                _expressionController.addFunction(r'\frac', [
                  TeXArg.braces,
                  TeXArg.braces,
                ]);
              },
              onFunctionPressed: _insertText,
            ).expanded1,
          ].row().container(height: 350),
        ].column(spacing: 10.0),
      ),
    );
  }
}
