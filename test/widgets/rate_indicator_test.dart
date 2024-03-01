import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_app/modules/movies/widgets/rate_indicator.dart';


import '../utils/default_stucture.dart';

void main() {
  testWidgets('Should render a Rate chip with green color', (WidgetTester tester) async {
    await tester.pumpWidget(defaultStructure(const RateIndicator(rate: 8.0)));
    expect(find.byType(RateIndicator), findsOneWidget);
    expect(find.text('8.0'), findsOneWidget);
    expect(((tester.firstWidget(find.byType(Container)) as Container).decoration as BoxDecoration).color, Colors.green);
  });

  testWidgets('Should render a Rate chip with yellow color', (WidgetTester tester) async {
    await tester.pumpWidget(defaultStructure(const RateIndicator(rate: 6.0)));
    expect(find.byType(RateIndicator), findsOneWidget);
    expect(find.text('6.0'), findsOneWidget);
    expect(
        ((tester.firstWidget(find.byType(Container)) as Container).decoration as BoxDecoration).color, Colors.yellow);
  });

  testWidgets('Should render a Rate chip with red color', (WidgetTester tester) async {
    await tester.pumpWidget(defaultStructure(const RateIndicator(rate: 3.0)));
    expect(find.byType(RateIndicator), findsOneWidget);
    expect(find.text('3.0'), findsOneWidget);
    expect(((tester.firstWidget(find.byType(Container)) as Container).decoration as BoxDecoration).color, Colors.red);
  });

  testWidgets('Should render a Rate chip with rounded rate', (WidgetTester tester) async {
    await tester.pumpWidget(defaultStructure(const RateIndicator(rate: 3.38764)));
    expect(find.byType(RateIndicator), findsOneWidget);
    expect(find.text('3.4'), findsOneWidget);
  });
}
