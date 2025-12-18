import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';

class SettingTitle extends StatelessWidget {
  const SettingTitle({super.key, this.withSwitch = false,this.title = 'Title',this.subTitle = 'SubTitle', this.onPressed});
  final String title;
  final String subTitle;
  final bool withSwitch;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.all(AppConstant.widgetPadding),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(title), Text(subTitle)],
              ),
            ),
            withSwitch ? Transform.scale(scale: 0.7, child: NeumorphicSwitch(value: true)) :SizedBox(),
          ],
        ),
      ),
    );
  }
}
