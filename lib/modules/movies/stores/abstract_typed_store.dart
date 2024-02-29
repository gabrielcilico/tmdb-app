import '../models/movie.dart';

abstract class AbstractTypedStore {
  bool get isLoading;
  List<Movie> get movies;
  Future<void> fetchMovies();
  Future<void> resetMovies();
}
