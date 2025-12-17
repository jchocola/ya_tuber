import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';

class CustomNeumoIcon extends StatelessWidget {
  const CustomNeumoIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return NeumorphicIcon(
      Icons.abc_outlined,
      curve: AppConstant.neumorphicCurve,
      size: 30,
      style: NeumorphicStyle(
        color: Colors.amber,
        depth: AppConstant.neumoDepthPositive,
      ),
    );
  }
}
