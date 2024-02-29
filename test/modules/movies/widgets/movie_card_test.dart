import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:tmdb_app/modules/movies/widgets/movie_card.dart';
import 'package:tmdb_app/modules/movies/widgets/rate_indicator.dart';

import '../../../utils/default_stucture.dart';
import '../../../utils/models_mock.dart';

void main() {
  testWidgets('Should render a Movie Card', (WidgetTester tester) async {
    await mockNetworkImagesFor(
        () async => await tester.pumpWidget(defaultStructure(MovieCard(movie: getMovies().first))));
    expect(find.byType(MovieCard), findsOneWidget);
    expect(find.byType(RateIndicator), findsOneWidget);
    expect(find.text('Movie 1'), findsOneWidget);
    expect(find.text('Lançado em 10/10/2021'), findsOneWidget);
    expect(find.text('Movie 2'), findsNothing);
    expect(find.text('Title'), findsNothing);
    expect(find.text('Ver todos'), findsNothing);
  });
}
