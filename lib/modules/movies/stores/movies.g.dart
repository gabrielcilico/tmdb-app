// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MoviesStore on MoviesStoreBase, Store {
  late final _$isDiscoverMoviesLoadingAtom = Atom(name: 'MoviesStoreBase.isDiscoverMoviesLoading', context: context);

  @override
  bool get isDiscoverMoviesLoading {
    _$isDiscoverMoviesLoadingAtom.reportRead();
    return super.isDiscoverMoviesLoading;
  }

  @override
  set isDiscoverMoviesLoading(bool value) {
    _$isDiscoverMoviesLoadingAtom.reportWrite(value, super.isDiscoverMoviesLoading, () {
      super.isDiscoverMoviesLoading = value;
    });
  }

  late final _$isDetailedMovieLoadingAtom = Atom(name: 'MoviesStoreBase.isDetailedMovieLoading', context: context);

  @override
  bool get isDetailedMovieLoading {
    _$isDetailedMovieLoadingAtom.reportRead();
    return super.isDetailedMovieLoading;
  }

  @override
  set isDetailedMovieLoading(bool value) {
    _$isDetailedMovieLoadingAtom.reportWrite(value, super.isDetailedMovieLoading, () {
      super.isDetailedMovieLoading = value;
    });
  }

  late final _$discoverMoviesAtom = Atom(name: 'MoviesStoreBase.discoverMovies', context: context);

  @override
  List<Movie> get discoverMovies {
    _$discoverMoviesAtom.reportRead();
    return super.discoverMovies;
  }

  @override
  set discoverMovies(List<Movie> value) {
    _$discoverMoviesAtom.reportWrite(value, super.discoverMovies, () {
      super.discoverMovies = value;
    });
  }

  late final _$detailedMoviesAtom = Atom(name: 'MoviesStoreBase.detailedMovies', context: context);

  @override
  Map<String, DetailedMovie> get detailedMovies {
    _$detailedMoviesAtom.reportRead();
    return super.detailedMovies;
  }

  @override
  set detailedMovies(Map<String, DetailedMovie> value) {
    _$detailedMoviesAtom.reportWrite(value, super.detailedMovies, () {
      super.detailedMovies = value;
    });
  }

  late final _$nextPageAtom = Atom(name: 'MoviesStoreBase.nextPage', context: context);

  @override
  int get nextPage {
    _$nextPageAtom.reportRead();
    return super.nextPage;
  }

  @override
  set nextPage(int value) {
    _$nextPageAtom.reportWrite(value, super.nextPage, () {
      super.nextPage = value;
    });
  }

  late final _$fetchDiscoverMoviesAsyncAction = AsyncAction('MoviesStoreBase.fetchDiscoverMovies', context: context);

  @override
  Future<void> fetchDiscoverMovies() {
    return _$fetchDiscoverMoviesAsyncAction.run(() => super.fetchDiscoverMovies());
  }

  late final _$fetchDetailedMovieAsyncAction = AsyncAction('MoviesStoreBase.fetchDetailedMovie', context: context);

  @override
  Future<void> fetchDetailedMovie(String movieId) {
    return _$fetchDetailedMovieAsyncAction.run(() => super.fetchDetailedMovie(movieId));
  }

  late final _$MoviesStoreBaseActionController = ActionController(name: 'MoviesStoreBase', context: context);

  @override
  void setIsDiscoverMoviesLoading(bool value) {
    final _$actionInfo =
        _$MoviesStoreBaseActionController.startAction(name: 'MoviesStoreBase.setIsDiscoverMoviesLoading');
    try {
      return super.setIsDiscoverMoviesLoading(value);
    } finally {
      _$MoviesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsDetailedMovieLoading(bool value) {
    final _$actionInfo =
        _$MoviesStoreBaseActionController.startAction(name: 'MoviesStoreBase.setIsDetailedMovieLoading');
    try {
      return super.setIsDetailedMovieLoading(value);
    } finally {
      _$MoviesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDiscoverMoviesLoading: ${isDiscoverMoviesLoading},
isDetailedMovieLoading: ${isDetailedMovieLoading},
discoverMovies: ${discoverMovies},
detailedMovies: ${detailedMovies},
nextPage: ${nextPage}
    ''';
  }
}
