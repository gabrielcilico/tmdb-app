// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TopRatedStore on TopRatedStoreBase, Store {
  late final _$isLoadingAtom = Atom(name: 'TopRatedStoreBase.isLoading', context: context);

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

  late final _$moviesAtom = Atom(name: 'TopRatedStoreBase.movies', context: context);

  @override
  List<Movie> get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(List<Movie> value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  late final _$nextPageAtom = Atom(name: 'TopRatedStoreBase.nextPage', context: context);

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

  late final _$fetchMoviesAsyncAction = AsyncAction('TopRatedStoreBase.fetchMovies', context: context);

  @override
  Future<void> fetchMovies() {
    return _$fetchMoviesAsyncAction.run(() => super.fetchMovies());
  }

  late final _$resetMoviesAsyncAction = AsyncAction('TopRatedStoreBase.resetMovies', context: context);

  @override
  Future<void> resetMovies() {
    return _$resetMoviesAsyncAction.run(() => super.resetMovies());
  }

  late final _$TopRatedStoreBaseActionController = ActionController(name: 'TopRatedStoreBase', context: context);

  @override
  void setIsLoading(bool value) {
    final _$actionInfo = _$TopRatedStoreBaseActionController.startAction(name: 'TopRatedStoreBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$TopRatedStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
movies: ${movies},
nextPage: ${nextPage}
    ''';
  }
}
