import 'package:mobx/mobx.dart';

import '../models/movie.dart';

abstract class AbstractTypedStore {
  Future<void> fetchMovies();
  Future<void> resetMovies();

  @observable
  bool isLoading = false;

  @observable
  List<Movie> movies = [];
}
