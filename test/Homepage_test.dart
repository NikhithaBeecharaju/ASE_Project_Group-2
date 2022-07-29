import 'package:ase_project1/Pages/Front-end/V1.0.1/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFirebase extends Mock implements FirebaseAuth {}

void main() {
  setUp(() {});

  Widget createwidgetundertest() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  };

  testWidgets("Render test for HomeApp widget", (WidgetTester tester) async {
    
    await tester.pumpWidget(createwidgetundertest());
  });

  testWidgets("Render test for HomeApp widget - Title",
      (WidgetTester tester) async {
    
    await tester.pumpWidget(createwidgetundertest());
    expect(find.text("AIRIFIER"), findsOneWidget);
  });

  testWidgets("Render test for HomeApp widget - text label",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.text("Take a Test"), findsWidgets);
  });

  testWidgets("Render test for HomeApp widget - image",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.byType(Ink), findsWidgets);
  });

  
  testWidgets("Render test for HomeApp widget - check widget",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.byType(ListView), findsWidgets);
  });

  testWidgets("Render test for HomeApp widget - Text styles",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var textStyles = ((tester.widget(find.byType(Text).first) as Text).style as TextStyle);
    //print("***"+ textStyles.toString() +"***");
    expect(textStyles.color, Color(0xff000000));
    expect(textStyles.fontSize, 32.0);
  });

  testWidgets("Render test for HomeApp widget - Ink styles",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var textStyles = (tester.widget(find.byType(Ink).first) as Ink);
    //print("***"+ textStyles.toString() +"***");
    expect(textStyles.height, 200.0);
    expect(textStyles.width, 200.0);
  });
  
}
