import 'package:flutter/material.dart';
import 'package:ya_tuber/domain/repo/app_setting_repo.dart';

class AppSettingProvider extends ChangeNotifier {
  //REPO
  final AppSettingRepo settingRepo;

  // VARIABLES
  bool autoPlay = true;
  bool backgroundPlay = true;
  String langCode = 'en';
  bool appThemeLight = true;

  // contructor
  AppSettingProvider({required this.settingRepo});

  Future<void> init() async {
    autoPlay = await settingRepo.getAutoPlayParameter();
    backgroundPlay = await settingRepo.getBackgroundPlayParameter();
    langCode = await settingRepo.getAppLangCode();
    appThemeLight = await settingRepo.getThemeParameter();
    notifyListeners();
  }

  Future<void> tooggleAutoPlayValue() async {
    autoPlay = !autoPlay;
    notifyListeners();
    await settingRepo.toogleAutoPlayParameter();
  }

   Future<void> tooggleBGPlayValue() async {
    backgroundPlay = !backgroundPlay;
    notifyListeners();
    await settingRepo.toogleBackgroundPlayParameter();
  }

   Future<void> tooggleThemeValue() async {
    appThemeLight = !appThemeLight;
    notifyListeners();
    await settingRepo.toogleThemeParameter();
  }
}
