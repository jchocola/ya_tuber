import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/theme/theme_list.dart';

final whiteTheme = NeumorphicThemeData(
  baseColor: Color(0xffeff0f1),
  accentColor: Colors.grey,
  variantColor:  Colors.white70,

  iconTheme: IconThemeData(size: 20),

  textTheme: TextTheme(
    /// Основной текст
    bodyMedium:  appTextStyle.copyWith(
      color: Color(0xFF5F5F5F),
      fontSize: 14,
      height: 1.4,
    ),

    /// Вторичный / подсказки
    bodySmall:  appTextStyle.copyWith(
      color: Color(0xFF8A8A8A),
      fontSize: 12,
    ),

    /// Заголовки карточек
    titleMedium:  appTextStyle.copyWith(
      color: Color(0xFF4A4A4A),
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),

    /// Крупные заголовки
    titleLarge:  appTextStyle.copyWith(
      color: Color(0xFF3A3A3A),
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),

    /// Кнопки
    labelLarge:  appTextStyle.copyWith(
      color: Color(0xFF5A5A5A),
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),)
);
