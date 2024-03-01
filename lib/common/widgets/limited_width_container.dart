import 'package:flutter/material.dart';
import 'package:tmdb_app/common/config/config.dart';

class LimitedWidthContainer extends StatelessWidget {
  final Widget child;
  final Color? color;

  const LimitedWidthContainer({
    Key? key,
    required this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.sizeOf(context).width;
    return Container(
      constraints: BoxConstraints(maxWidth: mediaQueryWidth < maxWidth ? mediaQueryWidth : maxWidth),
      color: color,
      child: child,
    );
  }

  double get maxWidth => DefaultConfig().maxWidth;
}
