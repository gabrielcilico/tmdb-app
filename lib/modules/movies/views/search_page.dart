import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/common/config/config.dart';
import 'package:tmdb_app/design/theme/palette.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/stores/search.dart';
import 'package:tmdb_app/modules/movies/widgets/custom_app_bar.dart';
import 'package:tmdb_app/modules/movies/widgets/vertical_movie_list.dart';

class SearchMoviesScreen extends StatefulWidget {
  const SearchMoviesScreen({Key? key}) : super(key: key);

  @override
  State<SearchMoviesScreen> createState() => _SearchMoviesScreenState();
}

class _SearchMoviesScreenState extends State<SearchMoviesScreen> {
  final SearchStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.resetMovies();
  }

  @override
  void dispose() {
    super.dispose();
    store.resetMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(textTitle: S.current.searchMoviesTitle),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: DefaultConfig().maxWidth),
            child: Observer(
              builder: (_) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                        child: TextFormField(
                          onChanged: (value) => store.fetchMovies(value),
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Palette.primary),
                          decoration: InputDecoration(
                            labelText: S.current.searchMoviesTitle,
                            labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Palette.primary),
                            hintText: S.current.searchExample,
                          ),
                        ),
                      ),
                      VerticalMovieList(
                        isLoading: store.isLoading,
                        movies: store.movies,
                        fetchMovies: () => store.fetchMovies(store.lastQuery),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
