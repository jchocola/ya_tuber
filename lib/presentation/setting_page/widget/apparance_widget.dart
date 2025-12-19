import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/app_setting_provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/widget/setting_title.dart';

class AppareanceWidget extends StatelessWidget {
  const AppareanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appSettingProvider_listen = context.watch<AppSettingProvider>();
    final appSettingProvider_read = context.read<AppSettingProvider>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppConstant.widgetPadding,
      children: [
        Text('Appearance'),
        SettingTitle(
          title: 'Theme',
          withSwitch: true,
          switchValue: appSettingProvider_listen.appThemeLight,
          onPressed: () async {
            await appSettingProvider_read.tooggleThemeValue();
          },
          subTitle: 'Use dark theme (coming soon)',
        ),
        SettingTitle(title: 'Language', onPressed: () {}),
      ],
    );
  }
}
