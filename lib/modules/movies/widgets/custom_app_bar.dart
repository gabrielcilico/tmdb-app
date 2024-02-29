import 'package:flutter/material.dart';
import 'package:tmdb_app/common/functions/navigator_service.dart';

class CustomAppBar extends AppBar {
  final String textTitle;

  CustomAppBar({super.key, required this.textTitle})
      : super(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(textTitle),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () => pushNamed(routeName: '/movies/search'),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
        );
}
