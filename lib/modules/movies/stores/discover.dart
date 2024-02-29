import 'package:mobx/mobx.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';

part 'discover.g.dart';

class DiscoverStore = DiscoverStoreBase with _$DiscoverStore;

abstract class DiscoverStoreBase with Store {
  final MoviesService _moviesService;

  DiscoverStoreBase(this._moviesService);

  @observable
  bool isLoading = false;

  @observable
  List<Movie> movies = [];

  @observable
  int nextPage = 1;

  @action
  void setIsLoading(bool value) => isLoading = value;

  @action
  Future<void> fetchMovies() async {
    setIsLoading(true);
    var response = await _moviesService.discoverMovies(nextPage);
    movies = [...movies, ...response.results];
    if (response.page < response.totalPages) {
      nextPage = response.page + 1;
    }
    setIsLoading(false);
  }

  @action
  Future<void> resetMovies() async {
    movies = [];
    nextPage = 1;
    await fetchMovies();
  }
}
