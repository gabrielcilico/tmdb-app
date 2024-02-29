import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/modules/movies/models/detailed_movie.dart';
import 'package:tmdb_app/modules/movies/stores/movies.dart';

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
      if (store.isDetailedMovieLoading || !store.detailedMovies.containsKey(widget.movieId)) {
        return const Center(child: CircularProgressIndicator());
      }
      detailedMovie = store.detailedMovies[widget.movieId]!;
      return Scaffold(
        appBar: AppBar(
          title: Text(detailedMovie.title),
        ),
        body: Center(
          child: Text('Movie ${widget.movieId} details'),
        ),
      );
    });
  }
}
