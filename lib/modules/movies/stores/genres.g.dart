// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GenresStore on GenresStoreBase, Store {
  late final _$isGenresLoadingAtom = Atom(name: 'GenresStoreBase.isGenresLoading', context: context);

  @override
  bool get isGenresLoading {
    _$isGenresLoadingAtom.reportRead();
    return super.isGenresLoading;
  }

  @override
  set isGenresLoading(bool value) {
    _$isGenresLoadingAtom.reportWrite(value, super.isGenresLoading, () {
      super.isGenresLoading = value;
    });
  }

  late final _$genresAtom = Atom(name: 'GenresStoreBase.genres', context: context);

  @override
  List<Genre> get genres {
    _$genresAtom.reportRead();
    return super.genres;
  }

  @override
  set genres(List<Genre> value) {
    _$genresAtom.reportWrite(value, super.genres, () {
      super.genres = value;
    });
  }

  late final _$fetchGenresAsyncAction = AsyncAction('GenresStoreBase.fetchGenres', context: context);

  @override
  Future<void> fetchGenres() {
    return _$fetchGenresAsyncAction.run(() => super.fetchGenres());
  }

  late final _$GenresStoreBaseActionController = ActionController(name: 'GenresStoreBase', context: context);

  @override
  void setIsGenresLoading(bool value) {
    final _$actionInfo = _$GenresStoreBaseActionController.startAction(name: 'GenresStoreBase.setIsGenresLoading');
    try {
      return super.setIsGenresLoading(value);
    } finally {
      _$GenresStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isGenresLoading: ${isGenresLoading},
genres: ${genres}
    ''';
  }
}
