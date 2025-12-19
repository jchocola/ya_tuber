import 'package:shared_preferences/shared_preferences.dart';
import 'package:ya_tuber/domain/repo/app_setting_repo.dart';
import 'package:ya_tuber/main.dart';

class SharedPrefAppSettingImpl implements AppSettingRepo {
  late SharedPreferences prefs;

  // KEYS
  static const AUTO_PLAY = 'AUTO_PLAY';
  static const BACKGROUND_PLAY = 'BACKGROUND_PLAY';
  static const APP_THEME_LIGHT = 'APP_THEME_LIGHT';
  static const LANG_CODE = 'LANG_CODE';

  @override
  Future<void> changeAppLangCode({required String langCode}) async {
    await prefs.setString(LANG_CODE, langCode);
    logger.i('Changed app lang code');
  }

  @override
  Future<String> getAppLangCode() async {
    return prefs.getString(LANG_CODE) ?? 'en';
  }

  @override
  Future<bool> getAutoPlayParameter() async {
    return prefs.getBool(AUTO_PLAY) ?? true;
  }

  @override
  Future<bool> getThemeParameter() async {
    return prefs.getBool(APP_THEME_LIGHT) ?? true;
  }

  @override
  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
    logger.i('Shared prefs inited');
  }

  @override
  Future<void> toogleAutoPlayParameter() async {
    final currentValue = await getAutoPlayParameter();
    await prefs.setBool(AUTO_PLAY, !currentValue);
    logger.i('Changed auto play ${!currentValue}');
  }

  @override
  Future<void> toogleThemeParameter() async {
    final currentValue = await getThemeParameter();
    await prefs.setBool(APP_THEME_LIGHT, !currentValue);
    logger.i('Changed app theme ${!currentValue}');
  }
}
