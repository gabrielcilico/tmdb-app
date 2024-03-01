import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/common/config/config.dart';
import 'package:tmdb_app/design/theme/palette.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/models/detailed_movie.dart';
import 'package:tmdb_app/modules/movies/stores/movies.dart';
import 'package:tmdb_app/modules/movies/views/movie_screen/widgets/movie_details.dart';
import 'package:tmdb_app/modules/movies/widgets/custom_app_bar.dart';
import 'package:tmdb_app/modules/movies/widgets/genre_chip_list.dart';
import 'package:tmdb_app/modules/movies/widgets/horizontal_cast_list.dart';
import 'package:tmdb_app/modules/movies/widgets/horizontal_movie_list.dart';
import 'package:tmdb_app/modules/movies/widgets/network_image_adapter.dart';

class MovieScreen extends StatefulWidget {
  final String movieId;

  const MovieScreen({Key? key, required this.movieId}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  final MoviesStore store = Modular.get();
  late DetailedMovie detailedMovie;

  @override
  void initState() {
    super.initState();
    store.fetchDetailedMovie(widget.movieId);
  }

  @override
  void dispose() {
    super.dispose();
    store.removeDetailedMovie(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (store.isLoading || !store.detailedMovies.containsKey(widget.movieId)) {
        return const Center(child: CircularProgressIndicator());
      }
      detailedMovie = store.detailedMovies[widget.movieId]!;
      return Scaffold(
        appBar: CustomAppBar(textTitle: detailedMovie.title),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: DefaultConfig().maxWidth),
              color: Palette.primaryDark,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child:
                      Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NetworkImageAdapter(
                            imageUrl: detailedMovie.posterPath ?? detailedMovie.backdropPath, width: 154),
                        MovieDetails(movie: detailedMovie),
                      ],
                    ),
                    if (detailedMovie.overview != null && detailedMovie.overview!.isNotEmpty) ...[
                      const SizedBox(height: 16),
                      Text(S.current.overviewLabel, style: Theme.of(context).textTheme.titleMedium),
                      Text(
                        detailedMovie.overview!,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                    const SizedBox(height: 16),
                    GenreChipList(genres: detailedMovie.genres),
                    const SizedBox(height: 16),
                    HorizontalCastList(casts: store.cast['${detailedMovie.id}'] ?? [], isLoading: store.isLoadingCast),
                    const SizedBox(height: 16),
                    HorizontalMovieList(
                        title: S.current.similarMoviesTitle,
                        movies: store.similarMovies['${detailedMovie.id}'] ?? [],
                        isLoading: store.isLoadingSimilar),
                  ]),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
