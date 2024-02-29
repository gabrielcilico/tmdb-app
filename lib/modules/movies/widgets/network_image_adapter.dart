import 'package:flutter/material.dart';
import 'package:tmdb_app/common/config/config.dart';
import 'package:tmdb_app/design/theme/palette.dart';
import 'package:tmdb_app/generated/l10n.dart';

class NetworkImageAdapter extends StatelessWidget {
  final String? imageUrl;
  final double width;
  final double height;

  const NetworkImageAdapter({Key? key, required this.imageUrl, required this.width, this.height = 231})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return buildNoImageContainer(context);
    }
    return Image.network(
      '${DefaultConfig().imageBannerUrl}$imageUrl',
      width: width,
      errorBuilder: (context, error, stackTrace) {
        return buildNoImageContainer(context);
      },
    );
  }

  SizedBox buildNoImageContainer(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        color: Palette.gray,
        child: Center(
            child: Text(S.current.noImagePlaceholder,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Palette.white))),
      ),
    );
  }
}
