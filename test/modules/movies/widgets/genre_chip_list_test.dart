import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_app/modules/movies/widgets/genre_chip_list.dart';

import '../../../utils/default_stucture.dart';
import '../../../utils/models_mock.dart';

void main() {
  testWidgets('Should render a Chip List', (WidgetTester tester) async {
    await tester.pumpWidget(defaultStructure(GenreChipList(genres: getGenres())));
    expect(find.byType(Wrap), findsOneWidget);
    expect(find.byType(Chip), findsNWidgets(3));
    expect(find.text('Action'), findsOneWidget);
    expect(find.text('Adventure'), findsOneWidget);
    expect(find.text('Animation'), findsOneWidget);
    expect(find.text('Gênero(s)'), findsOneWidget);
  });
}
