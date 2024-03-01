import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:tmdb_app/modules/movies/widgets/cast_card.dart';
import 'package:tmdb_app/modules/movies/widgets/horizontal_cast_list.dart';

import '../utils/default_stucture.dart';
import '../utils/models_mock.dart';

void main() {
  testWidgets('Should render Horizontal Cast List', (WidgetTester tester) async {
    await mockNetworkImagesFor(
        () async => await tester.pumpWidget(defaultStructure(HorizontalCastList(casts: getCast(), isLoading: false))));
    expect(find.byType(HorizontalCastList), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(CastCard), findsNWidgets(2));
    expect(find.text('Name 1'), findsOneWidget);
    expect(find.text('Character 1'), findsOneWidget);
    expect(find.text('Acting'), findsNWidgets(2));
    expect(find.text('Name 2'), findsOneWidget);
    expect(find.text('Character 2'), findsOneWidget);
  });
}
