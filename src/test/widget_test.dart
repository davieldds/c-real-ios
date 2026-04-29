import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:ivs_projekt_2/main.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({'calculator.tutorial_seen': true});
  });

  Future<void> pumpMainApp(WidgetTester tester, {Size? viewport}) async {
    if (viewport != null) {
      tester.view.physicalSize = viewport;
      tester.view.devicePixelRatio = 1.0;
    }
    await tester.pumpWidget(const MainApp());
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 250));
  }

  testWidgets('MainApp renders calculator shell', (WidgetTester tester) async {
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await pumpMainApp(tester, viewport: const Size(1200, 850));

    expect(find.text('Enter an expression…'), findsOneWidget);
    expect(find.text('History'), findsOneWidget);
    expect(find.widgetWithText(TextButton, 'Clear'), findsOneWidget);
    expect(find.byType(FilledButton), findsWidgets);
  });

  testWidgets('Enter triggers calculation and shows inline error', (
    WidgetTester tester,
  ) async {
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await pumpMainApp(tester, viewport: const Size(1200, 850));

    await tester.tap(find.widgetWithText(TextButton, '(').first);
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 250));

    expect(find.textContaining('Error: Invalid expression'), findsOneWidget);
  });

  testWidgets('Session state restores after app restart', (
    WidgetTester tester,
  ) async {
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    SharedPreferences.setMockInitialValues({
      'calculator.tutorial_seen': true,
      'calculator.result': 'Error: Invalid expression. Please check syntax.',
    });

    await pumpMainApp(tester, viewport: const Size(1200, 900));
    expect(find.text('History'), findsOneWidget);
    expect(tester.takeException(), isNull);

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump();
    await pumpMainApp(tester, viewport: const Size(1200, 900));

    expect(find.text('History'), findsOneWidget);
    expect(find.widgetWithText(TextButton, 'Clear'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'Theme color, dark mode and tutorial state restore from preferences',
    (WidgetTester tester) async {
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
      });

      const Color persistedSeed = Color(0xFF3366CC);
      SharedPreferences.setMockInitialValues({
        'calculator.theme_seed_color': persistedSeed.toARGB32(),
        'calculator.theme_variant': 'monochrome',
        'calculator.dark_mode': true,
        'calculator.tutorial_seen': true,
      });

      await pumpMainApp(tester, viewport: const Size(1200, 850));

      final MaterialApp app = tester.widget<MaterialApp>(
        find.byType(MaterialApp),
      );
      expect(app.themeMode, ThemeMode.dark);
      expect(app.darkTheme, isNotNull);
      expect(
        app.darkTheme!.colorScheme.primary,
        ColorScheme.fromSeed(
          seedColor: persistedSeed,
          brightness: Brightness.dark,
          dynamicSchemeVariant: DynamicSchemeVariant.monochrome,
        ).primary,
      );
      expect(find.text('Expression Display'), findsNothing);
    },
  );
}
