import 'package:flutter/material.dart';
import 'package:exui/exui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'IVS Projekt 2 Kalkulačka';

    return MaterialApp(
      title: appTitle,
      theme: ThemeData(useMaterial3: true),
      home: const CalculatorPage(title: appTitle),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key, required this.title});

  final String title;

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController _expressionController = TextEditingController();
  final FocusNode _expressionFocusNode = FocusNode();

  final List<List<_FunctionButtonData>> _functionRows = const [
    [
      _FunctionButtonData(label: 'sin', insertion: 'sin()'),
      _FunctionButtonData(label: 'cos', insertion: 'cos()'),
      _FunctionButtonData(label: 'tan', insertion: 'tan()'),
      _FunctionButtonData(label: 'ln', insertion: 'ln()'),
      _FunctionButtonData(label: 'log', insertion: 'log()'),
    ],
    [
      _FunctionButtonData(label: 'asin', insertion: 'asin()'),
      _FunctionButtonData(label: 'acos', insertion: 'acos()'),
      _FunctionButtonData(label: 'atan', insertion: 'atan()'),
      _FunctionButtonData(label: '√', insertion: 'sqrt()'),
      _FunctionButtonData(label: 'x²', insertion: '^2'),
    ],
    [
      _FunctionButtonData(label: 'xʸ', insertion: '^'),
      _FunctionButtonData(label: 'π', insertion: 'pi'),
      _FunctionButtonData(label: 'e', insertion: 'e'),
      _FunctionButtonData(label: '|x|', insertion: 'abs()'),
      _FunctionButtonData(label: 'mod', insertion: 'mod'),
    ],
    [
      _FunctionButtonData(label: '(', insertion: '('),
      _FunctionButtonData(label: ')', insertion: ')'),
      _FunctionButtonData(label: '!', insertion: '!'),
      _FunctionButtonData(label: '%', insertion: '%'),
      _FunctionButtonData(label: ',', insertion: ','),
    ],
  ];

  @override
  void dispose() {
    _expressionController.dispose();
    _expressionFocusNode.dispose();
    super.dispose();
  }

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

  int _calculateCaretOffset(String insertedText) {
    final int parenthesisIndex = insertedText.indexOf('()');
    if (parenthesisIndex != -1) {
      return parenthesisIndex + 1;
    }
    return insertedText.length;
  }

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

  void _clearExpression() {
    _expressionController.clear();
    _expressionFocusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: PopupMenuButton<_AppMenuAction>(
          tooltip: 'Menu',
          icon: const Icon(Icons.menu),
          onSelected: (_AppMenuAction action) {
            switch (action) {
              case _AppMenuAction.about:
                showAboutDialog(
                  context: context,
                  applicationName: widget.title,
                  applicationVersion: '1.0.0',
                  applicationIcon: const Icon(Icons.calculate_outlined),
                  children: const [
                    Text(
                      'Scientific calculator for the IVS Projekt 2 team project.',
                    ),
                  ],
                );
            }
          },
          itemBuilder: (context) => const [
            PopupMenuItem<_AppMenuAction>(
              value: _AppMenuAction.about,
              child: ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('About'),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _expressionController,
              focusNode: _expressionFocusNode,
              maxLines: null,
              expands: true,
              textAlignVertical: TextAlignVertical.top,
              decoration: const InputDecoration(
                labelText: 'Expression',
                hintText: 'Enter your calculation here',
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.functions),
              ),
            ),
          ).container(height: 150),
          [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 6.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Result',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '0',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ).expanded5,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox.expand(
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text('=').fontSize(32),
                ),
              ),
            ).expanded1,
          ].row().container(height: 96),
          [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'History',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          IconButton.filledTonal(
                            onPressed: () {},
                            icon: const Icon(Icons.delete_sweep_outlined),
                            tooltip: 'Clear history',
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Expanded(
                        child: ListView.separated(
                          itemCount: 5,
                          separatorBuilder: (_, __) => const Divider(height: 1),
                          itemBuilder: (context, index) {
                            const historyItems = [
                              ('sin(pi / 2)', '1'),
                              ('sqrt(2)', '1.41421356'),
                              ('5!', '120'),
                              ('log(100)', '2'),
                              ('3^4 + 1', '82'),
                            ];

                            final item = historyItems[index];

                            return ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 4.0,
                              ),
                              leading: const Icon(Icons.history),
                              title: Text(
                                item.$1,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Text(
                                '= ${item.$2}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSurfaceVariant,
                                    ),
                              ),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.north_west),
                                tooltip: 'Reuse expression',
                              ),
                              onTap: () {},
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ).expanded1,
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Scientific functions',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        IconButton.filledTonal(
                          onPressed: _backspace,
                          icon: const Icon(Icons.backspace_outlined),
                          tooltip: 'Delete',
                        ),
                        const SizedBox(width: 8),
                        FilledButton.tonal(
                          onPressed: _clearExpression,
                          child: const Text('Clear'),
                        ),
                        const SizedBox(width: 8),
                        FilledButton.tonal(
                          onPressed: () {},
                          child: const Text('a/b'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: Column(
                        children: _functionRows
                            .map(
                              (row) => Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Row(
                                    children: row
                                        .map(
                                          (button) => Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 4.0,
                                                  ),
                                              child: OutlinedButton(
                                                onPressed: () => _insertText(
                                                  button.insertion,
                                                ),
                                                style: OutlinedButton.styleFrom(
                                                  minimumSize:
                                                      const Size.fromHeight(56),
                                                  textStyle: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          16,
                                                        ),
                                                  ),
                                                ),
                                                child: Text(button.label),
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ].column(crossAxisAlignment: CrossAxisAlignment.start),
                ),
              ),
            ).expanded1,
          ].row().container(height: 350),
        ].column(spacing: 10.0),
      ),
    );
  }
}

class _FunctionButtonData {
  const _FunctionButtonData({required this.label, required this.insertion});

  final String label;
  final String insertion;
}

enum _AppMenuAction { about }
