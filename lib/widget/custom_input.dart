import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/theme/light_app_color.dart';
import 'package:ya_tuber/widget/custom_circle_button.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({super.key, this.hintText = 'Hint Text' , this.onChanged, this.controller});
  final String hintText;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(depth: AppConstant.neumoDepthNegative),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstant.widgetPadding),
        child: Theme(
          data: ThemeData(
            textSelectionTheme: TextSelectionThemeData(
              selectionColor: LightAppColor.accentColor,
              selectionHandleColor: LightAppColor.accentColor
            )
          ),
          child: TextField(
            onChanged: onChanged,
            controller: controller, 
            cursorColor: LightAppColor.accentColor,
            mouseCursor: MouseCursor.defer,
            decoration: InputDecoration(
              hoverColor:LightAppColor.accentColor ,
              hintText: hintText,
              border: UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ),
    );
  }
}
