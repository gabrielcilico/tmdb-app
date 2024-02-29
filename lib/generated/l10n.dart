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
    assert(
        _current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
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

  /// `TMDB`
  String get titleLabel {
    return Intl.message(
      'TMDB',
      name: 'titleLabel',
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
