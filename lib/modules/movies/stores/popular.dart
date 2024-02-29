import 'package:mobx/mobx.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';
import 'package:tmdb_app/modules/movies/stores/abstract_typed_store.dart';

part 'popular.g.dart';

class PopularStore = PopularStoreBase with _$PopularStore;

abstract class PopularStoreBase extends AbstractTypedStore with Store {
  final MoviesService _moviesService;

  PopularStoreBase(this._moviesService);

  @observable
  @override
  bool isLoading = false;

  @observable
  @override
  List<Movie> movies = [];

  @observable
  int nextPage = 1;

  @action
  void setIsLoading(bool value) => isLoading = value;

  @override
  @action
  Future<void> fetchMovies() async {
    setIsLoading(true);
    var response = await _moviesService.popularMovies(nextPage);
    movies = [...movies, ...response.results];
    if (response.page < response.totalPages) {
      nextPage = response.page + 1;
    }
    setIsLoading(false);
  }

  @override
  @action
  Future<void> resetMovies() async {
    movies = [];
    nextPage = 1;
    await fetchMovies();
  }
}
