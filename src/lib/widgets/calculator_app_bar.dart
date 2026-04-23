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
    required this.titleAssetPath,
    required this.logoAssetPath,
    required this.onAboutSelected,
  });

  /// Title shown in the app bar.
  final String title;

  /// Asset path for the brand wordmark used in the app bar title.
  final String titleAssetPath;

  /// Asset path for the brand logo used in the app bar leading slot.
  final String logoAssetPath;

  /// Callback invoked when the user selects the about menu action.
  final VoidCallback onAboutSelected;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
        child: Image.asset(logoAssetPath, fit: BoxFit.contain),
      ),
      leadingWidth: 60,
      title: Image.asset(
        titleAssetPath,
        height: 34,
        fit: BoxFit.contain,
        errorBuilder: (_, _, _) => Text(title),
      ),
      actions: [
        PopupMenuButton<AppMenuAction>(
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
        const SizedBox(width: 4),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
