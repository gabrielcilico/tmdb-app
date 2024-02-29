import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tmdb_app/common/config/config.dart';
import 'package:tmdb_app/common/functions/navigator_service.dart';
import 'package:tmdb_app/design/theme/palette.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/models/movie.dart';
import 'package:tmdb_app/modules/movies/widgets/rate_indicator.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => pushNamed(routeName: '/movies/${movie.id}'),
        child: Container(
          width: 154,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Palette.white,
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Image.network(
                    '${DefaultConfig().imageBaseUrl}${movie.posterPath}',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 4,
                    left: 4,
                    child: RateIndicator(rate: movie.voteAverage),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        movie.title,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Palette.secondary),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        S.current.releaseDateLabel(DateFormat.yMd(Intl.defaultLocale).format(movie.releaseDate)),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Palette.gray),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
