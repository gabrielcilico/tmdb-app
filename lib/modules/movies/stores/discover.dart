import 'package:mobx/mobx.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';
import 'package:tmdb_app/modules/movies/stores/abstract_typed_store.dart';

part 'discover.g.dart';

class DiscoverStore = DiscoverStoreBase with _$DiscoverStore;

abstract class DiscoverStoreBase extends AbstractTypedStore with Store {
  final MoviesService _moviesService;

  DiscoverStoreBase(this._moviesService);

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
    var response = await _moviesService.discoverMovies(nextPage);
    moviesRaw = [...movies, ...response.results];
    if (response.page < response.totalPages) {
      nextPage = response.page + 1;
    }
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
