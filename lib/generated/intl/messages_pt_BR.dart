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

  static String m0(date) => "Lançado em ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "badRequestExceptionMessage":
            MessageLookupByLibrary.simpleMessage("Requisição má sucedida, verifique os dados e tente novamente."),
        "defaultExceptionMessage":
            MessageLookupByLibrary.simpleMessage("Serviço indisponível no momento, tente novamente mais tarde."),
        "discoverMoviesTitle": MessageLookupByLibrary.simpleMessage("Descubra novos filmes"),
        "noConnectionExceptionMessage": MessageLookupByLibrary.simpleMessage("Sem conexão."),
        "notFoundExceptionMessage": MessageLookupByLibrary.simpleMessage("Não encontrado."),
        "releaseDateLabel": m0,
        "seeAllButton": MessageLookupByLibrary.simpleMessage("Ver todos"),
        "timeOutExceptionMessage": MessageLookupByLibrary.simpleMessage("Tempo de requisição expirado."),
        "titleLabel": MessageLookupByLibrary.simpleMessage("TMDB"),
        "unauthorizedAlertMessage": MessageLookupByLibrary.simpleMessage(
            "Sua sessão expirou, faça login novamente para continuar utilizando o aplicativo."),
        "unauthorizedExceptionMessage": MessageLookupByLibrary.simpleMessage("Não autorizado"),
        "unprocessableEntityExceptionMessage": MessageLookupByLibrary.simpleMessage(
            "Erro ao processar a requisição, verifique os dados e tente novamente.")
      };
}
