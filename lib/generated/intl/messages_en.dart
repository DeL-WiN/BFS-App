// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "all_calculations_has_finished": MessageLookupByLibrary.simpleMessage(
            "All calculations has finished, you can send your results to server"),
        "error": MessageLookupByLibrary.simpleMessage(
            "Error! Check the url and try again"),
        "error_server": MessageLookupByLibrary.simpleMessage(
            "Error! Data did not pass verification on the server try again"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "page": MessageLookupByLibrary.simpleMessage("Page"),
        "preview": MessageLookupByLibrary.simpleMessage("Preview"),
        "process": MessageLookupByLibrary.simpleMessage("Process"),
        "results": MessageLookupByLibrary.simpleMessage("results"),
        "send_results_to_server":
            MessageLookupByLibrary.simpleMessage("Send results to server"),
        "set_api_base_url": MessageLookupByLibrary.simpleMessage(
            "Set valid API base URL in order to continue"),
        "start_counting":
            MessageLookupByLibrary.simpleMessage("Start counting process"),
        "the_calculation_is_not_yet_complete":
            MessageLookupByLibrary.simpleMessage(
                "The calculation is not yet complete")
      };
}
