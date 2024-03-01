// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
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
  String get localeName => 'en_US';

  static String m0(votes) => "${votes} votes computed";

  static String m1(date) => "Released on ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "badRequestExceptionMessage": MessageLookupByLibrary.simpleMessage(
            "Bad request, please check the data and try again."),
        "castTitle": MessageLookupByLibrary.simpleMessage("Cast"),
        "computedVotesLabel": m0,
        "defaultExceptionMessage": MessageLookupByLibrary.simpleMessage(
            "Service unavailable at the moment, please try again later."),
        "detailsTitle": MessageLookupByLibrary.simpleMessage("Details"),
        "discoverMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Discover New Movies"),
        "genresLabel": MessageLookupByLibrary.simpleMessage("Genre(s)"),
        "moviesHomeScreenTitle":
            MessageLookupByLibrary.simpleMessage("TMDB App"),
        "noConnectionExceptionMessage":
            MessageLookupByLibrary.simpleMessage("No connection."),
        "noImagePlaceholder": MessageLookupByLibrary.simpleMessage("No Image"),
        "notFoundExceptionMessage":
            MessageLookupByLibrary.simpleMessage("Not found."),
        "nowPlayingMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Now Playing"),
        "overviewLabel": MessageLookupByLibrary.simpleMessage("Overview"),
        "popularMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Most Popular"),
        "releaseDateLabel": m1,
        "searchExample": MessageLookupByLibrary.simpleMessage("Ex: Batman"),
        "searchMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Search Movies"),
        "seeAllButton": MessageLookupByLibrary.simpleMessage("See All"),
        "seeMoreButton": MessageLookupByLibrary.simpleMessage("See More"),
        "similarMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Similar Movies"),
        "timeOutExceptionMessage":
            MessageLookupByLibrary.simpleMessage("Request timeout."),
        "topRatedMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Top Rated"),
        "unauthorizedAlertMessage": MessageLookupByLibrary.simpleMessage(
            "Your session has expired, please log in again to continue using the application."),
        "unauthorizedExceptionMessage":
            MessageLookupByLibrary.simpleMessage("Unauthorized"),
        "unprocessableEntityExceptionMessage": MessageLookupByLibrary.simpleMessage(
            "Error processing the request, please check the data and try again."),
        "upcomingMoviesTitle":
            MessageLookupByLibrary.simpleMessage("Upcoming Releases")
      };
}
