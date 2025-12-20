// ignore_for_file: constant_identifier_names, camel_case_types, non_constant_identifier_names

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

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
      return 'Welcome back, glad to see you :)';
    case APP_EXCEPTION.INTERNET_NOT_CONNECTED:
      return "You're offline :(";
    case APP_EXCEPTION.EMPTY_URL:
      return 'URL is empty!';
    case APP_EXCEPTION.INVALID_URL:
      return 'Invalid URL, please check again!';
    case APP_EXCEPTION.NOT_CURRENT_VIDEO:
      return 'Not selected video!';
    case APP_EXCEPTION.TRACK_DELETED:
      return 'Track deleted from playlist!';
    case APP_EXCEPTION.TRACK_EDITED:
      return 'Track edited!';
    case APP_EXCEPTION.TRACK_ADDED:
      return 'Track added to playlist!';
  }
}
