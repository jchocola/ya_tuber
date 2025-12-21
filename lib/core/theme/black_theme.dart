import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/theme/theme_list.dart';

final blackTheme = NeumorphicThemeData(
  /// Основной фон (soft black / graphite)
  baseColor: Color(0xFF1C1C1E),

  /// Акцент (ползунки, активные элементы)
  accentColor: Color(0xFF2A2A2D),

  /// Variant (поверхности, карточки)
  variantColor: Color(0xFF232326),

  /// Иконки
  iconTheme: IconThemeData(
    size: 20,
    color: Color(0xFFB0B0B2),
  ),

  /// Текст
  textTheme: TextTheme(
    bodyMedium: appTextStyle.copyWith(
      color: Color(0xFFB8B8BA),
    ),
    bodySmall: appTextStyle.copyWith(
      color: Color(0xFF8E8E91),
    ),
    titleMedium: appTextStyle.copyWith(
      color: Color(0xFFE0E0E2),
      fontWeight: FontWeight.w600,
    ),
  ),
);
