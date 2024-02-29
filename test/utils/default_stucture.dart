import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tmdb_app/generated/l10n.dart';

MaterialApp defaultStructure(Widget widget, {bool withScaffold = true}) {
  return MaterialApp(
    localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: const <Locale>[
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ],
    builder: (BuildContext context, Widget? child) => withScaffold ? Scaffold(body: widget) : widget,
  );
}
