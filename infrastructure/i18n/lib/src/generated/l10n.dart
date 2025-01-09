// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Taski`
  String get app_title {
    return Intl.message(
      'Taski',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }

  /// `Bem vindo, \n%s.`
  String get welcome_title {
    return Intl.message(
      'Bem vindo, \\n%s.',
      name: 'welcome_title',
      desc: '',
      args: [],
    );
  }

  /// `Nenhum resultado encontrado`
  String get no_result_message {
    return Intl.message(
      'Nenhum resultado encontrado',
      name: 'no_result_message',
      desc: '',
      args: [],
    );
  }

  /// `Você não tem nenhuma task`
  String get no_task_message {
    return Intl.message(
      'Você não tem nenhuma task',
      name: 'no_task_message',
      desc: '',
      args: [],
    );
  }

  /// `Criar tarefa`
  String get create_task_label {
    return Intl.message(
      'Criar tarefa',
      name: 'create_task_label',
      desc: '',
      args: [],
    );
  }

  /// `Criar`
  String get create_label {
    return Intl.message(
      'Criar',
      name: 'create_label',
      desc: '',
      args: [],
    );
  }

  /// `Tarefas feitas`
  String get completed_tasks_label {
    return Intl.message(
      'Tarefas feitas',
      name: 'completed_tasks_label',
      desc: '',
      args: [],
    );
  }

  /// `Deletar todas`
  String get delete_tasks_label {
    return Intl.message(
      'Deletar todas',
      name: 'delete_tasks_label',
      desc: '',
      args: [],
    );
  }

  /// `Fazer`
  String get todo_menu_label {
    return Intl.message(
      'Fazer',
      name: 'todo_menu_label',
      desc: '',
      args: [],
    );
  }

  /// `Criar`
  String get create_menu_label {
    return Intl.message(
      'Criar',
      name: 'create_menu_label',
      desc: '',
      args: [],
    );
  }

  /// `Busca`
  String get search_menu_label {
    return Intl.message(
      'Busca',
      name: 'search_menu_label',
      desc: '',
      args: [],
    );
  }

  /// `Feitas`
  String get done_menu_label {
    return Intl.message(
      'Feitas',
      name: 'done_menu_label',
      desc: '',
      args: [],
    );
  }

  /// `O que está pensando?`
  String get add_task_title_label {
    return Intl.message(
      'O que está pensando?',
      name: 'add_task_title_label',
      desc: '',
      args: [],
    );
  }

  /// `Adicione uma nota`
  String get add_task_note_label {
    return Intl.message(
      'Adicione uma nota',
      name: 'add_task_note_label',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =0 {Crie tarefas para alcançar mais.} =1 {Você tem \n%s tarefa para fazer.} other {Você tem \n%s tarefas para fazer.}}`
  String tasks_count_message(num count) {
    return Intl.plural(
      count,
      zero: 'Crie tarefas para alcançar mais.',
      one: 'Você tem \\n%s tarefa para fazer.',
      other: 'Você tem \\n%s tarefas para fazer.',
      name: 'tasks_count_message',
      desc: '',
      args: [count],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
