import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';
import 'package:tmdb_app/modules/movies/stores/now_playing.dart';

import '../utils/models_mock.dart';

class MoviesServiceMock extends Mock implements MoviesService {}

void main() {
  MoviesServiceMock moviesServiceMock = MoviesServiceMock();
  NowPlayingStore store = NowPlayingStore(moviesServiceMock);

  test('Should fetch now playing movies', () async {
    when(() => moviesServiceMock.nowPlayingMovies(1)).thenAnswer((_) async => getMoviesPageable());
    expect(store.movies.length, 0);

    await store.fetchMovies();

    verify(() => moviesServiceMock.nowPlayingMovies(1)).called(1);
    expect(store.movies.length, 2);
  });
}