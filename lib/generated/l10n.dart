// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Requisição má sucedida, verifique os dados e tente novamente.`
  String get badRequestExceptionMessage {
    return Intl.message(
      'Requisição má sucedida, verifique os dados e tente novamente.',
      name: 'badRequestExceptionMessage',
      desc: '',
      args: [],
    );
  }

  /// `Não autorizado`
  String get unauthorizedExceptionMessage {
    return Intl.message(
      'Não autorizado',
      name: 'unauthorizedExceptionMessage',
      desc: '',
      args: [],
    );
  }

  /// `Sua sessão expirou, faça login novamente para continuar utilizando o aplicativo.`
  String get unauthorizedAlertMessage {
    return Intl.message(
      'Sua sessão expirou, faça login novamente para continuar utilizando o aplicativo.',
      name: 'unauthorizedAlertMessage',
      desc: '',
      args: [],
    );
  }

  /// `Não encontrado.`
  String get notFoundExceptionMessage {
    return Intl.message(
      'Não encontrado.',
      name: 'notFoundExceptionMessage',
      desc: '',
      args: [],
    );
  }

  /// `Sem conexão.`
  String get noConnectionExceptionMessage {
    return Intl.message(
      'Sem conexão.',
      name: 'noConnectionExceptionMessage',
      desc: '',
      args: [],
    );
  }

  /// `Tempo de requisição expirado.`
  String get timeOutExceptionMessage {
    return Intl.message(
      'Tempo de requisição expirado.',
      name: 'timeOutExceptionMessage',
      desc: '',
      args: [],
    );
  }

  /// `Serviço indisponível no momento, tente novamente mais tarde.`
  String get defaultExceptionMessage {
    return Intl.message(
      'Serviço indisponível no momento, tente novamente mais tarde.',
      name: 'defaultExceptionMessage',
      desc: '',
      args: [],
    );
  }

  /// `Erro ao processar a requisição, verifique os dados e tente novamente.`
  String get unprocessableEntityExceptionMessage {
    return Intl.message(
      'Erro ao processar a requisição, verifique os dados e tente novamente.',
      name: 'unprocessableEntityExceptionMessage',
      desc: '',
      args: [],
    );
  }

  /// `TMDB App`
  String get moviesHomeScreenTitle {
    return Intl.message(
      'TMDB App',
      name: 'moviesHomeScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Descubra novos filmes`
  String get discoverMoviesTitle {
    return Intl.message(
      'Descubra novos filmes',
      name: 'discoverMoviesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ver todos`
  String get seeAllButton {
    return Intl.message(
      'Ver todos',
      name: 'seeAllButton',
      desc: '',
      args: [],
    );
  }

  /// `Ver mais`
  String get seeMoreButton {
    return Intl.message(
      'Ver mais',
      name: 'seeMoreButton',
      desc: '',
      args: [],
    );
  }

  /// `Lançado em {date}`
  String releaseDateLabel(String date) {
    return Intl.message(
      'Lançado em $date',
      name: 'releaseDateLabel',
      desc: '',
      args: [date],
    );
  }

  /// `Gênero(s)`
  String get genresLabel {
    return Intl.message(
      'Gênero(s)',
      name: 'genresLabel',
      desc: '',
      args: [],
    );
  }

  /// `Sinopse`
  String get overviewLabel {
    return Intl.message(
      'Sinopse',
      name: 'overviewLabel',
      desc: '',
      args: [],
    );
  }

  /// `{votes} votos computados`
  String computedVotesLabel(int votes) {
    return Intl.message(
      '$votes votos computados',
      name: 'computedVotesLabel',
      desc: '',
      args: [votes],
    );
  }

  /// `Filmes similares`
  String get similarMoviesTitle {
    return Intl.message(
      'Filmes similares',
      name: 'similarMoviesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Buscar filmes`
  String get searchMoviesTitle {
    return Intl.message(
      'Buscar filmes',
      name: 'searchMoviesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Melhores avaliados`
  String get topRatedMoviesTitle {
    return Intl.message(
      'Melhores avaliados',
      name: 'topRatedMoviesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Os Mais Populares`
  String get popularMoviesTitle {
    return Intl.message(
      'Os Mais Populares',
      name: 'popularMoviesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Próximos lançamentos`
  String get upcomingMoviesTitle {
    return Intl.message(
      'Próximos lançamentos',
      name: 'upcomingMoviesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Em cartaz`
  String get nowPlayingMoviesTitle {
    return Intl.message(
      'Em cartaz',
      name: 'nowPlayingMoviesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Elenco`
  String get castTitle {
    return Intl.message(
      'Elenco',
      name: 'castTitle',
      desc: '',
      args: [],
    );
  }

  /// `Detalhes`
  String get detailsTitle {
    return Intl.message(
      'Detalhes',
      name: 'detailsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sem imagem`
  String get noImagePlaceholder {
    return Intl.message(
      'Sem imagem',
      name: 'noImagePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Ex: Batman`
  String get searchExample {
    return Intl.message(
      'Ex: Batman',
      name: 'searchExample',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
