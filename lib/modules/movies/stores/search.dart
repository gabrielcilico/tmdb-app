import 'package:mobx/mobx.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';

part 'search.g.dart';

class SearchStore = SearchStoreBase with _$SearchStore;

abstract class SearchStoreBase with Store {
  final MoviesService _moviesService;

  SearchStoreBase(this._moviesService);

  @observable
  bool isLoading = false;

  @observable
  List<Movie> movies = [];

  @observable
  int nextPage = 1;

  String lastQuery = '';

  @action
  void setIsLoading(bool value) => isLoading = value;

  @action
  Future<void> fetchMovies(String query) async {
    if (query.length < 3) {
      return;
    }
    if (query != lastQuery) {
      movies = [];
      nextPage = 1;
    }
    setIsLoading(true);
    var response = await _moviesService.searchMovies(query, nextPage);
    movies = [...movies, ...response.results];
    if (response.page < response.totalPages) {
      nextPage = response.page + 1;
    }
    lastQuery = query;
    setIsLoading(false);
  }

  @action
  Future<void> resetMovies() async {
    movies = [];
    nextPage = 1;
  }
}
