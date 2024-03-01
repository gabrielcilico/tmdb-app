import 'package:flutter/material.dart';
import 'package:tmdb_app/common/config/config.dart';
import 'package:tmdb_app/common/functions/navigator_service.dart';
import 'package:tmdb_app/design/theme/palette.dart';

class CustomAppBar extends AppBar {
  final String textTitle;
  final bool showBackButton;
  final bool showSearchButton;

  CustomAppBar({super.key, required this.textTitle, this.showSearchButton = true, this.showBackButton = true})
      : super(
          title: Container(
            constraints: BoxConstraints(maxWidth: DefaultConfig().maxWidth),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (showBackButton) ...[
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Palette.secondary),
                    onPressed: () => pop(),
                  ),
                ],
                Text(textTitle, style: const TextStyle(color: Palette.secondary)),
                if (showSearchButton) ...[
                  IconButton(
                    icon: const Icon(Icons.search, color: Palette.secondary),
                    onPressed: () => pushNamed(routeName: '/movies/search'),
                  ),
                ]
              ],
            ),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Palette.primary,
        );
}
