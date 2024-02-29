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

  late final _$fetchDetailedMovieAsyncAction = AsyncAction('MoviesStoreBase.fetchDetailedMovie', context: context);

  @override
  Future<void> fetchDetailedMovie(String movieId) {
    return _$fetchDetailedMovieAsyncAction.run(() => super.fetchDetailedMovie(movieId));
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
  String toString() {
    return '''
isLoading: ${isLoading},
detailedMovies: ${detailedMovies}
    ''';
  }
}
