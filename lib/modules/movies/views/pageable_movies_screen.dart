import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tmdb_app/design/theme/palette.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/stores/abstract_typed_store.dart';
import 'package:tmdb_app/modules/movies/widgets/movie_card.dart';

class PageableMoviesScreen extends StatefulWidget {
  final AbstractTypedStore store;

  const PageableMoviesScreen({Key? key, required this.store}) : super(key: key);

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
      appBar: AppBar(
        title: Text(S.current.topRatedMoviesTitle),
      ),
      body: Observer(
        builder: (_) {
          return SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Wrap(
                    children: widget.store.movies.map((movie) => MovieCard(movie: movie)).toList(),
                  ),
                  const SizedBox(height: 16),
                  if (widget.store.isLoading) const CircularProgressIndicator(),
                  TextButton(
                      onPressed: () => widget.store.fetchMovies(),
                      child: Text(S.current.seeMoreButton,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Palette.white))),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
