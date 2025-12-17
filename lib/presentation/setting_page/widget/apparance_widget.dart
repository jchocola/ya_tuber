import 'package:flutter/material.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/widget/setting_title.dart';

class AppareanceWidget extends StatelessWidget {
  const AppareanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppConstant.widgetPadding,
      children: [
        Text('Appearance'),
        SettingTitle()
      ],
    );
  }
}
