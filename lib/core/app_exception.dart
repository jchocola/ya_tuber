// ignore_for_file: constant_identifier_names, camel_case_types, non_constant_identifier_names

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/generated/l10n.dart';

enum APP_EXCEPTION {
  INTERNET_CONNECTED,
  INTERNET_NOT_CONNECTED,
  EMPTY_URL,
  INVALID_URL,
  NOT_CURRENT_VIDEO,
  TRACK_DELETED,
  TRACK_EDITED,
  TRACK_ADDED,
}

String AppExceptionConverter(
  BuildContext context, {
  required APP_EXCEPTION exception,
}) {
  switch (exception) {
    case APP_EXCEPTION.INTERNET_CONNECTED:
      return S.of(context).welcomeBackGladToSeeYou;
    case APP_EXCEPTION.INTERNET_NOT_CONNECTED:
      return S.of(context).youreOffline;
    case APP_EXCEPTION.EMPTY_URL:
      return S.of(context).urlIsEmpty;
    case APP_EXCEPTION.INVALID_URL:
      return S.of(context).invalidUrlPleaseCheckAgain;
    case APP_EXCEPTION.NOT_CURRENT_VIDEO:
      return S.of(context).notSelectedVideo;
    case APP_EXCEPTION.TRACK_DELETED:
      return S.of(context).trackDeletedFromPlaylist;
    case APP_EXCEPTION.TRACK_EDITED:
      return S.of(context).trackEdited;
    case APP_EXCEPTION.TRACK_ADDED:
      return S.of(context).trackAddedToPlaylist;
  }
}
