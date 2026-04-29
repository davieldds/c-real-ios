import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Actions available from the calculator app bar menu.
enum AppMenuAction {
  /// Starts the in-app tutorial.
  tutorial,

  /// Opens the standard about dialog.
  about,

  /// Shows the keymap/keybindings popup.
  keymap,
}

/// Material 3 app bar used by the calculator screen.
class CalculatorAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Creates the calculator app bar.
  const CalculatorAppBar({
    super.key,
    required this.menuButtonKey,
    required this.title,
    required this.titleAssetPath,
    required this.logoAssetPath,
    this.onLogoTapped,
    required this.onThemeSeedSelected,
    required this.onTutorialSelected,
    required this.onAboutSelected,
    required this.onKeymapSelected,
  });

  /// Key attached to app bar menu button for tutorial spotlight.
  final GlobalKey menuButtonKey;

  /// Title shown in the app bar.
  final String title;

  /// Asset path for the brand wordmark used in the app bar title.
  final String titleAssetPath;

  /// Asset path for the brand logo used in the app bar leading slot.
  final String logoAssetPath;

  /// Callback invoked when the user taps the app bar logo.
  final VoidCallback? onLogoTapped;

  /// Callback invoked when the user taps a title letter color.
  final void Function(Color color, {bool monochrome}) onThemeSeedSelected;

  /// Callback invoked when the user selects the about menu action.
  final VoidCallback onAboutSelected;

  /// Callback invoked when the user selects the tutorial menu action.
  final VoidCallback onTutorialSelected;

  /// Callback invoked when the user selects the keymap menu action.
  final VoidCallback onKeymapSelected;

  static const double _toolbarHeight = kToolbarHeight + 12.0;
  static const double _contentInset = 8.0;
  static const double _reservedHeight = kToolbarHeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      clipBehavior: Clip.none,
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      toolbarHeight: _toolbarHeight,
      titleSpacing: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Transform.translate(
          offset: const Offset(0, 12.0), // Adjust vertical offset here
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onLogoTapped,
            child: Image.asset(logoAssetPath, height: 60, fit: BoxFit.contain),
          ),
        ),
      ),
      leadingWidth: 100,
      title: SizedBox(
        height:
            60, // Bound the vertical height to prevent Infinity constraints in AppBar title
        child: Transform.translate(
          offset: const Offset(
            -20.0,
            10.0,
          ), // Match the logo's vertical offset and pull it closer horizontally
          child: Padding(
            padding: const EdgeInsets.only(right: _contentInset),
            child: _InteractiveTitleWordmark(
              assetPath: titleAssetPath,
              onThemeSeedSelected: onThemeSeedSelected,
              fallback: Text(title),
            ),
          ),
        ),
      ),
      actions: [
        Transform.translate(
          offset: const Offset(
            0,
            12.0,
          ), // Mirror the vertical offset of the logo
          child: Padding(
            padding: const EdgeInsets.only(
              right: 12.0,
            ), // Adjust right padding if needed
            child: PopupMenuButton<AppMenuAction>(
              tooltip: 'Menu',
              icon: const Icon(Icons.menu, size: 36), // Increase icon size
              onSelected: (AppMenuAction action) {
                switch (action) {
                  case AppMenuAction.tutorial:
                    onTutorialSelected();
                    break;
                  case AppMenuAction.about:
                    onAboutSelected();
                    break;
                  case AppMenuAction.keymap:
                    onKeymapSelected();
                    break;
                }
              },
              key: menuButtonKey,
              itemBuilder: (context) => const [
                PopupMenuItem<AppMenuAction>(
                  value: AppMenuAction.tutorial,
                  child: ListTile(
                    leading: Icon(Icons.school_outlined),
                    title: Text('Tutorial'),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
                PopupMenuItem<AppMenuAction>(
                  value: AppMenuAction.keymap,
                  child: ListTile(
                    leading: Icon(Icons.keyboard_outlined),
                    title: Text('Keymap'),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
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
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_reservedHeight);
}

enum _TitleSeedSlot { c, dash, r, e, a, l }

class _InteractiveTitleWordmark extends StatelessWidget {
  const _InteractiveTitleWordmark({
    required this.assetPath,
    required this.onThemeSeedSelected,
    required this.fallback,
  });

  final String assetPath;
  final void Function(Color color, {bool monochrome}) onThemeSeedSelected;
  final Widget fallback;

  static const Map<_TitleSeedSlot, Color> _slotColors = {
    _TitleSeedSlot.c: Color(0xFFF58EA1),
    _TitleSeedSlot.r: Color(0xFFFFC99D),
    _TitleSeedSlot.e: Color(0xFFFFF29D),
    _TitleSeedSlot.a: Color(0xFFC4F4B7),
    _TitleSeedSlot.l: Color(0xFFADD5FF),
  };
  static const double _wordmarkHeight = 60;
  static const double _wordmarkAspectRatio = 2000 / 800;

  @override
  Widget build(BuildContext context) {
    final double wordmarkWidth = _wordmarkHeight * _wordmarkAspectRatio;
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: wordmarkWidth,
        height: _wordmarkHeight,
        child: Stack(
          fit: StackFit.expand,
          children: [
            SvgPicture.asset(
              assetPath,
              height: _wordmarkHeight,
              fit: BoxFit.contain,
              alignment: Alignment.centerLeft,
              placeholderBuilder: (_) => fallback,
            ),
            ..._buildTapZones(wordmarkWidth),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTapZones(double totalWidth) {
    // Hit zones follow the original SVG viewBox spacing for C-R e a l.
    const List<({double start, double end, _TitleSeedSlot slot})> zones = [
      (start: 0.08, end: 0.27, slot: _TitleSeedSlot.c),
      (start: 0.27, end: 0.39, slot: _TitleSeedSlot.dash),
      (start: 0.39, end: 0.55, slot: _TitleSeedSlot.r),
      (start: 0.55, end: 0.69, slot: _TitleSeedSlot.e),
      (start: 0.69, end: 0.84, slot: _TitleSeedSlot.a),
      (start: 0.84, end: 1.00, slot: _TitleSeedSlot.l),
    ];

    return zones
        .map((zone) {
          final double left = totalWidth * zone.start;
          final double width = totalWidth * (zone.end - zone.start);
          return Positioned(
            left: left,
            width: width,
            top: 0,
            bottom: 0,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  if (zone.slot == _TitleSeedSlot.dash) {
                    onThemeSeedSelected(
                      const Color(0xFF1A1A1A),
                      monochrome: true,
                    );
                    return;
                  }
                  final Color? color = _slotColors[zone.slot];
                  if (color != null) {
                    onThemeSeedSelected(color);
                  }
                },
              ),
            ),
          );
        })
        .toList(growable: false);
  }
}
