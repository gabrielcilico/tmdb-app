import 'package:tmdb_app/modules/movies/models/credits.dart';
import 'package:tmdb_app/modules/movies/models/detailed_movie.dart';
import 'package:tmdb_app/modules/movies/models/genre.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';
import 'package:tmdb_app/modules/movies/models/pageable.dart';
import 'package:tmdb_app/modules/movies/models/production_company.dart';
import 'package:tmdb_app/modules/movies/models/production_country.dart';
import 'package:tmdb_app/modules/movies/models/spoken_language.dart';

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

Pageable<Movie> getMoviesPageable() {
  return Pageable(
    page: 1,
    totalPages: 1,
    totalResults: 2,
    results: getMovies(),
  );
}

DetailedMovie getDetailedMovie() {
  return DetailedMovie(
    adult: false,
    backdropPath: '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
    genres: getGenres(),
    homepage: 'https://www.google.com',
    id: 1,
    imdbId: 'tt123456',
    originalLanguage: 'en',
    originalTitle: 'Movie 1',
    overview: 'overview',
    popularity: 1.0,
    posterPath: '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
    productionCompanies: [
      ProductionCompany(
        id: 1,
        logoPath: '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
        name: 'Company 1',
        originCountry: 'US',
      ),
      ProductionCompany(
        id: 2,
        logoPath: '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
        name: 'Company 2',
        originCountry: 'US',
      ),
    ],
    productionCountries: [
      ProductionCountry(iso31661: 'US', name: 'United States of America'),
      ProductionCountry(iso31661: 'BR', name: 'Brazil'),
    ],
    releaseDate: DateTime.parse('2021-10-10'),
    revenue: 1000000,
    runtime: 120,
    spokenLanguages: [
      SpokenLanguage(
        englishName: 'English',
        iso6391: 'en',
        name: 'English',
      ),
      SpokenLanguage(
        englishName: 'Portuguese',
        iso6391: 'pt',
        name: 'Português',
      ),
    ],
    status: 'Released',
    tagline: 'Tagline',
    title: 'Movie 1',
    video: false,
    voteAverage: 1.0,
    voteCount: 1,
  );
}

List<Cast> getCast() {
  return [
    Cast(
      id: 1,
      name: 'Name 1',
      character: 'Character 1',
      profilePath: '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
      adult: false,
      knownForDepartment: 'Acting',
      originalName: 'Brazil',
      popularity: 56.9,
      creditId: '1',
    ),
    Cast(
      id: 2,
      name: 'Name 2',
      character: 'Character 2',
      profilePath: '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
      adult: false,
      knownForDepartment: 'Acting',
      originalName: 'Brazil',
      popularity: 45.9,
      creditId: '2',
    ),
  ];
}

Map<String, dynamic> getCastsJson() {
  return {
    "id": 1,
    "cast": [
      {
        "adult": false,
        "id": 1,
        "known_for_department": "Acting",
        "name": "Name 1",
        "original_name": "Brazil",
        "popularity": 56.9,
        "profile_path": "/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg",
        "credit_id": "1",
        "character": "Character 1",
      },
      {
        "adult": false,
        "id": 1,
        "known_for_department": "Acting",
        "name": "Name 2",
        "original_name": "Brazil",
        "popularity": 55.9,
        "profile_path": "/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg",
        "credit_id": "2",
        "character": "Character 2",
      },
    ]
  };
}

Map<String, dynamic> getMoviesJson() {
  return {
    "page": 1,
    "results": [
      {
        "adult": false,
        "backdrop_path": "/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg",
        "genre_ids": [1, 2, 3],
        "id": 1,
        "original_language": "en",
        "original_title": "Movie 1",
        "overview": "overview",
        "popularity": 1.0,
        "poster_path": "/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg",
        "release_date": "2021-10-10",
        "title": "Movie 1",
        "video": false,
        "vote_average": 1.0,
        "vote_count": 1
      },
      {
        "adult": false,
        "backdrop_path": "/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg",
        "genre_ids": [1, 2, 3],
        "id": 2,
        "original_language": "en",
        "original_title": "Movie 2",
        "overview": "overview",
        "popularity": 1.0,
        "poster_path": "/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg",
        "release_date": "2021-10-10",
        "title": "Movie 2",
        "video": false,
        "vote_average": 1.0,
        "vote_count": 1
      }
    ],
    "total_pages": 1,
    "total_results": 2
  };
}

Map<String, dynamic> getDetailedMovieJson() {
  return {
    'adult': false,
    'backdrop_path': '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
    'genres': [
      {'id': 1, 'name': 'Action'},
      {'id': 2, 'name': 'Adventure'},
      {'id': 3, 'name': 'Animation'},
    ],
    'homepage': 'https://www.google.com',
    'id': 1,
    'imdb_id': 'tt123456',
    'original_language': 'en',
    'original_title': 'Movie 1',
    'overview': 'overview',
    'popularity': 1.0,
    'poster_path': '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg',
    'production_companies': [
      {'id': 1, 'logo_path': '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg', 'name': 'Company 1', 'origin_country': 'US'},
      {'id': 2, 'logo_path': '/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg', 'name': 'Company 2', 'origin_country': 'US'},
    ],
    'production_countries': [
      {'iso_3166_1': 'US', 'name': 'United States of America'},
      {'iso_3166_1': 'BR', 'name': 'Brazil'},
    ],
    'release_date': '2021-10-10',
    'revenue': 1000000,
    'runtime': 120,
    'spoken_languages': [
      {'english_name': 'English', 'iso_639_1': 'en', 'name': 'English'},
      {'english_name': 'Portuguese', 'iso_639_1': 'pt', 'name': 'Português'},
    ],
    'status': 'Released',
    'tagline': 'Tagline',
    'title': 'Movie 1',
    'video': false,
    'vote_average': 1.0,
    'vote_count': 1,
  };
}
