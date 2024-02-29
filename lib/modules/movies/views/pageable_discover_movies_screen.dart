import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/design/theme/palette.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/stores/discover.dart';
import 'package:tmdb_app/modules/movies/widgets/movie_card.dart';

class PageableDiscoverMoviesScreen extends StatefulWidget {
  const PageableDiscoverMoviesScreen({Key? key}) : super(key: key);

  @override
  State<PageableDiscoverMoviesScreen> createState() => _PageableDiscoverMoviesScreenState();
}

class _PageableDiscoverMoviesScreenState extends State<PageableDiscoverMoviesScreen> {
  final DiscoverStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.resetMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.discoverMoviesTitle),
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
                    children: store.movies.map((movie) => MovieCard(movie: movie)).toList(),
                  ),
                  const SizedBox(height: 16),
                  if (store.isLoading) const CircularProgressIndicator(),
                  TextButton(
                      onPressed: () => store.fetchMovies(),
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
