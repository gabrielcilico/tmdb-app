import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/common/http/http_service.dart';
import 'package:tmdb_app/modules/movies/services/genres.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';
import 'package:tmdb_app/modules/movies/stores/discover.dart';
import 'package:tmdb_app/modules/movies/stores/genres.dart';
import 'package:tmdb_app/modules/movies/stores/movies.dart';
import 'package:tmdb_app/modules/movies/stores/top_rated.dart';
import 'package:tmdb_app/modules/movies/views/movie_screen.dart';
import 'package:tmdb_app/modules/movies/views/movies_home_screen.dart';
import 'package:tmdb_app/modules/movies/views/pageable_movies_screen.dart';

class MoviesModule extends Module {
  static const String moviesRoute = "/movies";

  @override
  List<Bind> get binds => [
        Bind((i) => MoviesService(i<HttpService>())),
        Bind((i) => MoviesStore(i<MoviesService>())),
        Bind((i) => GenresService(i<HttpService>())),
        Bind((i) => GenresStore(i<GenresService>())),
        Bind((i) => DiscoverStore(i<MoviesService>())),
        Bind((i) => TopRatedStore(i<MoviesService>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const MoviesHomeScreen()),
        ChildRoute('/:id', child: (_, args) => MovieScreen(movieId: args.params['id'])),
        ChildRoute('/discover', child: (_, args) => PageableMoviesScreen(store: Modular.get<DiscoverStore>())),
        ChildRoute('/top-rated', child: (_, args) => PageableMoviesScreen(store: Modular.get<TopRatedStore>())),
      ];
}
