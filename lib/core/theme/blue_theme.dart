import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

const blueTheme = NeumorphicThemeData(
  baseColor: Color(0xFFE9EEF6),
  accentColor: Color(0xFFF2F5FB),
  variantColor: Color(0xFFE1E7F0),

  iconTheme: IconThemeData(size: 20),

  textTheme: TextTheme(
    /// Основной текст
    bodyMedium: TextStyle(
      color: Color(0xFF5A6B80),
      fontSize: 14,
      height: 1.4,
    ),

    /// Вторичный текст / подсказки
    bodySmall: TextStyle(
      color: Color(0xFF8A99AD),
      fontSize: 12,
    ),

    /// Заголовки карточек
    titleMedium: TextStyle(
      color: Color(0xFF44556A),
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),

    /// Крупные заголовки
    titleLarge: TextStyle(
      color: Color(0xFF35465D),
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),

    /// Кнопки / CTA
    labelLarge: TextStyle(
      color: Color(0xFF50627A),
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
  ),
);
