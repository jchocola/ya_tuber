import 'package:flutter/material.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/widget/setting_title.dart';

class PlaybackWidget extends StatelessWidget {
  const PlaybackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppConstant.widgetPadding,
      children: [
        Text('Playback'),
        SettingTitle()
      ],
    );
  }
}
