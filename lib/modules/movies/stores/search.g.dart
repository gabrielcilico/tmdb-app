// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchStore on SearchStoreBase, Store {
  late final _$isLoadingAtom = Atom(name: 'SearchStoreBase.isLoading', context: context);

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

  late final _$moviesAtom = Atom(name: 'SearchStoreBase.movies', context: context);

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

  late final _$nextPageAtom = Atom(name: 'SearchStoreBase.nextPage', context: context);

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

  late final _$fetchMoviesAsyncAction = AsyncAction('SearchStoreBase.fetchMovies', context: context);

  @override
  Future<void> fetchMovies(String query) {
    return _$fetchMoviesAsyncAction.run(() => super.fetchMovies(query));
  }

  late final _$resetMoviesAsyncAction = AsyncAction('SearchStoreBase.resetMovies', context: context);

  @override
  Future<void> resetMovies() {
    return _$resetMoviesAsyncAction.run(() => super.resetMovies());
  }

  late final _$SearchStoreBaseActionController = ActionController(name: 'SearchStoreBase', context: context);

  @override
  void setIsLoading(bool value) {
    final _$actionInfo = _$SearchStoreBaseActionController.startAction(name: 'SearchStoreBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$SearchStoreBaseActionController.endAction(_$actionInfo);
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
