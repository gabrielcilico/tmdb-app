import 'package:tmdb_app/common/http/dio_http_service.dart';

class ApiHttpService extends DioHttpService {
  ApiHttpService({required baseUrl, apiKey, timeout = 10})
      : super(
          baseUrl: baseUrl,
          timeout: timeout,
        );
}
