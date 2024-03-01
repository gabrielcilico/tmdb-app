import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tmdb_app/modules/movies/widgets/horizontal_movie_list.dart';
import 'package:tmdb_app/modules/movies/widgets/movie_card.dart';

import 'common.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Should render SearchScreen and find movies', (tester) async {
    await startApp();

    await tester.pumpAndSettle();
    expect(find.text('TMDB App'), findsOneWidget);
    await tester.pumpAndSettle();

    expect(find.byType(HorizontalMovieList), findsNWidgets(5));
    await tester.pumpAndSettle();

    await tester.tap(find.byIcon(Icons.search));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), 'batman');
    await tester.pumpAndSettle();

    var cards = find.byType(MovieCard);
    expect(cards, findsWidgets);
  });
}
