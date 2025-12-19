import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

const brownTheme = NeumorphicThemeData(
  /// Основной фон
  baseColor: Color(0xFFF3EEE9),

  /// Акцент (ползунки, активные элементы)
  accentColor: Color(0xFFD8C4B0),

  /// Variant (карточки, кнопки)
  variantColor: Color(0xFFE8DED4),

  /// Иконки
  iconTheme: IconThemeData(
    size: 20,
    color: Color(0xFF7A5E4A),
  ),

  /// Текст
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: Color(0xFF6F5645),
    ),
    bodySmall: TextStyle(
      color: Color(0xFF8F7766),
    ),
    titleMedium: TextStyle(
      color: Color(0xFF5F4636),
      fontWeight: FontWeight.w600,
    ),
     titleLarge: TextStyle(
      color: Color(0xFF5F4636),
      fontWeight: FontWeight.w700,
    ),
  ),
);
