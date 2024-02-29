import 'package:tmdb_app/common/http/main.dart';
import 'package:tmdb_app/modules/movies/models/genre.dart';

class GenresService {
  final HttpService http;

  String language = 'pt-BR';

  GenresService(this.http);

  void setLanguage(String language) {
    this.language = language;
  }

  Future<List<Genre>> fetchGenres() async {
    final response = await _getAndParse('/genre/movie/list');
    return List<Genre>.from(response.map((genre) => Genre.fromJson(genre)));
  }

  Future<dynamic> _getAndParse(String path) async {
    final response = await http.get(path: path, queryParams: {'language': language});
    return response['genres'];
  }
}
