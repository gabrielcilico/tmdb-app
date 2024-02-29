import 'package:flutter/material.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/models/detailed_movie.dart';
import 'package:tmdb_app/modules/movies/widgets/rate_indicator.dart';

class MovieDetails extends StatelessWidget {
  final DetailedMovie movie;

  const MovieDetails({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width - 186,
            child: Text(
              movie.title,
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            S.current.releaseDateLabel('${movie.releaseDate.year}'),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              RateIndicator(rate: movie.voteAverage, fontSize: 16),
              const SizedBox(width: 8),
              Text(
                S.current.computedVotesLabel(movie.voteCount),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
