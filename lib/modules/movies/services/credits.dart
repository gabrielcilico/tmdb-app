import 'package:tmdb_app/common/http/http_service.dart';
import 'package:tmdb_app/modules/movies/models/credits.dart';

class CreditsService {
  final HttpService httpService;

  CreditsService(this.httpService);

  String language = 'pt-BR';

  void setLanguage(String language) {
    this.language = language;
  }

  Future<List<Cast>> getCast(int movieId) async {
    final response = await _getAndParse('/movie/$movieId/credits');
    return Credits.fromJson(response).cast;
  }

  Future<dynamic> _getAndParse(String path) async {
    final response = await httpService.get(path: path, queryParams: {'language': language});
    return response;
  }
}
