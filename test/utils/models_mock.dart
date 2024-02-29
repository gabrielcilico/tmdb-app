import 'package:tmdb_app/modules/movies/models/genre.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';

List<Genre> getGenres() {
  return [
    Genre(id: 1, name: 'Action'),
    Genre(id: 2, name: 'Adventure'),
    Genre(id: 3, name: 'Animation'),
  ];
}

List<Movie> getMovies() {
  return [
    Movie(
      id: 1,
      title: 'Movie 1',
      posterPath: '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
      backdropPath: '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
      overview: 'overview',
      releaseDate: DateTime.parse('2021-10-10'),
      genreIds: [1, 2, 3],
      isAdult: false,
      originalLanguage: 'en',
      originalTitle: 'Movie 1',
      popularity: 1.0,
      voteAverage: 1.0,
      voteCount: 1,
      originCountry: ['US'],
      hasVideo: false,
    ),
    Movie(
      id: 2,
      title: 'Movie 2',
      posterPath: '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
      backdropPath: '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
      overview: 'overview',
      releaseDate: DateTime.parse('2021-10-10'),
      genreIds: [1, 2, 3],
      isAdult: false,
      originalLanguage: 'en',
      originalTitle: 'Movie 2',
      popularity: 1.0,
      voteAverage: 1.0,
      voteCount: 1,
      originCountry: ['US'],
      hasVideo: false,
    ),
  ];
}
