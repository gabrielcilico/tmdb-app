import 'package:dio/dio.dart';
import 'package:tmdb_app/common/functions/snack_bar_service.dart';

handleException(Object e, Function? onError) async {
  if (onError != null) {
    onError(e);
    return;
  }
  showSnackBarMessage(message: (e is DioException) ? e.error.toString() : e.toString(), type: SnackBarTypeEnum.error);
  throw e;
}
