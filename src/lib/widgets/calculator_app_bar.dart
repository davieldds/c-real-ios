import 'package:flutter/material.dart';

/// Actions available from the calculator app bar menu.
enum AppMenuAction {
  /// Opens the standard about dialog.
  about,
}

/// Material 3 app bar used by the calculator screen.
class CalculatorAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Creates the calculator app bar.
  const CalculatorAppBar({
    super.key,
    required this.title,
    required this.onAboutSelected,
  });

  /// Title shown in the app bar.
  final String title;

  /// Callback invoked when the user selects the about menu action.
  final VoidCallback onAboutSelected;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: PopupMenuButton<AppMenuAction>(
        tooltip: 'Menu',
        icon: const Icon(Icons.menu),
        onSelected: (AppMenuAction action) {
          switch (action) {
            case AppMenuAction.about:
              onAboutSelected();
          }
        },
        itemBuilder: (context) => const [
          PopupMenuItem<AppMenuAction>(
            value: AppMenuAction.about,
            child: ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('About'),
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
