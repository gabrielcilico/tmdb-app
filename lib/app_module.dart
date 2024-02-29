import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/common/config/config.dart';
import 'package:tmdb_app/common/navigation.dart';

import 'common/http/api/api_http_service.dart';
import 'modules/splash_screen.dart';

class AppModule extends Module {
  static const String splashScreenRoute = "/splash";

  @override
  List<Bind> get binds => [
        Bind((i) => NavigationService()),
        Bind((i) => ApiHttpService(
              baseUrl: DefaultConfig().apiBaseUrl,
              apiKey: DefaultConfig().apiKey,
            )),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(splashScreenRoute, child: (_, args) => const SplashScreen()),
      ];
}
