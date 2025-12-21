import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.text = '', this.onPressed, this.boxShape = const NeumorphicBoxShape.circle(), this.isNegative = false});
  final String text;
  final void Function()? onPressed;
  final NeumorphicBoxShape boxShape;
  final  bool isNegative;
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      drawSurfaceAboveChild: false,
      onPressed: onPressed,
      curve: AppConstant.neumorphicCurve,
      style: NeumorphicStyle(
        depth: isNegative ? AppConstant.neumoDepthNegative : AppConstant.neumoDepthPositive,
        boxShape: boxShape,
        shape: AppConstant.neumorphicShape,
      ),
      child: Text(text),
    );
  }
}
