abstract class BaseConfig {
  String get environmentName;
  String get apiBaseUrl;
  String get apiKey;
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
  String get apiKey => 'API_KEY';

  @override
  String get apiBaseUrl => 'https://api.themoviedb.org/';
}
