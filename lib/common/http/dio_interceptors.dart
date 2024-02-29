import 'package:dio/dio.dart';
import 'package:tmdb_app/common/config/config.dart';
import 'package:tmdb_app/common/http/http_service.dart';

class DioInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.queryParameters.addAll({'api_key': DefaultConfig().apiKey});
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    HttpError? exception;

    if (err.response?.statusCode != null) {
      var response = err.response?.data;
      exception = {
        400: BadRequestException(
          statusCode: err.response?.statusCode,
          serverError: response.data['attributes']?['errors']?['document'],
        ),
        401: UnauthorizedException(
          statusCode: err.response?.statusCode,
          serverError: response.data['attributes']?['errors']?['document'],
        ),
        422: UnprocessableEntityException(
          statusCode: err.response?.statusCode,
          serverError: response.data['data']?['attributes']?['errors'],
        ),
        500: InternalServerError(
          statusCode: err.response?.statusCode,
          serverError: response.data['attributes']?['error']?['document'],
        ),
      }[err.response!.statusCode!];
    }
    exception ??= {
      DioException.connectionError: NoConnectionException(
        statusCode: err.response?.statusCode,
        serverError: err.response?.data['attributes']['error']['document'],
      ),
      DioException.connectionTimeout: TimeOutException(
        statusCode: err.response?.statusCode,
        serverError: err.response?.data['attributes']['error']['document'],
      ),
      DioException.receiveTimeout: TimeOutException(
        statusCode: err.response?.statusCode,
        serverError: err.response?.data['attributes']['error']['document'],
      ),
      DioException.sendTimeout: TimeOutException(
        statusCode: err.response?.statusCode,
        serverError: err.response?.data['attributes']['error']['document'],
      ),
    }[err.type];

    if (exception != null) throw exception;
    super.onError(err, handler);
  }
}
