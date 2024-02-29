import 'package:mobx/mobx.dart';
import 'package:tmdb_app/modules/movies/models/genre.dart';
import 'package:tmdb_app/modules/movies/services/genres.dart';

part 'genres.g.dart';

class GenresStore = GenresStoreBase with _$GenresStore;

abstract class GenresStoreBase with Store {
  final GenresService _genresService;

  GenresStoreBase(this._genresService);

  @observable
  bool isGenresLoading = false;

  @observable
  List<Genre> genres = [];

  @action
  void setIsGenresLoading(bool value) => isGenresLoading = value;

  @action
  Future<void> fetchGenres() async {
    setIsGenresLoading(true);
    genres = await _genresService.fetchGenres();
    setIsGenresLoading(false);
  }

  Future<List<Genre>> getGenres() async {
    await fetchIfIsEmpty();
    return genres;
  }

  Future<List<Genre>> getGenresByIds(List<int> ids) async {
    await fetchIfIsEmpty();
    return genres.where((genre) => ids.contains(genre.id)).toList();
  }

  Future<void> fetchIfIsEmpty() async {
    if (genres.isEmpty) {
      await fetchGenres();
    }
  }
}
