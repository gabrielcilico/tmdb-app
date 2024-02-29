import 'package:flutter/material.dart';
import 'package:tmdb_app/design/theme/palette.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';
import 'package:tmdb_app/modules/movies/widgets/movie_card.dart';

class VerticalMovieList extends StatefulWidget {
  final bool isLoading;
  final List<Movie> movies;
  final Function() fetchMovies;

  const VerticalMovieList({
    Key? key,
    required this.isLoading,
    required this.movies,
    required this.fetchMovies,
  }) : super(key: key);

  @override
  State<VerticalMovieList> createState() => _VerticalMovieListState();
}

class _VerticalMovieListState extends State<VerticalMovieList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              children: widget.movies.map((movie) => MovieCard(movie: movie)).toList(),
            ),
            const SizedBox(height: 16),
            if (widget.isLoading) const CircularProgressIndicator(),
            if (widget.movies.isNotEmpty && !widget.isLoading) ...[
              TextButton(
                  onPressed: () => widget.fetchMovies(),
                  child: Text(S.current.seeMoreButton,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Palette.white))),
            ]
          ],
        ),
      ),
    );
  }
}
