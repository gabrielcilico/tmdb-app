// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt_BR locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pt_BR';

  static String m0(votes) => "${votes} votos computados";

  static String m1(date) => "Lançado em ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "badRequestExceptionMessage": MessageLookupByLibrary.simpleMessage(
            "Requisição má sucedida, verifique os dados e tente novamente."),
        "castTitle": MessageLookupByLibrary.simpleMessage("Elenco"),
        "computedVotesLabel": m0,
        "defaultExceptionMessage": MessageLookupByLibrary.simpleMessage(
            "Serviço indisponível no momento, tente novamente mais tarde."),
        "detailsTitle": MessageLookupByLibrary.simpleMessage("Detalhes"),
        "discoverMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Descubra novos filmes"),
        "genresLabel": MessageLookupByLibrary.simpleMessage("Gênero(s)"),
        "moviesHomeScreenTitle":
            MessageLookupByLibrary.simpleMessage("TMDB App"),
        "noConnectionExceptionMessage":
            MessageLookupByLibrary.simpleMessage("Sem conexão."),
        "noImagePlaceholder":
            MessageLookupByLibrary.simpleMessage("Sem imagem"),
        "notFoundExceptionMessage":
            MessageLookupByLibrary.simpleMessage("Não encontrado."),
        "nowPlayingMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Em cartaz"),
        "overviewLabel": MessageLookupByLibrary.simpleMessage("Sinopse"),
        "popularMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Os Mais Populares"),
        "releaseDateLabel": m1,
        "searchExample": MessageLookupByLibrary.simpleMessage("Ex: Batman"),
        "searchMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Buscar filmes"),
        "seeAllButton": MessageLookupByLibrary.simpleMessage("Ver todos"),
        "seeMoreButton": MessageLookupByLibrary.simpleMessage("Ver mais"),
        "similarMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Filmes similares"),
        "timeOutExceptionMessage": MessageLookupByLibrary.simpleMessage(
            "Tempo de requisição expirado."),
        "topRatedMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Melhores avaliados"),
        "unauthorizedAlertMessage": MessageLookupByLibrary.simpleMessage(
            "Sua sessão expirou, faça login novamente para continuar utilizando o aplicativo."),
        "unauthorizedExceptionMessage":
            MessageLookupByLibrary.simpleMessage("Não autorizado"),
        "unprocessableEntityExceptionMessage": MessageLookupByLibrary.simpleMessage(
            "Erro ao processar a requisição, verifique os dados e tente novamente."),
        "upcomingMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Próximos lançamentos")
      };
}
