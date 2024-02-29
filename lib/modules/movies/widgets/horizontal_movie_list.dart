// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tmdb_app/design/theme/palette.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';
import 'package:tmdb_app/modules/movies/widgets/movie_card.dart';

class HorizontalMovieList extends StatefulWidget {
  bool isLoading;
  List<Movie> movies;

  HorizontalMovieList({Key? key, required this.movies, required this.isLoading}) : super(key: key);

  @override
  State<HorizontalMovieList> createState() => _HorizontalMovieListState();
}

class _HorizontalMovieListState extends State<HorizontalMovieList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                S.of(context).discoverMoviesTitle,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Palette.secondary),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  S.of(context).seeAllButton,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Palette.secondary),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 320,
          child: _buildListView(context),
        ),
      ],
    );
  }

  Widget _buildListView(BuildContext context) {
    if (widget.isLoading && widget.movies.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    int maxToShow = widget.movies.length >= 20 ? 19 : widget.movies.length;
    return ListView(
      scrollDirection: Axis.horizontal,
      children: widget.movies.sublist(0, maxToShow).map((movie) => MovieCard(movie: movie)).toList(),
    );
  }
}
