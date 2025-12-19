abstract class AppSettingRepo {
  Future<void> init();

  Future<void> toogleAutoPlayParameter();
  Future<bool> getAutoPlayParameter();

  Future<void> toogleThemeParameter();
  Future<bool> getThemeParameter();

   Future<void> toogleBackgroundPlayParameter();
   Future<bool> getBackgroundPlayParameter();

  Future<void> changeAppLangCode({required String langCode});
  Future<String> getAppLangCode();
}
