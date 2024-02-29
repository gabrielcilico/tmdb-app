import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_app/modules/splash_screen.dart';


void main() {
  testWidgets('Splash screen render loading test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(builder: (BuildContext context, Widget? child) => const SplashScreen()));
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
