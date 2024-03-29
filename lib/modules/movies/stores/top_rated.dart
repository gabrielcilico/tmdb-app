import 'package:mobx/mobx.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';
import 'package:tmdb_app/modules/movies/stores/abstract_typed_store.dart';

part 'top_rated.g.dart';

class TopRatedStore = TopRatedStoreBase with _$TopRatedStore;

abstract class TopRatedStoreBase extends AbstractTypedStore with Store {
  final MoviesService _moviesService;

  TopRatedStoreBase(this._moviesService);

  @observable
  bool isLoadingRaw = false;

  @observable
  List<Movie> moviesRaw = [];

  @override
  @computed
  bool get isLoading => isLoadingRaw;

  @override
  @computed
  List<Movie> get movies => moviesRaw;

  @observable
  int nextPage = 1;

  @action
  void setIsLoading(bool value) => isLoadingRaw = value;

  @override
  @action
  Future<void> fetchMovies() async {
    setIsLoading(true);
    var response = await _moviesService.topRatedMovies(nextPage);
    var currentMovies = movies;
    currentMovies = [...currentMovies, ...response.results];
    if (response.page < response.totalPages) {
      nextPage = response.page + 1;
    }
    moviesRaw = currentMovies;
    setIsLoading(false);
  }

  @override
  @action
  Future<void> resetMovies() async {
    moviesRaw = [];
    nextPage = 1;
    await fetchMovies();
  }
}
