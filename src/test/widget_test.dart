import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:ivs_projekt_2/main.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  Future<void> pumpMainApp(WidgetTester tester, {Size? viewport}) async {
    if (viewport != null) {
      tester.view.physicalSize = viewport;
      tester.view.devicePixelRatio = 1.0;
    }
    await tester.pumpWidget(const MainApp());
    await tester.pumpAndSettle();
  }

  testWidgets('MainApp renders calculator shell', (WidgetTester tester) async {
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await pumpMainApp(tester, viewport: const Size(1200, 800));

    
    expect(find.text('Expression'), findsOneWidget);
    expect(find.text('Result'), findsOneWidget);
    expect(find.text('Scientific functions'), findsOneWidget);
    expect(find.text('History'), findsOneWidget);
    expect(find.text('='), findsOneWidget);
  });

  testWidgets('Enter triggers calculation and shows inline error', (
    WidgetTester tester,
  ) async {
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await pumpMainApp(tester, viewport: const Size(1200, 800));

    await tester.tap(find.text('('));
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pumpAndSettle();

    expect(find.text('Error'), findsOneWidget);
    expect(
      find.text('Invalid expression. Please check syntax.'),
      findsOneWidget,
    );
  });

  testWidgets('Session state restores after app restart', (
    WidgetTester tester,
  ) async {
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await pumpMainApp(tester, viewport: const Size(700, 900));

    await tester.tap(find.text('History').first);
    await tester.pumpAndSettle();
    expect(find.text('Scientific functions'), findsNothing);

    await tester.tap(find.text('Keypad'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('('));
    await tester.pump();
    await tester.tap(find.text('='));
    await tester.pumpAndSettle();
    expect(find.text('Error'), findsOneWidget);

    await tester.tap(find.text('History').first);
    await tester.pumpAndSettle();
    expect(find.text('Scientific functions'), findsNothing);

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle();
    await pumpMainApp(tester, viewport: const Size(700, 900));

    expect(find.text('Error'), findsOneWidget);
    expect(find.text('Scientific functions'), findsNothing);
    expect(find.text('= Error'), findsNothing);
  });
}
