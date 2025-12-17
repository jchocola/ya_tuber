import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';
import 'package:ya_tuber/presentation/home_page/provider/home_page_provider.dart';
import 'package:ya_tuber/presentation/home_page/widget/playlist_widget.dart';
import 'package:ya_tuber/presentation/home_page/widget/volume_widget.dart';
import 'package:ya_tuber/widget/custom_circle_button.dart';
import 'package:ya_tuber/widget/custom_neumo_slider.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PlayButtons_when_not_controller extends StatelessWidget {
  const PlayButtons_when_not_controller({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageProvider_read = context.read<HomePageProvider>();
    final homePageProvider_listen = context.watch<HomePageProvider>();
    return Column(
      spacing: AppConstant.widgetPadding,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomCircleButton(
              onPressed: () {
                homePageProvider_read.playVideo();
              },
              icon: AppIcon.skipBackdIcon,
            ),

            ///
            /// PLAY / PAUSE BUTTON
            ///
            CustomCircleButton(onPressed: () {}, icon: AppIcon.playIcon),

            CustomCircleButton(onPressed: () {}, icon: AppIcon.skipForwardIcon),
          ],
        ),

        CustomNeumoSlider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('2:34rr'), Text('10:34')],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCircleButton(onPressed: () {}, icon: AppIcon.volumeOff),
            CustomCircleButton(onPressed: () {}, icon: AppIcon.repeatIcon),
            CustomCircleButton(onPressed: () {}, icon: AppIcon.unsavedIcon),
          ],
        ),
        VolumeWidget(),
      ],
    );
  }
}
