import 'package:mobx/mobx.dart';
import 'package:tmdb_app/modules/movies/models/detailed_movie.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';

part 'movies.g.dart';

class MoviesStore = MoviesStoreBase with _$MoviesStore;

abstract class MoviesStoreBase with Store {
  final MoviesService _moviesService;

  MoviesStoreBase(this._moviesService);

  @observable
  bool isLoading = false;

  @observable
  Map<String, DetailedMovie> detailedMovies = {};

  @observable
  bool isLoadingSimilar = false;

  @observable
  Map<String, List<Movie>> similarMovies = {};

  @action
  void setIsLoading(bool value) => isLoading = value;

  @action
  void setIsLoadingSimilar(bool value) => isLoadingSimilar = value;

  @action
  Future<void> fetchDetailedMovie(String movieId) async {
    setIsLoading(true);
    var response = await _moviesService.getMovieDetails(movieId);
    var currentMovies = detailedMovies;
    currentMovies[movieId.toString()] = response;
    detailedMovies = currentMovies;
    setIsLoading(false);
    fetchSimilarMovies(movieId);
  }

  @action
  Future<void> fetchSimilarMovies(String movieId) async {
    setIsLoadingSimilar(true);
    var response = await _moviesService.similarMovies(int.parse(movieId), 1);
    var currentMovies = similarMovies;
    currentMovies[movieId.toString()] = response.results;
    similarMovies = currentMovies;
    setIsLoadingSimilar(false);
  }

  @action
  void removeDetailedMovie(String movieId) {
    var currentMovies = detailedMovies;
    currentMovies.remove(movieId);
    detailedMovies = currentMovies;

    var currentSimilarMovies = similarMovies;
    currentSimilarMovies.remove(movieId);
    similarMovies = currentSimilarMovies;
  }
}
