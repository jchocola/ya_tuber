import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/widget/setting_title.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppConstant.widgetPadding,
      children: [
        Text('About'),
        Neumorphic(
          child: Padding(
            padding: EdgeInsets.all(AppConstant.widgetPadding),
            child: Column(
              spacing: AppConstant.widgetPadding,
              children: [
            _customTextWidget(context),
            _customTextWidget(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _customTextWidget(BuildContext context, {String title = 'Title', String value = 'Value'}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value),
      ],
    );
  }
}
