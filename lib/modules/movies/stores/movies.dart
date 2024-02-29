import 'package:mobx/mobx.dart';
import 'package:tmdb_app/modules/movies/models/detailed_movie.dart';
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

  @action
  void setIsLoading(bool value) => isLoading = value;

  @action
  Future<void> fetchDetailedMovie(String movieId) async {
    setIsLoading(true);
    var response = await _moviesService.getMovieDetails(movieId);
    var currentMovies = detailedMovies;
    currentMovies[movieId.toString()] = response;
    detailedMovies = currentMovies;
    setIsLoading(false);
  }
}
