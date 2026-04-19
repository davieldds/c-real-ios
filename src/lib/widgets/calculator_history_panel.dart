import 'package:flutter/material.dart';

import '../models/history_entry.dart';

/// Scrollable history panel containing previous expressions and their results.
class CalculatorHistoryPanel extends StatelessWidget {
  /// Creates the history panel.
  const CalculatorHistoryPanel({
    super.key,
    required this.historyItems,
    required this.onClearHistory,
    required this.onReuseEntry,
  });

  /// Entries displayed in the history list.
  final List<HistoryEntry> historyItems;

  /// Callback invoked when the user requests history clearing.
  final VoidCallback onClearHistory;

  /// Callback invoked when the user wants to reuse an entry.
  final ValueChanged<HistoryEntry> onReuseEntry;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    onPressed: onClearHistory,
                    icon: const Icon(Icons.delete_sweep_outlined),
                    tooltip: 'Clear history',
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Expanded(
                child: historyItems.isEmpty
                    ? Center(
                        child: Text(
                          'No history yet.\nCalculate an expression to see it here.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                              ),
                        ),
                      )
                    : ListView.separated(
                        itemCount: historyItems.length,
                        separatorBuilder: (context, index) =>
                            const Divider(height: 1),
                        itemBuilder: (context, index) {
                          final HistoryEntry item = historyItems[index];

                          return ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 4.0,
                            ),
                            leading: const Icon(Icons.history),
                            title: Text(
                              item.expression,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
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
                            trailing: IconButton(
                              onPressed: () => onReuseEntry(item),
                              icon: const Icon(Icons.north_west),
                              tooltip: 'Reuse expression',
                            ),
                            onTap: () => onReuseEntry(item),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
