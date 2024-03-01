import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:tmdb_app/modules/movies/widgets/movie_card.dart';
import 'package:tmdb_app/modules/movies/widgets/rate_indicator.dart';
import 'package:tmdb_app/modules/movies/widgets/vertical_movie_list.dart';


import '../utils/default_stucture.dart';
import '../utils/models_mock.dart';

void main() {
  testWidgets('Should render Vertical Movie List', (WidgetTester tester) async {
    await mockNetworkImagesFor(
            () async => await tester.pumpWidget(defaultStructure(VerticalMovieList(movies: getMovies(), isLoading: false, fetchMovies: () {  },))));
    expect(find.byType(Wrap), findsOneWidget);
    expect(find.byType(TextButton), findsOneWidget);
    expect(find.byType(MovieCard), findsNWidgets(2));
    expect(find.byType(RateIndicator), findsNWidgets(2));
    expect(find.text('Movie 1'), findsOneWidget);
    expect(find.text('Movie 2'), findsOneWidget);
    expect(find.text('Ver mais'), findsOneWidget);
  });
}