import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/app_module.dart';
import 'package:tmdb_app/common/navigation.dart';
import 'package:tmdb_app/design/theme/theme.dart';
import 'package:tmdb_app/generated/l10n.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    Modular.setNavigatorKey(Modular.get<NavigationService>().navigatorKey);
    Modular.setInitialRoute(AppModule.splashScreenRoute);

    return MaterialApp.router(
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: const <Locale>[
        Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
      ],
      theme: DefaultTheme.getTheme(context),
    );
  }
}
