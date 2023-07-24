// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:untitled18/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled18/main.dart';

void main() {
  testWidgets('Testing Login Screen Widgets', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Find the widgets you want to test.
    final loginButtonFinder = find.byType(ElevatedButton);
    final emailFieldFinder = find.byType(TextField).at(0);
    final passwordFieldFinder = find.byType(TextField).at(1);

    // Perform login widget test.
    await tester.enterText(emailFieldFinder, 'test@example.com');
    await tester.enterText(passwordFieldFinder, 'testpassword');
    await tester.tap(loginButtonFinder);
    await tester.pump();

    // Verify the result.
    expect(find.text('Welcome test@example.com'), findsOneWidget);
  });

  testWidgets('Testing Register Screen Widgets', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Navigate to the RegisterScreen.
    final registerButtonFinder = find.byType(OutlinedButton);
    await tester.tap(registerButtonFinder);
    await tester.pumpAndSettle();

    // Find the widgets you want to test in the RegisterScreen.
    final registerButtonInRegisterScreenFinder = find.byType(ElevatedButton);
    final emailFieldInRegisterScreenFinder = find.byType(TextField).at(0);
    final passwordFieldInRegisterScreenFinder = find.byType(TextField).at(1);

    // Perform register widget test.
    await tester.enterText(emailFieldInRegisterScreenFinder, 'test@example.com');
    await tester.enterText(passwordFieldInRegisterScreenFinder, 'testpassword');
    await tester.tap(registerButtonInRegisterScreenFinder);
    await tester.pump();

    // Verify the result.
    expect(find.text('Welcome test@example.com'), findsOneWidget);
  });
}
