import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/theme/blue_theme.dart';
import 'package:ya_tuber/core/theme/white_theme.dart';
import 'package:ya_tuber/main.dart';

List<String> THEME_LIST = ['WHITE', 'BLUE'];
List<NeumorphicThemeData> THEME_LIST_DATA = [whiteTheme, blueTheme];

int getNextThemeValueIndex({required String currentValue}) {
  if (!THEME_LIST.contains(currentValue)) {
    logger.e('Current theme value : $currentValue');
    return 0;
  } else {
    final index = THEME_LIST.indexOf(currentValue);

    return ((index + 1) % THEME_LIST.length) ;
  }
}
