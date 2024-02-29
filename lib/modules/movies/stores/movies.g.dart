// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MoviesStore on MoviesStoreBase, Store {
  late final _$isLoadingAtom = Atom(name: 'MoviesStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
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

  late final _$isLoadingSimilarAtom = Atom(name: 'MoviesStoreBase.isLoadingSimilar', context: context);

  @override
  bool get isLoadingSimilar {
    _$isLoadingSimilarAtom.reportRead();
    return super.isLoadingSimilar;
  }

  @override
  set isLoadingSimilar(bool value) {
    _$isLoadingSimilarAtom.reportWrite(value, super.isLoadingSimilar, () {
      super.isLoadingSimilar = value;
    });
  }

  late final _$similarMoviesAtom = Atom(name: 'MoviesStoreBase.similarMovies', context: context);

  @override
  Map<String, List<Movie>> get similarMovies {
    _$similarMoviesAtom.reportRead();
    return super.similarMovies;
  }

  @override
  set similarMovies(Map<String, List<Movie>> value) {
    _$similarMoviesAtom.reportWrite(value, super.similarMovies, () {
      super.similarMovies = value;
    });
  }

  late final _$fetchDetailedMovieAsyncAction = AsyncAction('MoviesStoreBase.fetchDetailedMovie', context: context);

  @override
  Future<void> fetchDetailedMovie(String movieId) {
    return _$fetchDetailedMovieAsyncAction.run(() => super.fetchDetailedMovie(movieId));
  }

  late final _$fetchSimilarMoviesAsyncAction = AsyncAction('MoviesStoreBase.fetchSimilarMovies', context: context);

  @override
  Future<void> fetchSimilarMovies(String movieId) {
    return _$fetchSimilarMoviesAsyncAction.run(() => super.fetchSimilarMovies(movieId));
  }

  late final _$MoviesStoreBaseActionController = ActionController(name: 'MoviesStoreBase', context: context);

  @override
  void setIsLoading(bool value) {
    final _$actionInfo = _$MoviesStoreBaseActionController.startAction(name: 'MoviesStoreBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$MoviesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsLoadingSimilar(bool value) {
    final _$actionInfo = _$MoviesStoreBaseActionController.startAction(name: 'MoviesStoreBase.setIsLoadingSimilar');
    try {
      return super.setIsLoadingSimilar(value);
    } finally {
      _$MoviesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeDetailedMovie(String movieId) {
    final _$actionInfo = _$MoviesStoreBaseActionController.startAction(name: 'MoviesStoreBase.removeDetailedMovie');
    try {
      return super.removeDetailedMovie(movieId);
    } finally {
      _$MoviesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
detailedMovies: ${detailedMovies},
isLoadingSimilar: ${isLoadingSimilar},
similarMovies: ${similarMovies}
    ''';
  }
}
