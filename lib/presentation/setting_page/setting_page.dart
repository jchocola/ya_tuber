import 'package:flutter/material.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/presentation/setting_page/widget/about_widget.dart';
import 'package:ya_tuber/presentation/setting_page/widget/apparance_widget.dart';
import 'package:ya_tuber/presentation/setting_page/widget/audio_quality_widget.dart';
import 'package:ya_tuber/presentation/setting_page/widget/playback_widget.dart';
import 'package:ya_tuber/presentation/setting_page/widget/setting_page_appbar.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: SettingPageAppbar(), body: buildBody(context),);
  }

  Widget buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(AppConstant.appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppConstant.appPadding,
        children: [
         // AudioQualityWidget(),
          PlaybackWidget(),
          AppareanceWidget(),
          AboutWidget()
        ],
      ));
  }
}
