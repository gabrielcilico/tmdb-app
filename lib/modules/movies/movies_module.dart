import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/common/http/http_service.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/services/credits.dart';
import 'package:tmdb_app/modules/movies/services/movies.dart';
import 'package:tmdb_app/modules/movies/stores/discover.dart';
import 'package:tmdb_app/modules/movies/stores/movies.dart';
import 'package:tmdb_app/modules/movies/stores/now_playing.dart';
import 'package:tmdb_app/modules/movies/stores/popular.dart';
import 'package:tmdb_app/modules/movies/stores/search.dart';
import 'package:tmdb_app/modules/movies/stores/top_rated.dart';
import 'package:tmdb_app/modules/movies/stores/upcoming.dart';
import 'package:tmdb_app/modules/movies/views/movie_screen/main.dart';
import 'package:tmdb_app/modules/movies/views/movies_home_screen.dart';
import 'package:tmdb_app/modules/movies/views/pageable_movies_screen.dart';
import 'package:tmdb_app/modules/movies/views/search_screen.dart';

class MoviesModule extends Module {
  static const String moviesRoute = "/movies";

  @override
  List<Bind> get binds => [
        Bind((i) => MoviesService(i<HttpService>())),
        Bind((i) => CreditsService(i<HttpService>())),
        Bind((i) => MoviesStore(i<MoviesService>(), i<CreditsService>())),
        Bind((i) => DiscoverStore(i<MoviesService>())),
        Bind((i) => TopRatedStore(i<MoviesService>())),
        Bind((i) => PopularStore(i<MoviesService>())),
        Bind((i) => NowPlayingStore(i<MoviesService>())),
        Bind((i) => UpcomingStore(i<MoviesService>())),
        Bind((i) => SearchStore(i<MoviesService>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const MoviesHomeScreen()),
        ChildRoute('/:id', child: (_, args) => MovieScreen(movieId: args.params['id'])),
        ChildRoute('/discover',
            child: (_, args) =>
                PageableMoviesScreen(title: S.current.discoverMoviesTitle, store: Modular.get<DiscoverStore>())),
        ChildRoute('/top-rated',
            child: (_, args) =>
                PageableMoviesScreen(title: S.current.topRatedMoviesTitle, store: Modular.get<TopRatedStore>())),
        ChildRoute('/upcoming',
            child: (_, args) =>
                PageableMoviesScreen(title: S.current.upcomingMoviesTitle, store: Modular.get<UpcomingStore>())),
        ChildRoute('/now-playing',
            child: (_, args) =>
                PageableMoviesScreen(title: S.current.nowPlayingMoviesTitle, store: Modular.get<NowPlayingStore>())),
        ChildRoute('/popular',
            child: (_, args) =>
                PageableMoviesScreen(title: S.current.popularMoviesTitle, store: Modular.get<PopularStore>())),
        ChildRoute('/search', child: (_, args) => const SearchMoviesScreen()),
      ];
}
