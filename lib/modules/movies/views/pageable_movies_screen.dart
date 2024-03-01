import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tmdb_app/common/widgets/limited_width_container.dart';
import 'package:tmdb_app/modules/movies/stores/abstract_typed_store.dart';
import 'package:tmdb_app/modules/movies/widgets/custom_app_bar.dart';
import 'package:tmdb_app/modules/movies/widgets/vertical_movie_list.dart';

class PageableMoviesScreen extends StatefulWidget {
  final String title;
  final AbstractTypedStore store;

  const PageableMoviesScreen({Key? key, required this.store, required this.title}) : super(key: key);

  @override
  State<PageableMoviesScreen> createState() => _PageableMoviesScreenState();
}

class _PageableMoviesScreenState extends State<PageableMoviesScreen> {
  @override
  void initState() {
    super.initState();
    widget.store.resetMovies();
  }

  @override
  void dispose() {
    super.dispose();
    widget.store.resetMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        textTitle: widget.title,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LimitedWidthContainer(
            child: Observer(
              builder: (_) {
                return VerticalMovieList(
                  isLoading: widget.store.isLoading,
                  movies: widget.store.movies,
                  fetchMovies: widget.store.fetchMovies,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
