import 'package:flutter_test/flutter_test.dart';

import 'package:ivs_projekt_2/main.dart';

void main() {
  testWidgets('MainApp renders calculator shell', (WidgetTester tester) async {
    await tester.pumpWidget(const MainApp());

    expect(find.text('IVS Projekt 2 Kalkulačka'), findsOneWidget);
    expect(find.text('Expression'), findsOneWidget);
    expect(find.text('Result'), findsOneWidget);
    expect(find.text('Scientific functions'), findsOneWidget);
    expect(find.text('History'), findsOneWidget);
    expect(find.text('='), findsOneWidget);
  });
}
