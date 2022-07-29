// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:ase_project1/Pages/Front-end/V1.0.1/registerPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';

//class MockFirebase extends Mock implements Firebase {}

void main() {
  setUp(() {});

  Widget createwidgetundertest() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }

  ;

  testWidgets("RegisterScreen render test - render",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
  });

  testWidgets("RegisterScreen render test - Log text",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.text("Log"), findsOneWidget);
  });

  testWidgets("RegisterScreen render test - Signup text",
      (WidgetTester tester) async {
    //await Firebase.initializeApp();
    await tester.pumpWidget(createwidgetundertest());
    expect(find.text("SignUp"), findsOneWidget);
  });

  testWidgets("RegisterScreen render test - hint Name",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var hinttext =
        ((tester.renderObject(find.text("Name"))) as RenderParagraph).text;
    var inputdecoration = (hinttext as TextSpan).text;
    //print(inputdecoration.toString());
    expect(inputdecoration, equals("Name"));
  });

  testWidgets("RegisterScreen render test - hint Phone Number",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var hinttext =
        ((tester.renderObject(find.text("Phone Number"))) as RenderParagraph)
            .text;
    var inputdecoration = (hinttext as TextSpan).text;
    //print(inputdecoration.toString());
    expect(inputdecoration, equals("Phone Number"));
  });

  testWidgets("RegisterScreen render test - hint Email",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var hinttext =
        ((tester.renderObject(find.text("Email"))) as RenderParagraph).text;
    var inputdecoration = (hinttext as TextSpan).text;
    //print(inputdecoration.toString());
    expect(inputdecoration, equals("Email"));
  });

  testWidgets("RegisterScreen render test - hint Password",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var hinttext =
        ((tester.renderObject(find.text("Password"))) as RenderParagraph).text;
    var inputdecoration = (hinttext as TextSpan).text;
    //print(inputdecoration.toString());
    expect(inputdecoration, equals("Password"));
  });

  testWidgets("RegisterScreen render test - hint Confirm Password",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var hinttext = ((tester.renderObject(find.text("Confirm Password")))
            as RenderParagraph)
        .text;
    var inputdecoration = (hinttext as TextSpan).text;
    //print(inputdecoration.toString());
    expect(inputdecoration, equals("Confirm Password"));
  });

  testWidgets("RegisterScreen render test - Already Have An Account? text",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.text("Already Have An Account?"), findsOneWidget);
  });

  testWidgets("RegisterScreen render test - LogIn text",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.text("LogIn"), findsOneWidget);
  });

  testWidgets("RegisterScreen render test - SignUp styles",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var textStyles = (tester.widget(find.text("SignUp")) as Text).style;
    var styles = textStyles as TextStyle;
    //print(styles);
    expect(styles.fontSize, 30.0);
    expect(styles.fontWeight, FontWeight.w700);
    expect(styles.color, Colors.black);
  });

  testWidgets("RegisterScreen render test - check widget Icon",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.byType(Icon), findsWidgets);
  });

  testWidgets("RegisterScreen render test - check widget TextFormField",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.byType(TextFormField), findsWidgets);
  });

  testWidgets("RegisterScreen render test - SizedBox styles",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var sizedBoxStyles =
        (tester.widget(find.byType(SizedBox).first) as SizedBox);
    //print(sizedBoxStyles.toString());
    expect(sizedBoxStyles.width, 24.0);
    expect(sizedBoxStyles.height, 24.0);
  });
}
