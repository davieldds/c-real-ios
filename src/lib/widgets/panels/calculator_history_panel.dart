import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

import '../../models/history_entry.dart';

/// Scrollable history panel containing previous expressions and their results.
class CalculatorHistoryPanel extends StatelessWidget {
  /// Creates the history panel.
  const CalculatorHistoryPanel({
    super.key,
    this.headerAction,
    required this.historyItems,
    required this.onClearHistory,
    required this.onReuseEntry,
    required this.onDeleteEntry,
  });

  /// Optional action widget shown in the header.
  final Widget? headerAction;

  /// Entries displayed in the history list.
  final List<HistoryEntry> historyItems;

  /// Callback invoked when the user requests history clearing.
  final VoidCallback onClearHistory;

  /// Callback invoked when the user wants to reuse an entry.
  final ValueChanged<HistoryEntry> onReuseEntry;

  /// Callback invoked when the user wants to delete one entry.
  final ValueChanged<HistoryEntry> onDeleteEntry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: [
            [
              ?headerAction,
              if (headerAction == null)
                Expanded(
                  child: Text(
                    'History',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                )
              else
                const Spacer(),
              FilledButton.tonal(
                onPressed: onClearHistory,
                child: const Icon(Icons.delete_sweep_outlined),
              ),
            ].row(),
            const SizedBox(height: 12),
            Expanded(
              child: historyItems.isEmpty
                  ? Center(
                      child: Text(
                        'No history yet.\nCalculate an expression to see it here.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    )
                  : Material(
                      type: MaterialType.transparency,
                      clipBehavior: Clip.hardEdge,
                      child: ListView.separated(
                        itemCount: historyItems.length,
                        separatorBuilder: (context, index) =>
                            const Divider(height: 1),
                        itemBuilder: (context, index) {
                          final HistoryEntry item = historyItems[index];

                          return ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 8.0,
                            ),
                            minVerticalPadding: 8,
                            leading: const Icon(Icons.history),
                            title: ClipRect(
                              child: SizedBox(
                                height: 24,
                                width: double.infinity,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Math.tex(
                                    item.expression,
                                    mathStyle: MathStyle.text,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(fontWeight: FontWeight.w500),
                                    onErrorFallback: (_) => Text(
                                      item.expression,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            subtitle: Text(
                              '= ${item.result}',
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
                            trailing: SizedBox(
                              height: 36,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ClipOval(
                                    child: Material(
                                      color: Colors.transparent,
                                      child: Tooltip(
                                        message: 'Reuse expression',
                                        child: InkResponse(
                                          onTap: () => onReuseEntry(item),
                                          containedInkWell: true,
                                          highlightShape: BoxShape.circle,
                                          radius: 16,
                                          child: const SizedBox(
                                            width: 32,
                                            height: 32,
                                            child: Icon(
                                              Icons.north_west,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  ClipOval(
                                    child: Material(
                                      color: Colors.transparent,
                                      child: Tooltip(
                                        message: 'Delete entry',
                                        child: InkResponse(
                                          onTap: () => onDeleteEntry(item),
                                          containedInkWell: true,
                                          highlightShape: BoxShape.circle,
                                          radius: 16,
                                          child: const SizedBox(
                                            width: 32,
                                            height: 32,
                                            child: Icon(
                                              Icons.delete_outline,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () => onReuseEntry(item),
                          );
                        },
                      ),
                    ),
            ),
          ].column(crossAxisAlignment: CrossAxisAlignment.start),
        ),
      ),
    );
  }
}
