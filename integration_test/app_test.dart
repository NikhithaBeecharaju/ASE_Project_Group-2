import 'package:ase_project1/Pages/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ase_project1/main.dart';
import 'package:ase_project1/Pages/loginpage.dart';
import 'package:ase_project1/Pages/homepage.dart' as app;

void main() {
  group('App test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp();
    testWidgets("Full app test", (tester) async {
      app.HomeApp();
      await tester.pumpAndSettle();
      await tester.pumpWidget(const HomeApp());
      /*final emailFormField = find.byType(TextFormField).first;
      final passwordFormField = find.byType(TextFormField).last;
      final loginButton = find.byType(ElevatedButton).first;*/

      /* await tester.enterText(emailFormField, "nikk@gmail.com");
      //await tester.enterText(passwordFormField, "12345678");
      await tester.pumpAndSettle();

      await tester.tap(loginButton);
      await tester.pumpAndSettle();*/
      //expect(find.text("Don't Have a Account?"), findsOneWidget);
      //final titleFinder = find.text("Previous Test");
      expect(find.text("Previous Test"), findsOneWidget);
      //await tester.pumpWidget(const HomeApp());
    });
  });
}
