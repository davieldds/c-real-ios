import 'package:flutter/material.dart';

import 'pages/calculator_page.dart';

/// Starts the calculator application.
void main() {
  runApp(const MainApp());
}

/// Root widget configuring the Material 3 app shell.
class MainApp extends StatelessWidget {
  /// Creates the application root.
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'C-Real';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        filledButtonTheme: const FilledButtonThemeData(
          style: ButtonStyle(
            alignment: Alignment.center,
          ),
        ),
        outlinedButtonTheme: const OutlinedButtonThemeData(
          style: ButtonStyle(
            alignment: Alignment.center,
          ),
        ),
      ),
      home: const CalculatorPage(title: appTitle),
    );
  }
}
