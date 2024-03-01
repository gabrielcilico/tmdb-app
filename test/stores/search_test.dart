import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';
import 'package:tmdb_app/modules/movies/stores/search.dart';

import '../utils/models_mock.dart';

class MoviesServiceMock extends Mock implements MoviesService {}

void main() {
  MoviesServiceMock moviesServiceMock = MoviesServiceMock();
  SearchStore store = SearchStore(moviesServiceMock);

  test('Should fetch searched movies', () async {
    when(() => moviesServiceMock.searchMovies('batman', 1)).thenAnswer((_) async => getMoviesPageable());
    expect(store.movies.length, 0);

    await store.fetchMovies('batman');

    verify(() => moviesServiceMock.searchMovies('batman', 1)).called(1);
    expect(store.movies.length, 2);
  });
}