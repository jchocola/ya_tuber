import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/theme/theme_list.dart';

final purpleTheme = NeumorphicThemeData(
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
    bodyMedium:  appTextStyle.copyWith(
      color: Color(0xFF6B5E85),
    ),
    bodySmall:  appTextStyle.copyWith(
      color: Color(0xFF8C80A8),
    ),
    titleMedium:  appTextStyle.copyWith(
      color: Color(0xFF5B4B7D),
      fontWeight: FontWeight.w600,
    ),
     titleLarge:  appTextStyle.copyWith(
      color: Color(0xFF6B4E3C),
      fontWeight: FontWeight.w700,
    ),
  ),
);
