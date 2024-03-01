import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_app/modules/movies/models/genre.dart';
import 'package:tmdb_app/modules/movies/widgets/genre_chip.dart';

import '../utils/default_stucture.dart';

void main() {
  testWidgets('Should render a Chip', (WidgetTester tester) async {
    await tester.pumpWidget(defaultStructure(GenreChip(genre: Genre(id: 1, name: 'Action'))));
    expect(find.byType(Chip), findsOneWidget);
    expect(find.text('Action'), findsOneWidget);
  });
}
