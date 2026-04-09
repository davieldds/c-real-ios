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
    const String appTitle = 'IVS Projekt 2 Kalkulačka';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const CalculatorPage(title: appTitle),
    );
  }
}
