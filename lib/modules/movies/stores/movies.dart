import 'package:mobx/mobx.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';

part 'movies.g.dart';

class MoviesStore = MoviesStoreBase with _$MoviesStore;

abstract class MoviesStoreBase with Store {
  final MoviesService _moviesService;

  MoviesStoreBase(this._moviesService);

  @observable
  bool isDiscoverMoviesLoading = false;

  @observable
  bool isDetailedMovieLoading = false;

  @observable
  List<Movie> discoverMovies = [];

  @observable
  int nextPage = 1;

  @action
  void setIsDiscoverMoviesLoading(bool value) => isDiscoverMoviesLoading = value;

  @action
  Future<void> fetchDiscoverMovies() async {
    setIsDiscoverMoviesLoading(true);
    var response = await _moviesService.discoverMovies(nextPage);
    discoverMovies = [...discoverMovies, ...response.results];
    if (response.page < response.totalPages) {
      nextPage = response.page + 1;
    }
    setIsDiscoverMoviesLoading(false);
  }
}
