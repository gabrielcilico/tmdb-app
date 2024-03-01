import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tmdb_app/modules/movies/views/movie_screen/widgets/movie_details.dart';
import 'package:tmdb_app/modules/movies/widgets/genre_chip_list.dart';
import 'package:tmdb_app/modules/movies/widgets/horizontal_cast_list.dart';
import 'package:tmdb_app/modules/movies/widgets/horizontal_movie_list.dart';
import 'package:tmdb_app/modules/movies/widgets/movie_card.dart';
import 'package:tmdb_app/modules/movies/widgets/network_image_adapter.dart';

import 'common.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Should render MoviesScreen', (tester) async {
    await startApp();

    await tester.pumpAndSettle();
    expect(find.text('TMDB App'), findsOneWidget);
    await tester.pumpAndSettle();

    expect(find.byType(HorizontalMovieList), findsNWidgets(5));
    await tester.pumpAndSettle();

    var cards = find.byType(MovieCard);
    expect(cards, findsWidgets);

    await tester.tap(cards.first);
    await tester.pumpAndSettle();

    expect(find.byType(NetworkImageAdapter), findsWidgets);
    expect(find.byType(HorizontalCastList), findsOneWidget);
    expect(find.byType(HorizontalMovieList), findsOneWidget);
    expect(find.byType(GenreChipList), findsOneWidget);
    expect(find.byType(MovieDetails), findsOneWidget);
  });

  testWidgets('Should render MoviesScreen from PageableScreen', (tester) async {
    await startApp();

    await tester.pumpAndSettle();
    expect(find.text('TMDB App'), findsOneWidget);
    await tester.pumpAndSettle();

    expect(find.byType(HorizontalMovieList), findsNWidgets(5));
    await tester.pumpAndSettle();

    await tester.tap(find.byType(TextButton).first);
    await tester.pumpAndSettle();

    var cards = find.byType(MovieCard);
    expect(cards, findsWidgets);

    await tester.tap(cards.first);
    await tester.pumpAndSettle();

    expect(find.byType(NetworkImageAdapter), findsWidgets);
    expect(find.byType(HorizontalCastList), findsOneWidget);
    expect(find.byType(HorizontalMovieList), findsOneWidget);
    expect(find.byType(GenreChipList), findsOneWidget);
    expect(find.byType(MovieDetails), findsOneWidget);
  });

  testWidgets('Should render MoviesScreen from search', (tester) async {
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

    await tester.tap(cards.first);
    await tester.pumpAndSettle();

    expect(find.byType(NetworkImageAdapter), findsWidgets);
    expect(find.byType(HorizontalCastList), findsOneWidget);
    expect(find.byType(HorizontalMovieList), findsOneWidget);
    expect(find.byType(GenreChipList), findsOneWidget);
    expect(find.byType(MovieDetails), findsOneWidget);
  });
}
