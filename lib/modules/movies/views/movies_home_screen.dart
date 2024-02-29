import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/common/functions/navigator_service.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/stores/discover.dart';
import 'package:tmdb_app/modules/movies/stores/top_rated.dart';
import 'package:tmdb_app/modules/movies/widgets/horizontal_movie_list.dart';

class MoviesHomeScreen extends StatefulWidget {
  const MoviesHomeScreen({Key? key}) : super(key: key);

  @override
  State<MoviesHomeScreen> createState() => _MoviesHomeScreenState();
}

class _MoviesHomeScreenState extends State<MoviesHomeScreen> {
  final DiscoverStore discoverStore = Modular.get();
  final TopRatedStore topRatedStore = Modular.get();

  @override
  void initState() {
    super.initState();
    discoverStore.resetMovies();
    topRatedStore.resetMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.moviesHomeScreenTitle),
      ),
      body: Observer(
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              children: [
                HorizontalMovieList(
                    title: S.of(context).topRatedMoviesTitle,
                    movies: topRatedStore.movies,
                    isLoading: topRatedStore.isLoading,
                    seeAll: () => pushNamed(routeName: '/movies/top-rated')),
                HorizontalMovieList(
                    title: S.of(context).discoverMoviesTitle,
                    movies: discoverStore.movies,
                    isLoading: discoverStore.isLoading,
                    seeAll: () => pushNamed(routeName: '/movies/discover')),
              ],
            ),
          );
        },
      ),
    );
  }
}
