import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

const redTheme = NeumorphicThemeData(
  /// Основной фон (rose / soft red)
  baseColor: Color(0xFFF4ECEC),

  /// Акцент (ползунки, активные элементы)
  accentColor: Color(0xFFE3B3B3),

  /// Variant (карточки, кнопки)
  variantColor: Color(0xFFEADADA),

  /// Иконки
  iconTheme: IconThemeData(
    size: 20,
    color: Color(0xFF8A4A4A),
  ),

  /// Текст
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: Color(0xFF7A4343),
    ),
    bodySmall: TextStyle(
      color: Color(0xFF9A6464),
    ),
    titleMedium: TextStyle(
      color: Color(0xFF6A3434),
      fontWeight: FontWeight.w600,
    ),
     titleLarge: TextStyle(
      color: Color(0xFF6A3434),
      fontWeight: FontWeight.w700,
    ),
  ),
);
