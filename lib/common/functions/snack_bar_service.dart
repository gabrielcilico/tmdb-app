import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tmdb_app/design/theme/palette.dart';

import '../navigation.dart';

showSnackBarMessage({required String message, required SnackBarTypeEnum type}) {
  NavigationService navigationService = Modular.get();
  var context = navigationService.navigatorKey.currentState!.context;

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      showCloseIcon: true,
      duration: const Duration(seconds: 3),
      backgroundColor: {
        SnackBarTypeEnum.alert: Palette.attention,
        SnackBarTypeEnum.error: Palette.error,
        SnackBarTypeEnum.success: Palette.success,
      }[type],
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.only(bottom: 32, left: 16, right: 16),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              message,
              style: Theme.of(context).textTheme.titleSmall,
              maxLines: 4,
            ),
          ),
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
            child: const Icon(Icons.close),
          ),
        ],
      ),
    ),
  );
}

enum SnackBarTypeEnum { success, alert, error }
