import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:tmdb_app/modules/movies/widgets/cast_card.dart';

import '../utils/default_stucture.dart';
import '../utils/models_mock.dart';

void main() {
  testWidgets('Should render Cast Card', (WidgetTester tester) async {
    await mockNetworkImagesFor(() async => await tester.pumpWidget(defaultStructure(CastCard(cast: getCast().first))));
    expect(find.byType(CastCard), findsOneWidget);
    expect(find.text('Name 1'), findsOneWidget);
    expect(find.text('Character 1'), findsOneWidget);
    expect(find.text('Acting'), findsOneWidget);
  });
}
