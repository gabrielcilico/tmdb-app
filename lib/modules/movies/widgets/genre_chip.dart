import 'package:flutter/material.dart';
import 'package:tmdb_app/modules/movies/models/genre.dart';

class GenreChip extends StatelessWidget {
  final Genre genre;

  const GenreChip({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      visualDensity: VisualDensity.compact,
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      label: Text(genre.name),
    );
  }
}