import 'package:flutter/material.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/models/genre.dart';
import 'package:tmdb_app/modules/movies/widgets/genre_chip.dart';

class GenreChipList extends StatefulWidget {
  final List<Genre> genres;

  const GenreChipList({Key? key, required this.genres}) : super(key: key);

  @override
  State<GenreChipList> createState() => _GenreChipListState();
}

class _GenreChipListState extends State<GenreChipList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.current.genresLabel, style: Theme.of(context).textTheme.titleMedium),
        Wrap(
          spacing: 4,
          children: widget.genres.map((genre) => GenreChip(genre: genre)).toList(),
        ),
      ],
    );
  }
}
