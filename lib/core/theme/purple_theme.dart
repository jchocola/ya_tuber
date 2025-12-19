import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

const purpleTheme = NeumorphicThemeData(
  /// Основной фон
  baseColor: Color(0xFFEEEAF6),

  /// Акцент (ползунки, активные элементы)
  accentColor: Color(0xFFC9BDF2),

  /// Variant (карточки, кнопки)
  variantColor: Color(0xFFE3DCF4),

  /// Иконки
  iconTheme: IconThemeData(
    size: 20,
    color: Color(0xFF6F5C9A),
  ),

  /// Текст
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: Color(0xFF6B5E85),
    ),
    bodySmall: TextStyle(
      color: Color(0xFF8C80A8),
    ),
    titleMedium: TextStyle(
      color: Color(0xFF5B4B7D),
      fontWeight: FontWeight.w600,
    ),
  ),
);
