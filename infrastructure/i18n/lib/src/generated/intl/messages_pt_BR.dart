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

  static String m0(count) =>
      "${Intl.plural(count, zero: 'Crie tarefas para alcançar mais.', one: 'Você tem \\n%s tarefa para fazer.', other: 'Você tem \\n%s tarefas para fazer.')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_task_note_label":
            MessageLookupByLibrary.simpleMessage("Adicione uma nota"),
        "add_task_title_label":
            MessageLookupByLibrary.simpleMessage("O que está pensando?"),
        "app_title": MessageLookupByLibrary.simpleMessage("Taski"),
        "completed_tasks_label":
            MessageLookupByLibrary.simpleMessage("Tarefas feitas"),
        "create_label": MessageLookupByLibrary.simpleMessage("Criar"),
        "create_menu_label": MessageLookupByLibrary.simpleMessage("Criar"),
        "create_task_label":
            MessageLookupByLibrary.simpleMessage("Criar tarefa"),
        "delete_tasks_label":
            MessageLookupByLibrary.simpleMessage("Deletar todas"),
        "done_menu_label": MessageLookupByLibrary.simpleMessage("Feitas"),
        "no_result_message":
            MessageLookupByLibrary.simpleMessage("Nenhum resultado encontrado"),
        "no_task_message":
            MessageLookupByLibrary.simpleMessage("Você não tem nenhuma task"),
        "search_menu_label": MessageLookupByLibrary.simpleMessage("Busca"),
        "tasks_count_message": m0,
        "todo_menu_label": MessageLookupByLibrary.simpleMessage("Fazer"),
        "welcome_title":
            MessageLookupByLibrary.simpleMessage("Bem vindo, \\n%s.")
      };
}
