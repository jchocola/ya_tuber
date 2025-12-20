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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Playlist`
  String get playlist {
    return Intl.message('Playlist', name: 'playlist', desc: '', args: []);
  }

  /// `Edit Track`
  String get editTrack {
    return Intl.message('Edit Track', name: 'editTrack', desc: '', args: []);
  }

  /// `Update the track information below`
  String get updateTheTrackInformationBelow {
    return Intl.message(
      'Update the track information below',
      name: 'updateTheTrackInformationBelow',
      desc: '',
      args: [],
    );
  }

  /// `Track Title`
  String get trackTitle {
    return Intl.message('Track Title', name: 'trackTitle', desc: '', args: []);
  }

  /// `Artist / Channel`
  String get artistChannel {
    return Intl.message(
      'Artist / Channel',
      name: 'artistChannel',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Changes will be saved to your local playlist`
  String get changesWillBeSavedToYourLocalPlaylist {
    return Intl.message(
      'Changes will be saved to your local playlist',
      name: 'changesWillBeSavedToYourLocalPlaylist',
      desc: '',
      args: [],
    );
  }

  /// `Delete Track?`
  String get deleteTrack {
    return Intl.message(
      'Delete Track?',
      name: 'deleteTrack',
      desc: '',
      args: [],
    );
  }

  /// `This action cannot be undone. The track will be permanently removed from your playlist.`
  String get thisActionCannotBeUndoneTheTrackWillBePermanently {
    return Intl.message(
      'This action cannot be undone. The track will be permanently removed from your playlist.',
      name: 'thisActionCannotBeUndoneTheTrackWillBePermanently',
      desc: '',
      args: [],
    );
  }

  /// `Auto Play Next`
  String get autoPlayNext {
    return Intl.message(
      'Auto Play Next',
      name: 'autoPlayNext',
      desc: '',
      args: [],
    );
  }

  /// `Automatically play next track in playlist`
  String get automaticallyPlayNextTrackInPlaylist {
    return Intl.message(
      'Automatically play next track in playlist',
      name: 'automaticallyPlayNextTrackInPlaylist',
      desc: '',
      args: [],
    );
  }

  /// `Playback`
  String get playback {
    return Intl.message('Playback', name: 'playback', desc: '', args: []);
  }

  /// `Background Play`
  String get backgroundPlay {
    return Intl.message(
      'Background Play',
      name: 'backgroundPlay',
      desc: '',
      args: [],
    );
  }

  /// `Automatically play on background`
  String get automaticallyPlayOnBackground {
    return Intl.message(
      'Automatically play on background',
      name: 'automaticallyPlayOnBackground',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Appearance`
  String get appearance {
    return Intl.message('Appearance', name: 'appearance', desc: '', args: []);
  }

  /// `Theme`
  String get theme {
    return Intl.message('Theme', name: 'theme', desc: '', args: []);
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `App Version`
  String get appVersion {
    return Intl.message('App Version', name: 'appVersion', desc: '', args: []);
  }

  /// `Build`
  String get build {
    return Intl.message('Build', name: 'build', desc: '', args: []);
  }

  /// `Developer`
  String get developer {
    return Intl.message('Developer', name: 'developer', desc: '', args: []);
  }

  /// `Term of Services`
  String get termOfServices {
    return Intl.message(
      'Term of Services',
      name: 'termOfServices',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Past Youtube link...`
  String get pastYoutubeLink {
    return Intl.message(
      'Past Youtube link...',
      name: 'pastYoutubeLink',
      desc: '',
      args: [],
    );
  }

  /// `YaTube`
  String get yatube {
    return Intl.message('YaTube', name: 'yatube', desc: '', args: []);
  }

  /// `Please long tap to set value!`
  String get pleaseLongTapToSetValue {
    return Intl.message(
      'Please long tap to set value!',
      name: 'pleaseLongTapToSetValue',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back, glad to see you :)`
  String get welcomeBackGladToSeeYou {
    return Intl.message(
      'Welcome back, glad to see you :)',
      name: 'welcomeBackGladToSeeYou',
      desc: '',
      args: [],
    );
  }

  /// `You're offline :(`
  String get youreOffline {
    return Intl.message(
      'You\'re offline :(',
      name: 'youreOffline',
      desc: '',
      args: [],
    );
  }

  /// `URL is empty!`
  String get urlIsEmpty {
    return Intl.message(
      'URL is empty!',
      name: 'urlIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Invalid URL, please check again!`
  String get invalidUrlPleaseCheckAgain {
    return Intl.message(
      'Invalid URL, please check again!',
      name: 'invalidUrlPleaseCheckAgain',
      desc: '',
      args: [],
    );
  }

  /// `Not selected video!`
  String get notSelectedVideo {
    return Intl.message(
      'Not selected video!',
      name: 'notSelectedVideo',
      desc: '',
      args: [],
    );
  }

  /// `Track deleted from playlist!`
  String get trackDeletedFromPlaylist {
    return Intl.message(
      'Track deleted from playlist!',
      name: 'trackDeletedFromPlaylist',
      desc: '',
      args: [],
    );
  }

  /// `Track edited!`
  String get trackEdited {
    return Intl.message(
      'Track edited!',
      name: 'trackEdited',
      desc: '',
      args: [],
    );
  }

  /// `Track added to playlist!`
  String get trackAddedToPlaylist {
    return Intl.message(
      'Track added to playlist!',
      name: 'trackAddedToPlaylist',
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
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'vi'),
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
