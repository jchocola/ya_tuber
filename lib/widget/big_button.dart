import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';

class BigButton extends StatelessWidget {
  const BigButton({super.key, this.isNegative = false, this.title = 'Title', this.onPressed});
  final bool isNegative;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed:onPressed ,
      style: NeumorphicStyle(
        depth: isNegative
            ? AppConstant.neumoDepthNegative
            : AppConstant.neumoDepthPositive,
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal:  AppConstant.widgetPadding , vertical: AppConstant.widgetPadding/2),
        child: Text(title),
      ),
    );
  }
}
