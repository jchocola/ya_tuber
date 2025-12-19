import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

const orangeTheme = NeumorphicThemeData(
  /// Основной фон
  baseColor: Color(0xFFF6EFE9),

  /// Акцент (ползунки, активные элементы)
  accentColor: Color(0xFFFFC7A3),

  /// Variant (карточки, кнопки)
  variantColor: Color(0xFFF1E4DA),

  /// Иконки
  iconTheme: IconThemeData(
    size: 20,
    color: Color(0xFF8C6A54),
  ),

  /// Текст
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: Color(0xFF7A5A45),
    ),
    bodySmall: TextStyle(
      color: Color(0xFF9C7A63),
    ),
    titleMedium: TextStyle(
      color: Color(0xFF6B4E3C),
      fontWeight: FontWeight.w600,
    ),
  ),
);
