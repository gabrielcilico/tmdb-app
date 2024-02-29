// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NowPlayingStore on NowPlayingStoreBase, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading, name: 'NowPlayingStoreBase.isLoading')).value;
  Computed<List<Movie>>? _$moviesComputed;

  @override
  List<Movie> get movies =>
      (_$moviesComputed ??= Computed<List<Movie>>(() => super.movies, name: 'NowPlayingStoreBase.movies')).value;

  late final _$isLoadingRawAtom = Atom(name: 'NowPlayingStoreBase.isLoadingRaw', context: context);

  @override
  bool get isLoadingRaw {
    _$isLoadingRawAtom.reportRead();
    return super.isLoadingRaw;
  }

  @override
  set isLoadingRaw(bool value) {
    _$isLoadingRawAtom.reportWrite(value, super.isLoadingRaw, () {
      super.isLoadingRaw = value;
    });
  }

  late final _$moviesRawAtom = Atom(name: 'NowPlayingStoreBase.moviesRaw', context: context);

  @override
  List<Movie> get moviesRaw {
    _$moviesRawAtom.reportRead();
    return super.moviesRaw;
  }

  @override
  set moviesRaw(List<Movie> value) {
    _$moviesRawAtom.reportWrite(value, super.moviesRaw, () {
      super.moviesRaw = value;
    });
  }

  late final _$nextPageAtom = Atom(name: 'NowPlayingStoreBase.nextPage', context: context);

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

  late final _$fetchMoviesAsyncAction = AsyncAction('NowPlayingStoreBase.fetchMovies', context: context);

  @override
  Future<void> fetchMovies() {
    return _$fetchMoviesAsyncAction.run(() => super.fetchMovies());
  }

  late final _$resetMoviesAsyncAction = AsyncAction('NowPlayingStoreBase.resetMovies', context: context);

  @override
  Future<void> resetMovies() {
    return _$resetMoviesAsyncAction.run(() => super.resetMovies());
  }

  late final _$NowPlayingStoreBaseActionController = ActionController(name: 'NowPlayingStoreBase', context: context);

  @override
  void setIsLoading(bool value) {
    final _$actionInfo = _$NowPlayingStoreBaseActionController.startAction(name: 'NowPlayingStoreBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$NowPlayingStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoadingRaw: ${isLoadingRaw},
moviesRaw: ${moviesRaw},
nextPage: ${nextPage},
isLoading: ${isLoading},
movies: ${movies}
    ''';
  }
}
