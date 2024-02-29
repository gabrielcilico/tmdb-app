import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/modules/movies/stores/movies.dart';
import 'package:tmdb_app/modules/movies/widgets/horizontal_movie_list.dart';

class MoviesHomeScreen extends StatefulWidget {
  const MoviesHomeScreen({Key? key}) : super(key: key);

  @override
  State<MoviesHomeScreen> createState() => _MoviesHomeScreenState();
}

class _MoviesHomeScreenState extends State<MoviesHomeScreen> {
  final MoviesStore store = Modular.get<MoviesStore>();

  @override
  void initState() {
    super.initState();
    store.fetchDiscoverMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: Observer(
        builder: (_) {
          return SingleChildScrollView(
            child: Column(
              children: [
                HorizontalMovieList(movies: store.discoverMovies, isLoading: store.isDiscoverMoviesLoading),
              ],
            ),
          );
        },
      ),
    );
  }
}
