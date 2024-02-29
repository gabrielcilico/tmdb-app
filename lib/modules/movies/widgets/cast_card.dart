import 'package:flutter/material.dart';
import 'package:tmdb_app/design/theme/palette.dart';
import 'package:tmdb_app/modules/movies/models/credits.dart';
import 'package:tmdb_app/modules/movies/widgets/network_image_adapter.dart';

class CastCard extends StatelessWidget {
  final Cast cast;

  const CastCard({Key? key, required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 138,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Palette.white,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NetworkImageAdapter(imageUrl: cast.profilePath, width: 138, height: 200),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cast.name,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Palette.secondary),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  if (cast.character != null) ...[
                    Text(
                      cast.character!,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Palette.gray),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                  ],
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    cast.knownForDepartment,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Palette.primaryDark),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
