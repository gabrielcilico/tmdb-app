import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:tmdb_app/common/functions/exception_snackbar_handler.dart';

import 'dio_interceptors.dart';
import 'http_service.dart';

class DioHttpService implements HttpService {
  late Dio _client;

  DioHttpService({
    required this.baseUrl,
    this.timeout = 10,
    InterceptorsWrapper? interceptor,
  }) {
    _client = Dio();
    _client.interceptors.add(interceptor ?? DioInterceptor());
    _client.options.baseUrl = baseUrl;
    _client.options.connectTimeout = Duration(seconds: timeout);
    _client.options.receiveTimeout = Duration(seconds: timeout);

    updateHeaders(headers: {"X-Requested-With": "XMLHttpRequest"});

    if (_client.httpClientAdapter is IOHttpClientAdapter) {
      (_client.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
        HttpClient client = HttpClient();
        client.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
        return client;
      };
    }
  }

  @override
  String baseUrl;

  @override
  int timeout;

  @override
  Future delete({required String path, data, queryParams, Function? onError}) async {
    try {
      var response = await _client.delete(
        path,
        data: data,
        queryParameters: queryParams,
      );
      return response.data;
    } catch (e) {
      await handleException(e, onError);
    }
  }

  @override
  Future get({required String path, data, queryParams, Function? onError}) async {
    try {
      var response = await _client.get(
        path,
        data: data,
        queryParameters: queryParams,
      );
      return response.data;
    } catch (e) {
      await handleException(e, onError);
    }
  }

  @override
  Future post({required String path, data, queryParams, Function? onError}) async {
    try {
      var response = await _client.post(
        path,
        data: data,
        queryParameters: queryParams,
      );
      return response.data;
    } catch (e) {
      await handleException(e, onError);
    }
  }

  @override
  Future put({required String path, data, queryParams, Function? onError}) async {
    try {
      var response = await _client.put(
        path,
        data: data,
        queryParameters: queryParams,
      );
      return response.data;
    } catch (e) {
      await handleException(e, onError);
    }
  }

  @override
  Future patch({required String path, data, queryParams, Function? onError}) async {
    try {
      var response = await _client.patch(
        path,
        data: data,
        queryParameters: queryParams,
      );
      return response.data;
    } catch (e) {
      await handleException(e, onError);
    }
  }

  @override
  updateHeaders({headers}) {
    _client.options.headers = headers;
  }
}
