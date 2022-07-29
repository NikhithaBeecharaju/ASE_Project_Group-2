
import 'package:ase_project1/Pages/Front-end/V1.0.1/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';


class MockFirebase extends Mock implements FirebaseAuth{}

void main() {

 setUp(() {
  
 });

  Widget createwidgetundertest(){
  
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginpage(),
    );
  };

  testWidgets("Loginpage render testing - render", (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
  });

  testWidgets("Loginpage render testing - hint email", (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var hinttext = ((tester.renderObject(find.text("Email"))) as RenderParagraph).text;
    var inputdecoration = (hinttext as TextSpan).text;
    //print(inputdecoration.toString());
    expect(inputdecoration, equals("Email"));
  });

  testWidgets("Loginpage render testing - hint Password", (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var hinttext = ((tester.renderObject(find.text("Password"))) as RenderParagraph).text;
    var inputdecoration = (hinttext as TextSpan).text;
    //print(inputdecoration.toString());
    expect(inputdecoration, equals("Password"));
  });

  testWidgets("Loginpage render testing - text log", (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.text("Log"), findsOneWidget);
  });

  testWidgets("Loginpage render testing - text Login", (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.text("Login"), findsOneWidget);
  });

  testWidgets("Loginpage render testing - text Welcome", (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.text("Welcome"), findsOneWidget);
  });

  testWidgets("Loginpage render testing - text banner", (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.text("Don't Have a Account?"), findsOneWidget);
  });

  testWidgets("Loginpage render testing - text Sign Up", (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.text("Sign Up"), findsOneWidget);
  });

  testWidgets("Loginpage render testing - SIgn up styles",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var textStyles = (tester.widget(find.byType(Text).last) as Text).style;
    var styles = textStyles as TextStyle;
    var stylesColor = styles.color as MaterialColor;
    //print(stylesColor.value);
    expect(styles.fontSize, 20.0);
    expect(styles.fontWeight, FontWeight.w700);
    expect(stylesColor,Colors.red);
    
  });

    testWidgets("Loginpage render testing - Login styles",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var textStyles = (tester.widget(find.text("Sign Up")) as Text).style;
    var styles = textStyles as TextStyle;
    //print(stylesColor.toString());
    expect(textStyles.fontWeight, FontWeight.bold);
    expect(textStyles.fontSize, 20);
  });
 
}