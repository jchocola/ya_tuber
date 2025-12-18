import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({super.key, this.icon = Icons.abc, this.onPressed, this.boxShape = const NeumorphicBoxShape.circle(), this.isNegative = false});
  final IconData icon;
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
      child: Icon(icon),
    );
  }
}
