import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/theme/theme_list.dart';
import 'package:ya_tuber/core/theme/white_theme.dart';
import 'package:ya_tuber/domain/repo/app_setting_repo.dart';
import 'package:ya_tuber/main.dart';

class AppSettingProvider extends ChangeNotifier {
  //REPO
  final AppSettingRepo settingRepo;

  // VARIABLES
  bool autoPlay = true;
  bool backgroundPlay = true;
  String langCode = 'en';
  String appTheme = THEME_LIST[0];

  NeumorphicThemeData currentAppTheme = whiteTheme;

  // contructor
  AppSettingProvider({required this.settingRepo});

  Future<void> init() async {
    autoPlay = await settingRepo.getAutoPlayParameter();
    backgroundPlay = await settingRepo.getBackgroundPlayParameter();
    langCode = await settingRepo.getAppLangCode();
    appTheme = await settingRepo.getThemeParameter();

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
    final newThemeIndex = getNextThemeValueIndex(currentValue: appTheme);
    logger.i(newThemeIndex);
    currentAppTheme = THEME_LIST_DATA[newThemeIndex];
    appTheme = THEME_LIST[newThemeIndex];
    notifyListeners();
    await settingRepo.toogleThemeParameter(value: THEME_LIST[newThemeIndex]);
  }

  Future<void> changeAppLangCode({required String langCode}) async {
    this.langCode = langCode;
    notifyListeners();
    await settingRepo.changeAppLangCode(langCode: langCode);
  }
}
