import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';

class CustomNeumoText extends StatelessWidget {
  const CustomNeumoText({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return NeumorphicText(
      text,
      style: NeumorphicStyle(
        depth: AppConstant.neumoDepthPositive, //customize depth here
        color: Colors.white, //customize color here
      ),
      textStyle: NeumorphicTextStyle(
        fontSize: 18, //customize size here
        // AND others usual text style properties (fontFamily, fontWeight, ...)
      ),
    );
  }
}
