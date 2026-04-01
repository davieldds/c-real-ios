import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';

import 'package:ivs_projekt_2/main.dart';

void main() {
  testWidgets('MainApp renders calculator shell', (WidgetTester tester) async {
    // Flutter widget tests run with a default offscreen viewport size.
    // Your UI uses fixed-height sections, so we make the test view
    // "safely large" to avoid layout overflow/clipping during rendering.
    tester.view.physicalSize = const Size(1200, 800);
    tester.view.devicePixelRatio = 1.0;

    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await tester.pumpWidget(const MainApp());

    expect(find.text('IVS Projekt 2 Kalkulačka'), findsOneWidget);
    expect(find.text('Expression'), findsOneWidget);
    expect(find.text('Result'), findsOneWidget);
    expect(find.text('Scientific functions'), findsOneWidget);
    expect(find.text('History'), findsOneWidget);
    expect(find.text('='), findsOneWidget);
  });
}
