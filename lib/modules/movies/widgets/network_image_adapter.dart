import 'package:flutter/material.dart';
import 'package:tmdb_app/common/config/config.dart';
import 'package:tmdb_app/design/theme/palette.dart';

class NetworkImageAdapter extends StatelessWidget {
  final String? imageUrl;
  final double width;
  final double height;

  const NetworkImageAdapter({Key? key, required this.imageUrl, required this.width, this.height = 231})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return SizedBox(
        width: width,
        height: height,
        child: Center(
            child: Text('No image', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Palette.secondary))),
      );
    }
    return Image.network(
      '${DefaultConfig().imageBannerUrl}$imageUrl',
      width: width,
    );
  }
}
