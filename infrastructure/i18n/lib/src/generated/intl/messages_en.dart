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

  static String m0(count) =>
      "${Intl.plural(count, zero: 'Create tasks to achieve more.', one: 'You got \\n%s task to do.', other: 'You got \\n%s tasks to do.')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_task_note_label":
            MessageLookupByLibrary.simpleMessage("Add a note"),
        "add_task_title_label":
            MessageLookupByLibrary.simpleMessage("What\'s in your mind?"),
        "app_title": MessageLookupByLibrary.simpleMessage("Taski"),
        "completed_tasks_label":
            MessageLookupByLibrary.simpleMessage("Completed Tasks"),
        "create_label": MessageLookupByLibrary.simpleMessage("Create"),
        "create_menu_label": MessageLookupByLibrary.simpleMessage("Create"),
        "create_task_label":
            MessageLookupByLibrary.simpleMessage("Create task"),
        "delete_tasks_label":
            MessageLookupByLibrary.simpleMessage("Delete all"),
        "done_menu_label": MessageLookupByLibrary.simpleMessage("Done"),
        "no_result_message":
            MessageLookupByLibrary.simpleMessage("No result found"),
        "no_task_message":
            MessageLookupByLibrary.simpleMessage("You have no task listed"),
        "search_menu_label": MessageLookupByLibrary.simpleMessage("Search"),
        "tasks_count_message": m0,
        "todo_menu_label": MessageLookupByLibrary.simpleMessage("Todo"),
        "welcome_title": MessageLookupByLibrary.simpleMessage("Welcome, \\n%s.")
      };
}
