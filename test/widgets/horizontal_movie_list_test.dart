import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:tmdb_app/modules/movies/widgets/horizontal_movie_list.dart';
import 'package:tmdb_app/modules/movies/widgets/movie_card.dart';
import 'package:tmdb_app/modules/movies/widgets/rate_indicator.dart';

import '../utils/default_stucture.dart';
import '../utils/models_mock.dart';

void main() {
  testWidgets('Should render a Horizontal Movies List without seeAll', (WidgetTester tester) async {
    await mockNetworkImagesFor(() async => await tester.pumpWidget(defaultStructure(HorizontalMovieList(
          title: 'Title',
          isLoading: false,
          movies: getMovies(),
        ))));
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(MovieCard), findsNWidgets(2));
    expect(find.byType(RateIndicator), findsNWidgets(2));
    expect(find.text('Movie 1'), findsOneWidget);
    expect(find.text('Movie 2'), findsOneWidget);
    expect(find.text('Title'), findsOneWidget);
    expect(find.text('Ver todos'), findsNothing);
  });

  testWidgets('Should render a Horizontal Movies List with seeAll', (WidgetTester tester) async {
    await mockNetworkImagesFor(() async => await tester.pumpWidget(defaultStructure(HorizontalMovieList(
          title: 'Title',
          isLoading: false,
          movies: getMovies(),
          seeAll: () {},
        ))));
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(MovieCard), findsNWidgets(2));
    expect(find.byType(RateIndicator), findsNWidgets(2));
    expect(find.text('Movie 1'), findsOneWidget);
    expect(find.text('Movie 2'), findsOneWidget);
    expect(find.text('Title'), findsOneWidget);
    expect(find.text('Ver todos'), findsNWidgets(2));
  });
}
