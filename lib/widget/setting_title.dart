import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';

class SettingTitle extends StatelessWidget {
  const SettingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      child: Padding(
        padding:  EdgeInsets.all(AppConstant.widgetPadding),
        child: Row(
          children: [
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('Title'), Text('Subtitle')])),
            Transform.scale(scale: 0.7, child: NeumorphicSwitch(
              
              value: true,
            )),
          ],
        ),
      ),
    );
  }
}
