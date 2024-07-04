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

  /// `Set valid API base URL in order to continue`
  String get set_api_base_url {
    return Intl.message(
      'Set valid API base URL in order to continue',
      name: 'set_api_base_url',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Preview`
  String get preview {
    return Intl.message(
      'Preview',
      name: 'preview',
      desc: '',
      args: [],
    );
  }

  /// `Process`
  String get process {
    return Intl.message(
      'Process',
      name: 'process',
      desc: '',
      args: [],
    );
  }

  /// `results`
  String get results {
    return Intl.message(
      'results',
      name: 'results',
      desc: '',
      args: [],
    );
  }

  /// `Page`
  String get page {
    return Intl.message(
      'Page',
      name: 'page',
      desc: '',
      args: [],
    );
  }

  /// `All calculations has finished, you can send your results to server`
  String get all_calculations_has_finished {
    return Intl.message(
      'All calculations has finished, you can send your results to server',
      name: 'all_calculations_has_finished',
      desc: '',
      args: [],
    );
  }

  /// `Start counting process`
  String get start_counting {
    return Intl.message(
      'Start counting process',
      name: 'start_counting',
      desc: '',
      args: [],
    );
  }

  /// `Send results to server`
  String get send_results_to_server {
    return Intl.message(
      'Send results to server',
      name: 'send_results_to_server',
      desc: '',
      args: [],
    );
  }

  /// `The calculation is not yet complete`
  String get the_calculation_is_not_yet_complete {
    return Intl.message(
      'The calculation is not yet complete',
      name: 'the_calculation_is_not_yet_complete',
      desc: '',
      args: [],
    );
  }

  /// `Error! Check the url and try again`
  String get error {
    return Intl.message(
      'Error! Check the url and try again',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Error! Data did not pass verification on the server try again`
  String get error_server {
    return Intl.message(
      'Error! Data did not pass verification on the server try again',
      name: 'error_server',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
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
