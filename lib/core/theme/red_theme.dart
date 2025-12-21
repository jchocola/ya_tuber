import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/theme/theme_list.dart';

final redTheme = NeumorphicThemeData(
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
    bodyMedium:  appTextStyle.copyWith(
      color: Color(0xFF7A4343),
    ),
    bodySmall:  appTextStyle.copyWith(
      color: Color(0xFF9A6464),
    ),
    titleMedium:  appTextStyle.copyWith(
      color: Color(0xFF6A3434),
      fontWeight: FontWeight.w600,
    ),
     titleLarge:  appTextStyle.copyWith(
      color: Color(0xFF6A3434),
      fontWeight: FontWeight.w700,
    ),
  ),
);
