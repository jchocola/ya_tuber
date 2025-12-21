import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/app_setting_provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/generated/l10n.dart';
import 'package:ya_tuber/widget/setting_title.dart';

class PlaybackWidget extends StatelessWidget {
  const PlaybackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appSettingProvider_listen = context.watch<AppSettingProvider>();
    final appSettingProvider_read = context.read<AppSettingProvider>();
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppConstant.widgetPadding,
      children: [
        Text(S.of(context).playback , style: theme.textTheme.titleMedium,),
        SettingTitle(
          title: S.of(context).autoPlayNext,
          subTitle: S.of(context).automaticallyPlayNextTrackInPlaylist,
          withSwitch: true,
          switchValue: appSettingProvider_listen.autoPlay,
          onPressed: () async {
            await appSettingProvider_read.tooggleAutoPlayValue();
          },
        ),

        SettingTitle(
          title: S.of(context).backgroundPlay,
          subTitle: S.of(context).automaticallyPlayOnBackground,
          withSwitch: true,
          switchValue: appSettingProvider_listen.backgroundPlay,
          onPressed: () async {
            await appSettingProvider_read.tooggleBGPlayValue();
          },
        ),
      ],
    );
  }
}
