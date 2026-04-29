import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'licenses/app_licenses.dart';
import 'pages/calculator/calculator_page.dart';

/// Starts the calculator application.
void main() {
  registerAppLicenses();
  runApp(const MainApp());
}

/// Root widget configuring the Material 3 app shell.
class MainApp extends StatefulWidget {
  /// Creates the application root.
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  static const String _themeSeedColorStorageKey = 'calculator.theme_seed_color';
  static const String _themeVariantStorageKey = 'calculator.theme_variant';
  static const String _darkModeStorageKey = 'calculator.dark_mode';

  Color _themeSeedColor = const Color(0xFFF58EA1);
  DynamicSchemeVariant _themeVariant = DynamicSchemeVariant.tonalSpot;
  bool _useDarkMode = false;

  @override
  void initState() {
    super.initState();
    _loadThemePreferences();
  }

  Future<void> _loadThemePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final int? persistedSeedColor = prefs.getInt(_themeSeedColorStorageKey);
    final String? persistedVariant = prefs.getString(_themeVariantStorageKey);
    final bool? persistedDarkMode = prefs.getBool(_darkModeStorageKey);

    if (!mounted) {
      return;
    }

    setState(() {
      if (persistedSeedColor != null) {
        _themeSeedColor = Color(persistedSeedColor);
      }
      if (persistedVariant == DynamicSchemeVariant.monochrome.name) {
        _themeVariant = DynamicSchemeVariant.monochrome;
      } else if (persistedVariant == DynamicSchemeVariant.tonalSpot.name) {
        _themeVariant = DynamicSchemeVariant.tonalSpot;
      }
      if (persistedDarkMode != null) {
        _useDarkMode = persistedDarkMode;
      }
    });
  }

  Future<void> _saveThemePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await Future.wait([
      prefs.setInt(_themeSeedColorStorageKey, _themeSeedColor.toARGB32()),
      prefs.setString(_themeVariantStorageKey, _themeVariant.name),
      prefs.setBool(_darkModeStorageKey, _useDarkMode),
    ]);
  }

  void _handleThemeSeedChange(Color color, {bool monochrome = false}) {
    setState(() {
      _themeSeedColor = color;
      _themeVariant = monochrome
          ? DynamicSchemeVariant.monochrome
          : DynamicSchemeVariant.tonalSpot;
      if (monochrome) {
        _useDarkMode = !_useDarkMode;
      }
    });
    _saveThemePreferences();
  }

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'C-Real';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      themeMode: _useDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _themeSeedColor,
          dynamicSchemeVariant: _themeVariant,
        ),
        fontFamily: 'Nunito',
        filledButtonTheme: const FilledButtonThemeData(
          style: ButtonStyle(alignment: Alignment.center),
        ),
        outlinedButtonTheme: const OutlinedButtonThemeData(
          style: ButtonStyle(alignment: Alignment.center),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: _themeSeedColor,
          brightness: Brightness.dark,
          dynamicSchemeVariant: _themeVariant,
        ),
        fontFamily: 'Nunito',
        filledButtonTheme: const FilledButtonThemeData(
          style: ButtonStyle(alignment: Alignment.center),
        ),
        outlinedButtonTheme: const OutlinedButtonThemeData(
          style: ButtonStyle(alignment: Alignment.center),
        ),
      ),
      home: CalculatorPage(
        title: appTitle,
        onThemeSeedChanged: _handleThemeSeedChange,
      ),
    );
  }
}
