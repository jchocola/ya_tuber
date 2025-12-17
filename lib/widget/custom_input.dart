import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/light_app_color.dart';
import 'package:ya_tuber/widget/custom_circle_button.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({super.key, this.hintText = 'Hint Text' , this.onChanged});
  final String hintText;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(depth: AppConstant.neumoDepthNegative),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstant.widgetPadding),
        child: TextField(
          onChanged: onChanged,
          cursorColor: LightAppColor.accentColor,
          decoration: InputDecoration(
            hintText: hintText,
            border: UnderlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
