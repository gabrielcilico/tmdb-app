abstract class BaseConfig {
  String get environmentName;
  String get apiBaseUrl;
  String get apiKey;
  String get imageBaseUrl;
  String get imageBannerUrl;
  String get imageCastUrl;
}

class DefaultConfig extends BaseConfig {
  factory DefaultConfig() {
    return _instance;
  }

  DefaultConfig._internal();

  static final DefaultConfig _instance = DefaultConfig._internal();

  @override
  String get environmentName => 'default';

  @override
  String get apiKey => '32ff1972f078b12cb3ec733c27c91eb6';

  @override
  String get apiBaseUrl => 'https://api.themoviedb.org/3/';

  @override
  String get imageBaseUrl => 'https://image.tmdb.org/t/p/';

  @override
  String get imageBannerUrl => '${imageBaseUrl}w154';

  @override
  String get imageCastUrl => '${imageBaseUrl}w138_and_h175_face';
}
