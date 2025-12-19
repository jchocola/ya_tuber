import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/theme/black_theme.dart';
import 'package:ya_tuber/core/theme/blue_theme.dart';
import 'package:ya_tuber/core/theme/brown_theme.dart';
import 'package:ya_tuber/core/theme/green_theme.dart';
import 'package:ya_tuber/core/theme/orange_theme.dart';
import 'package:ya_tuber/core/theme/pink_theme.dart';
import 'package:ya_tuber/core/theme/purple_theme.dart';
import 'package:ya_tuber/core/theme/red_theme.dart';
import 'package:ya_tuber/core/theme/white_theme.dart';
import 'package:ya_tuber/core/theme/yellow_theme.dart';
import 'package:ya_tuber/main.dart';

List<String> THEME_LIST = ['WHITE', 'BLUE', 'PINK','ORANGE','PURPLE', 'GREEN','YELLOW','BROWN','RED'];
List<NeumorphicThemeData> THEME_LIST_DATA = [whiteTheme, blueTheme, pinkTheme,orangeTheme,purpleTheme,greenTheme,yellowTheme,brownTheme,redTheme];

int getNextThemeValueIndex({required String currentValue}) {
  if (!THEME_LIST.contains(currentValue)) {
    logger.e('Current theme value : $currentValue');
    return 0;
  } else {
    final index = THEME_LIST.indexOf(currentValue);

    return ((index + 1) % THEME_LIST.length) ;
  }
}
