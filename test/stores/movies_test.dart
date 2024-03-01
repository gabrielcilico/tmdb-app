
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmdb_app/modules/movies/services/credits.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';
import 'package:tmdb_app/modules/movies/stores/movies.dart';

import '../utils/models_mock.dart';

class MoviesServiceMock extends Mock implements MoviesService {}
class CreditsServiceMock extends Mock implements CreditsService {}

void main() {
  MoviesServiceMock moviesServiceMock = MoviesServiceMock();
  CreditsServiceMock creditsServiceMock = CreditsServiceMock();

  MoviesStore store = MoviesStore(moviesServiceMock, creditsServiceMock);

  setUp(() {
    store = MoviesStore(moviesServiceMock, creditsServiceMock);
    when(() => moviesServiceMock.getMovieDetails('1')).thenAnswer((_) async => getDetailedMovie());
    when(() => moviesServiceMock.similarMovies(1, 1)).thenAnswer((_) async => getMoviesPageable());
    when(() => creditsServiceMock.getCast(1)).thenAnswer((_) async => getCast());
  });

  test('Should fetch detailed movie', () async {
    var detailedMovie = getDetailedMovie();
    expect(store.detailedMovies.length, 0);

    await store.fetchDetailedMovie('1');

    verify(() => moviesServiceMock.getMovieDetails('1')).called(1);
    verify(() => moviesServiceMock.similarMovies(1, 1)).called(1);
    verify(() => creditsServiceMock.getCast(1)).called(1);

    expect(store.detailedMovies.length, 1);
    expect(store.detailedMovies['1'], isNotNull);
    expect(store.detailedMovies['1']!.title, detailedMovie.title);
    expect(store.detailedMovies['1']!.overview, detailedMovie.overview);
  });

  test('Should fetch cast of movie', () async {
    expect(store.cast.length, 0);

    await store.fetchCast('1');

    verify(() => creditsServiceMock.getCast(1)).called(1);

    expect(store.cast.length, 1);
  });

  test('Should fetch similar movies of movie', () async {
    expect(store.similarMovies.length, 0);

    await store.fetchSimilarMovies('1');

    verify(() => moviesServiceMock.similarMovies(1, 1)).called(1);

    expect(store.similarMovies.length, 1);
  });
}