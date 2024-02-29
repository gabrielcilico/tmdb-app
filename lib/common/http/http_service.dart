import 'package:tmdb_app/generated/l10n.dart';

abstract class HttpService {
  HttpService(this.baseUrl, this.timeout);

  String baseUrl;
  int timeout;

  updateHeaders({headers});

  Future get({required String path, data, queryParams, Function? onError});

  Future post({required String path, data, queryParams, Function? onError});

  Future put({required String path, data, queryParams, Function? onError});

  Future delete({required String path, data, queryParams, Function? onError});

  Future patch({required String path, data, queryParams, Function? onError});
}

abstract class HttpError {
  late int? statusCode;
  late String _message;
  late final String? _serverError;

  HttpError({
    this.statusCode = 500,
    String? message,
    serverError,
  }) {
    if (serverError is Map) {
      String errorMessage = "";
      serverError.forEach((key, value) {
        errorMessage += "$key: ${value[0]}\n";
      });
      _serverError = errorMessage;
    } else {
      _serverError = serverError;
    }
  }

  @override
  String toString() {
    return _serverError ?? _message;
  }
}

class BadRequestException extends HttpError {
  BadRequestException({
    int? statusCode = 400,
    String? message,
    serverError,
  }) : super(
          statusCode: statusCode,
          serverError: serverError,
        ) {
    _message = message ?? S.current.badRequestExceptionMessage;
  }
}

class NotFoundException extends HttpError {
  NotFoundException({
    int? statusCode = 404,
    String? message,
    serverError,
  }) : super(
          statusCode: statusCode,
          serverError: serverError,
        ) {
    _message = message ?? S.current.notFoundExceptionMessage;
  }
}

class NoConnectionException extends HttpError {
  NoConnectionException({
    int? statusCode = 500,
    String? message,
    serverError,
  }) : super(
          statusCode: statusCode,
          serverError: serverError,
        ) {
    _message = message ?? S.current.noConnectionExceptionMessage;
  }
}

class TimeOutException extends HttpError {
  TimeOutException({
    int? statusCode = 500,
    String? message,
    serverError,
  }) : super(
          statusCode: statusCode,
          serverError: serverError,
        ) {
    _message = message ?? S.current.timeOutExceptionMessage;
  }
}

class UnauthorizedException extends HttpError {
  UnauthorizedException({
    int? statusCode = 401,
    String? message,
    serverError,
  }) : super(
          statusCode: statusCode,
          serverError: serverError,
        ) {
    _message = message ?? S.current.unauthorizedExceptionMessage;
  }
}

class UnprocessableEntityException extends HttpError {
  UnprocessableEntityException({
    int? statusCode = 422,
    String? message,
    serverError,
  }) : super(
          statusCode: statusCode,
          serverError: serverError,
        ) {
    _message = message ?? S.current.unprocessableEntityExceptionMessage;
  }
}

class InternalServerError extends HttpError {
  InternalServerError({
    int? statusCode = 500,
    String? message,
    serverError,
  }) : super(
          statusCode: statusCode,
          serverError: serverError,
        ) {
    _message = message ?? S.current.defaultExceptionMessage;
  }
}

class HttpExceptionError extends HttpError {
  HttpExceptionError({
    int? statusCode = 500,
    String? message,
    serverError,
  }) : super(
          statusCode: statusCode,
          serverError: serverError,
        ) {
    _message = message ?? S.current.defaultExceptionMessage;
  }
}
