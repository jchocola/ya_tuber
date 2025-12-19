import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/theme/theme_list.dart';

 final pinkTheme = NeumorphicThemeData(
  /// Основной фон
  baseColor: Color(0xFFF1ECF3),

  /// Акценты (ползунки, активные элементы)
  accentColor: Color(0xFFE6D3E3),

  /// Variant (поверхности, карточки)
  variantColor: Color(0xFFEADFE9),

  /// Иконки
  iconTheme: IconThemeData(
    size: 20,
    color: Color(0xFF8E7A8C),
  ),

  /// Текст
  textTheme: TextTheme(
    bodyMedium: appTextStyle.copyWith (
      color: Color(0xFF7A6A78),
    ),
    bodySmall: appTextStyle.copyWith(
      color: Color(0xFF9B8A98),
    ),
    titleMedium: appTextStyle.copyWith(
      color: Color(0xFF6A5A68),
      fontWeight: FontWeight.w600,
    ),
     titleLarge: appTextStyle.copyWith(
      color: Color(0xFF6A5A68),
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
  ),
);
