import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/theme/theme_list.dart';

final orangeTheme = NeumorphicThemeData(
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
    bodyMedium:  appTextStyle.copyWith(
      color: Color(0xFF7A5A45),
    ),
    bodySmall:  appTextStyle.copyWith(
      color: Color(0xFF9C7A63),
    ),
    titleMedium:  appTextStyle.copyWith(
      color: Color(0xFF6B4E3C),
      fontWeight: FontWeight.w600,
    ),
      titleLarge:  appTextStyle.copyWith(
      color: Color(0xFF6B4E3C),
      fontWeight: FontWeight.w700,
    ),
  ),
);
