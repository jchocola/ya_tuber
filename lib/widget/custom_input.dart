import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/app_setting_provider.dart';
import 'package:ya_tuber/core/app_constant.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    this.hintText = 'Hint Text',
    this.onChanged,
    this.controller,
  });
  final String hintText;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    final appSettingProvider_listen = context.watch<AppSettingProvider>();
    final theme = Theme.of(context);
    return Neumorphic(
      style: NeumorphicStyle(depth: AppConstant.neumoDepthNegative),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstant.widgetPadding),
        child: Theme(
          data: ThemeData(
            textSelectionTheme: TextSelectionThemeData(
              selectionColor:
                  appSettingProvider_listen.currentAppTheme.accentColor,
              selectionHandleColor:
                  appSettingProvider_listen.currentAppTheme.accentColor,
            ),
          ),
          child: TextField(
            onChanged: onChanged,
            controller: controller,
            cursorColor: appSettingProvider_listen.currentAppTheme.accentColor,
            mouseCursor: MouseCursor.defer,
            style:  theme.textTheme.titleMedium,
            decoration: InputDecoration(
            
              hintStyle: theme.textTheme.bodySmall,
              hoverColor: appSettingProvider_listen.currentAppTheme.accentColor,
              hintText: hintText,
              border: UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ),
    );
  }
}
