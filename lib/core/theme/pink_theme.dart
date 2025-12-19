import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

const pinkTheme = NeumorphicThemeData(
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
    bodyMedium: TextStyle(
      color: Color(0xFF7A6A78),
    ),
    bodySmall: TextStyle(
      color: Color(0xFF9B8A98),
    ),
    titleMedium: TextStyle(
      color: Color(0xFF6A5A68),
      fontWeight: FontWeight.w600,
    ),
  ),
);
