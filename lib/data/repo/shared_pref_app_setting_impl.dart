import 'package:shared_preferences/shared_preferences.dart';
import 'package:ya_tuber/domain/repo/app_setting_repo.dart';
import 'package:ya_tuber/main.dart';

class SharedPrefAppSettingImpl implements AppSettingRepo {
  late SharedPreferences prefs;

  // KEYS
  static const AUTO_PLAY = 'AUTO_PLAY';
  static const BACKGROUND_PLAY = 'BACKGROUND_PLAY';
  static const APP_THEME = 'APP_THEME';
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
  Future<String> getThemeParameter() async {
    return prefs.getString(APP_THEME) ?? APP_THEME[0];
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
  Future<void> toogleThemeParameter({required String value}) async {
   
    await prefs.setString(APP_THEME, value);
    logger.i('Changed app theme ${value}');
  }
  
  @override
  Future<bool> getBackgroundPlayParameter() async{
     return prefs.getBool(BACKGROUND_PLAY) ?? true; 
  }
  
  @override
  Future<void> toogleBackgroundPlayParameter() async{
    final currentValue = await getBackgroundPlayParameter();
    await prefs.setBool(BACKGROUND_PLAY, !currentValue);
    logger.i('Changed nackground play ${!currentValue}');
  }
}
