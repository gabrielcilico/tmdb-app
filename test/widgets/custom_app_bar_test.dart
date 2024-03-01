import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_app/modules/movies/widgets/custom_app_bar.dart';

import '../utils/default_stucture.dart';

void main() {
  testWidgets('Should render CustomAppBar without buttons', (WidgetTester tester) async {
    await tester.pumpWidget(defaultStructure(
      Scaffold(
        appBar: CustomAppBar(
          textTitle: 'TMDB',
          showBackButton: false,
          showSearchButton: false,
        ),
        body: Container(),
      ),
      withScaffold: false,
    ));
    expect(find.byType(CustomAppBar), findsOneWidget);
    expect(find.text('TMDB'), findsOneWidget);
    expect(find.byType(Icon), findsNothing);
  });

  testWidgets('Should render CustomAppBar with back button', (WidgetTester tester) async {
    await tester.pumpWidget(defaultStructure(
      Scaffold(
        appBar: CustomAppBar(
          textTitle: 'TMDB',
          showBackButton: true,
          showSearchButton: false,
        ),
        body: Container(),
      ),
      withScaffold: false,
    ));
    expect(find.byType(CustomAppBar), findsOneWidget);
    expect(find.text('TMDB'), findsOneWidget);
    var icon = find.byType(Icon);
    expect(icon, findsOneWidget);
  });

  testWidgets('Should render CustomAppBar with search button', (WidgetTester tester) async {
    await tester.pumpWidget(defaultStructure(
      Scaffold(
        appBar: CustomAppBar(
          textTitle: 'TMDB',
          showBackButton: false,
          showSearchButton: true,
        ),
        body: Container(),
      ),
      withScaffold: false,
    ));
    expect(find.byType(CustomAppBar), findsOneWidget);
    expect(find.text('TMDB'), findsOneWidget);
    var icon = find.byType(Icon);
    expect(icon, findsOneWidget);
  });
}
