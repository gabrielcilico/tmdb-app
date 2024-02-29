import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/common/config/config.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/models/detailed_movie.dart';
import 'package:tmdb_app/modules/movies/stores/movies.dart';
import 'package:tmdb_app/modules/movies/widgets/genre_chip_list.dart';
import 'package:tmdb_app/modules/movies/widgets/rate_indicator.dart';

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
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (store.isLoading || !store.detailedMovies.containsKey(widget.movieId)) {
        return const Center(child: CircularProgressIndicator());
      }
      detailedMovie = store.detailedMovies[widget.movieId]!;
      return Scaffold(
        appBar: AppBar(
          title: Text(detailedMovie.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    '${DefaultConfig().imageBaseUrl}${detailedMovie.posterPath}',
                    width: 154,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 186,
                          child: Text(
                            detailedMovie.title,
                            style: Theme.of(context).textTheme.titleLarge,
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          S.current.releaseDateLabel('${detailedMovie.releaseDate.year}'),
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            RateIndicator(rate: detailedMovie.voteAverage, fontSize: 16),
                            const SizedBox(width: 8),
                            Text(
                              S.current.computedVotesLabel(detailedMovie.voteCount),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Text(S.current.overviewLabel, style: Theme.of(context).textTheme.titleMedium),
              Text(
                detailedMovie.overview,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              GenreChipList(genres: detailedMovie.genres),
            ]),
          ),
        ),
      );
    });
  }
}
