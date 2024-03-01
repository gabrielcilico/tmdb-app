import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmdb_app/common/http/http_service.dart';
import 'package:tmdb_app/modules/movies/models/detailed_movie.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';
import 'package:tmdb_app/modules/movies/models/pageable.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';

import '../utils/models_mock.dart';

class HttpServiceMock extends Mock implements HttpService {}

void main() {
  HttpServiceMock mock = HttpServiceMock();
  MoviesService service = MoviesService(mock);

  group('Movie tests List', () {
    test('Should return Discover movie list', () async {
      when(() => mock.get(path: '/discover/movie', queryParams: {'language': 'pt-BR', 'page': 1})).thenAnswer((_) async => getMoviesJson());

      Pageable<Movie> movies = await service.discoverMovies(1);

      verify(() => mock.get(path: '/discover/movie', queryParams: {'language': 'pt-BR', 'page': 1})).called(1);

      expect(movies.results.length, 2);
      expect(movies.results.first.title, 'Movie 1');
      expect(movies.results.last.title, 'Movie 2');
    });

    test('Should return Top Rated movie list', () async {
      when(() => mock.get(path: '/movie/top_rated', queryParams: {'language': 'pt-BR', 'page': 1})).thenAnswer((_) async => getMoviesJson());

      Pageable<Movie> movies = await service.topRatedMovies(1);

      verify(() => mock.get(path: '/movie/top_rated', queryParams: {'language': 'pt-BR', 'page': 1})).called(1);

      expect(movies.results.length, 2);
      expect(movies.results.first.title, 'Movie 1');
      expect(movies.results.last.title, 'Movie 2');
    });

    test('Should return Popular movie list', () async {
      when(() => mock.get(path: '/movie/popular', queryParams: {'language': 'pt-BR', 'page': 1})).thenAnswer((_) async => getMoviesJson());

      Pageable<Movie> movies = await service.popularMovies(1);

      verify(() => mock.get(path: '/movie/popular', queryParams: {'language': 'pt-BR', 'page': 1})).called(1);

      expect(movies.results.length, 2);
      expect(movies.results.first.title, 'Movie 1');
      expect(movies.results.last.title, 'Movie 2');
    });

    test('Should return Now Playing movie list', () async {
      when(() => mock.get(path: '/movie/now_playing', queryParams: {'language': 'pt-BR', 'page': 1})).thenAnswer((_) async => getMoviesJson());

      Pageable<Movie> movies = await service.nowPlayingMovies(1);

      verify(() => mock.get(path: '/movie/now_playing', queryParams: {'language': 'pt-BR', 'page': 1})).called(1);

      expect(movies.results.length, 2);
      expect(movies.results.first.title, 'Movie 1');
      expect(movies.results.last.title, 'Movie 2');
    });

    test('Should return Upcoming movie list', () async {
      when(() => mock.get(path: '/movie/upcoming', queryParams: {'language': 'pt-BR', 'page': 1})).thenAnswer((_) async => getMoviesJson());

      Pageable<Movie> movies = await service.upcomingMovies(1);

      verify(() => mock.get(path: '/movie/upcoming', queryParams: {'language': 'pt-BR', 'page': 1})).called(1);

      expect(movies.results.length, 2);
      expect(movies.results.first.title, 'Movie 1');
      expect(movies.results.last.title, 'Movie 2');
    });

    test('Should return Similar movie list', () async {
      when(() => mock.get(path: '/movie/1/similar', queryParams: {'language': 'pt-BR', 'page': 1})).thenAnswer((_) async => getMoviesJson());

      Pageable<Movie> movies = await service.similarMovies(1, 1);

      verify(() => mock.get(path: '/movie/1/similar', queryParams: {'language': 'pt-BR', 'page': 1})).called(1);

      expect(movies.results.length, 2);
      expect(movies.results.first.title, 'Movie 1');
      expect(movies.results.last.title, 'Movie 2');
    });

    test('Should return Searched movie list', () async {
      when(() => mock.get(path: '/search/movie', queryParams: {'language': 'pt-BR', 'page': 1, 'query': 'batman'})).thenAnswer((_) async => getMoviesJson());

      Pageable<Movie> movies = await service.searchMovies('batman', 1);

      verify(() => mock.get(path: '/search/movie', queryParams: {'language': 'pt-BR', 'page': 1, 'query': 'batman'})).called(1);

      expect(movies.results.length, 2);
      expect(movies.results.first.title, 'Movie 1');
      expect(movies.results.last.title, 'Movie 2');
    });
  });

  test('Should return Detailed Movie', () async {
    when(() => mock.get(path: '/movie/1', queryParams: {'language': 'pt-BR'})).thenAnswer((_) async => getDetailedMovieJson());

    DetailedMovie movie = await service.getMovieDetails('1');

    verify(() => mock.get(path: '/movie/1', queryParams: {'language': 'pt-BR'})).called(1);

    expect(movie.title, 'Movie 1');
    expect(movie.genres.length, 3);
    expect(movie.genres.first.name, 'Action');
    expect(movie.genres.last.name, 'Animation');
    expect(movie.overview, 'overview');
  });
}