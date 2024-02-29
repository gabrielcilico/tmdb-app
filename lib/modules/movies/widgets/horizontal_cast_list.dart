import 'package:flutter/material.dart';
import 'package:tmdb_app/design/theme/palette.dart';
import 'package:tmdb_app/generated/l10n.dart';
import 'package:tmdb_app/modules/movies/models/credits.dart';
import 'package:tmdb_app/modules/movies/widgets/cast_card.dart';

class HorizontalCastList extends StatelessWidget {
  final List<Cast> casts;
  final bool isLoading;

  const HorizontalCastList({Key? key, required this.casts, required this.isLoading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                S.current.castTitle,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Palette.secondary),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 280,
          child: _buildListView(context),
        ),
      ],
    );
  }

  Widget _buildListView(BuildContext context) {
    if (isLoading && casts.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ...casts.map((cast) => CastCard(cast: cast)).toList(),
      ],
    );
  }
}
