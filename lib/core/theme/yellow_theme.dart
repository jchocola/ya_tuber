import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/theme/theme_list.dart';

final yellowTheme = NeumorphicThemeData(
  /// Основной фон
  baseColor: Color(0xFFF8F4E8),

  /// Акцент (ползунки, активные элементы)
  accentColor: Color(0xFFFFE1A8),

  /// Variant (карточки, кнопки)
  variantColor: Color(0xFFF2EBD8),

  /// Иконки
  iconTheme: IconThemeData(
    size: 20,
    color: Color(0xFF8A7645),
  ),

  /// Текст
  textTheme: TextTheme(
    bodyMedium:  appTextStyle.copyWith(
      color: Color(0xFF7A683A),
    ),
    bodySmall:  appTextStyle.copyWith(
      color: Color(0xFF9A8756),
    ),
    titleMedium:  appTextStyle.copyWith(
      color: Color(0xFF6A5A2F),
      fontWeight: FontWeight.w600,
    ),
     titleLarge:  appTextStyle.copyWith(
      color: Color(0xFF6A5A2F),
      fontWeight: FontWeight.w700,
    ),
  ),
);
