// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:water_quality_app/home.dart';
import 'package:water_quality_app/begin.dart';

void main() {
  testWidgets('Splash Page', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: FrontPage()));
    expect(find.byType(FrontPage), findsOneWidget);
  });


  testWidgets('Bottom Navigation Bar ',(tester) async {
      await tester.pumpWidget(const MaterialApp(home: Navigate()));
      expect(find.byKey(const Key('iconcamera')), findsNWidgets(1));
      expect(find.byKey(const Key('iconwater')), findsOneWidget);
      expect(find.byKey(const Key('iconinstructions')), findsOneWidget);
      expect(find.byKey(const Key('iconmap')), findsOneWidget);
      await tester.tap(find.byKey(const Key('iconcamera')));
      await tester.pump();
      //await tester.tap(find.byKey(Key('iconcontacts')));
      await tester.pump();
      expect(find.byType(Navigate), findsOneWidget);
    });
}