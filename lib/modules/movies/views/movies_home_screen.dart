import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/common/functions/navigator_service.dart';
import 'package:tmdb_app/common/widgets/limited_width_container.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/stores/discover.dart';
import 'package:tmdb_app/modules/movies/stores/now_playing.dart';
import 'package:tmdb_app/modules/movies/stores/popular.dart';
import 'package:tmdb_app/modules/movies/stores/top_rated.dart';
import 'package:tmdb_app/modules/movies/stores/upcoming.dart';
import 'package:tmdb_app/modules/movies/widgets/custom_app_bar.dart';
import 'package:tmdb_app/modules/movies/widgets/horizontal_movie_list.dart';

class MoviesHomeScreen extends StatefulWidget {
  const MoviesHomeScreen({Key? key}) : super(key: key);

  @override
  State<MoviesHomeScreen> createState() => _MoviesHomeScreenState();
}

class _MoviesHomeScreenState extends State<MoviesHomeScreen> {
  final DiscoverStore discoverStore = Modular.get();
  final TopRatedStore topRatedStore = Modular.get();
  final PopularStore popularStore = Modular.get();
  final UpcomingStore upcomingStore = Modular.get();
  final NowPlayingStore nowPlayingStore = Modular.get();

  @override
  void initState() {
    super.initState();
    discoverStore.resetMovies();
    topRatedStore.resetMovies();
    popularStore.resetMovies();
    upcomingStore.resetMovies();
    nowPlayingStore.resetMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(textTitle: S.of(context).moviesHomeScreenTitle, showBackButton: false),
      body: Observer(
        builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LimitedWidthContainer(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      HorizontalMovieList(
                          title: S.of(context).topRatedMoviesTitle,
                          movies: topRatedStore.movies,
                          isLoading: topRatedStore.isLoading,
                          seeAll: () => pushNamed(routeName: '/movies/top-rated')),
                      HorizontalMovieList(
                          title: S.of(context).popularMoviesTitle,
                          movies: popularStore.movies,
                          isLoading: popularStore.isLoading,
                          seeAll: () => pushNamed(routeName: '/movies/popular')),
                      HorizontalMovieList(
                          title: S.of(context).upcomingMoviesTitle,
                          movies: upcomingStore.movies,
                          isLoading: upcomingStore.isLoading,
                          seeAll: () => pushNamed(routeName: '/movies/upcoming')),
                      HorizontalMovieList(
                          title: S.of(context).nowPlayingMoviesTitle,
                          movies: nowPlayingStore.movies,
                          isLoading: nowPlayingStore.isLoading,
                          seeAll: () => pushNamed(routeName: '/movies/now-playing')),
                      HorizontalMovieList(
                          title: S.of(context).discoverMoviesTitle,
                          movies: discoverStore.movies,
                          isLoading: discoverStore.isLoading,
                          seeAll: () => pushNamed(routeName: '/movies/discover')),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
