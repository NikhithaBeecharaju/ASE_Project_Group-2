import 'package:ase_project1/component/progress_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';


class MockFirebase extends Mock implements FirebaseAuth{}

void main() {

 setUp(() {
  
 });

  Widget createwidgetundertest(){
  
  return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProgressBar(),
    );
  };

  testWidgets("testing progress_bar - render", (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
  });

  testWidgets("testing progress_bar - text",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    var text = (tester.widget(find.byType(Text).first) as Text);
    //print("***"+ text.toString() +"***");
    expect(text.data, "0 sec");
  });

  testWidgets("testing progress_bar - check widget",
      (WidgetTester tester) async {
    await tester.pumpWidget(createwidgetundertest());
    expect(find.byType(Stack), findsWidgets);
  });
 

}