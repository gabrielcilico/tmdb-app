import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/common/http/http_service.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';
import 'package:tmdb_app/modules/movies/stores/movies.dart';
import 'package:tmdb_app/modules/movies/views/movies_home_screen.dart';

class MoviesModule extends Module {
  static const String moviesRoute = "/movies";

  @override
  List<Bind> get binds => [
        Bind((i) => MoviesService(i<HttpService>())),
        Bind((i) => MoviesStore(i<MoviesService>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const MoviesHomeScreen()),
      ];
}
