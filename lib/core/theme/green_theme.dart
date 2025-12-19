import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/theme/theme_list.dart';

final greenTheme = NeumorphicThemeData(
  /// Основной фон
  baseColor: Color(0xFFEFF4F1),

  /// Акцент (ползунки, активные элементы)
  accentColor: Color(0xFFB7D8C4),

  /// Variant (карточки, кнопки)
  variantColor: Color(0xFFE2ECE6),

  /// Иконки
  iconTheme: IconThemeData(
    size: 20,
    color: Color(0xFF5F7F6C),
  ),

  /// Текст
  textTheme: TextTheme(
    bodyMedium:  appTextStyle.copyWith(
      color: Color(0xFF5E7567),
    ),
    bodySmall:  appTextStyle.copyWith(
      color: Color(0xFF7F9A8A),
    ),
    titleMedium:  appTextStyle.copyWith(
      color: Color(0xFF4F6659),
      fontWeight: FontWeight.w600,
    ),
     titleLarge:  appTextStyle.copyWith(
      color: Color(0xFF4F6659),
      fontWeight: FontWeight.w600,
    ),
  ),
);
