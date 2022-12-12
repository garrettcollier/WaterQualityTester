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

  testWidgets('Selecting another test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: Navigate()));
    expect(find.byKey(const Key('selectbutton')), findsNWidgets(1));
  });

  testWidgets('Button that leads to the camera', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: Navigate()));
    expect(find.byKey(const Key('cameraButton')), findsNWidgets(0));
  });

  
}