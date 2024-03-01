import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmdb_app/common/http/http_service.dart';
import 'package:tmdb_app/modules/movies/models/credits.dart';
import 'package:tmdb_app/modules/movies/services/credits.dart';

import '../utils/models_mock.dart';

class HttpServiceMock extends Mock implements HttpService {}

void main() {
  test('Should return Cast list', () async {
    HttpServiceMock mock = HttpServiceMock();
    when(() => mock.get(path: '/movie/1/credits', queryParams: {'language': 'pt-BR'})).thenAnswer((_) async => getCastsJson());

    CreditsService service = CreditsService(mock);
    List<Cast> casts = await service.getCast(1);

    verify(() => mock.get(path: '/movie/1/credits', queryParams: {'language': 'pt-BR'})).called(1);

    expect(casts.length, 2);
    expect(casts.first.name, 'Name 1');
    expect(casts.first.knownForDepartment, 'Acting');
    expect(casts.first.character, 'Character 1');

    expect(casts.last.name, 'Name 2');
    expect(casts.last.knownForDepartment, 'Acting');
    expect(casts.last.character, 'Character 2');
  });
}