import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';

class CustomNeumoIcon extends StatelessWidget {
  const CustomNeumoIcon({super.key, this.iconData = Icons.abc_rounded});
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        //color: Colors.amber,
        depth: AppConstant.neumoDepthPositive,
      ),
      child: Padding(
        padding:  EdgeInsets.all(AppConstant.widgetPadding/2),
        child: Icon(iconData),
      ),
    );
  }
}
