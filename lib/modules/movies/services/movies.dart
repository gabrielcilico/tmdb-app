import 'package:tmdb_app/common/http/main.dart';
import 'package:tmdb_app/modules/movies/models/detailed_movie.dart';
import 'package:tmdb_app/modules/movies/models/pageable.dart';

import '../models/movie.dart';

class MoviesService {
  final HttpService http;

  String language = 'pt-BR';

  MoviesService(this.http);

  void setLanguage(String language) {
    this.language = language;
  }

  Future<Pageable<Movie>> discoverMovies(int page) async {
    return await _getAndParsePageable('/discover/movie', page: page);
  }

  Future<DetailedMovie> getMovieDetails(String movieId) async {
    final response = await http.get(path: '/movie/$movieId', queryParams: {'language': language});
    return DetailedMovie.fromJson(response);
  }

  Future<Pageable<Movie>> topRatedMovies(int page) async {
    return await _getAndParsePageable('/movie/top_rated', page: page);
  }

  Future<Pageable<Movie>> popularMovies(int page) async {
    return await _getAndParsePageable('/movie/popular', page: page);
  }

  Future<Pageable<Movie>> nowPlayingMovies(int page) async {
    return await _getAndParsePageable('/movie/now_playing', page: page);
  }

  Future<Pageable<Movie>> upcomingMovies(int page) async {
    return await _getAndParsePageable('/movie/upcoming', page: page);
  }

  Future<Pageable<Movie>> similarMovies(int movieId, int page) async {
    return await _getAndParsePageable('/movie/$movieId/similar', page: page);
  }

  Future<Pageable<Movie>> searchMovies(String query, int page) async {
    return await _getAndParsePageable('/search/movie', page: page, queryParams: {'query': query});
  }

  Future<Pageable<Movie>> _getAndParsePageable(String path, {int page = 1, data, queryParams}) async {
    var enhancedQueryParams = {'language': language, 'page': page};
    enhancedQueryParams.addAll(queryParams ?? {});
    final response = await http.get(path: path, data: data, queryParams: enhancedQueryParams);
    return Pageable.fromJson(response, (json) => Movie.fromJson(json));
  }
}
