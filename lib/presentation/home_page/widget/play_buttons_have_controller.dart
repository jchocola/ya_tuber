import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';
import 'package:ya_tuber/core/utils/convert_sec_to_correct_format.dart';
import 'package:ya_tuber/presentation/home_page/provider/home_page_provider.dart';
import 'package:ya_tuber/presentation/home_page/widget/playlist_widget.dart';
import 'package:ya_tuber/presentation/home_page/widget/volume_widget.dart';
import 'package:ya_tuber/widget/custom_circle_button.dart';
import 'package:ya_tuber/widget/custom_neumo_slider.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PlayButtons_when_have_controller extends StatelessWidget {
  const PlayButtons_when_have_controller({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageProvider_read = context.read<HomePageProvider>();
    final homePageProvider_listen = context.watch<HomePageProvider>();
    return YoutubePlayerControllerProvider(
      controller: homePageProvider_listen.youtubePlayerController!,
      child: Builder(
        builder: (context) => Column(
          spacing: AppConstant.widgetPadding,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomCircleButton(
                  onPressed: () {},
                  icon: AppIcon.skipBackdIcon,
                ),

                ///
                /// PLAY / PAUSE BUTTON
                ///
                YoutubeValueBuilder(
                  controller: homePageProvider_listen.youtubePlayerController,
                  builder: (context, value) => CustomCircleButton(
                    onPressed: () {
                      value.playerState == PlayerState.playing
                          ? homePageProvider_read.pauseVideo()
                          : homePageProvider_read.playVideo();
                    },
                    icon: value.playerState == PlayerState.playing
                        ? AppIcon.pauseIcon
                        : AppIcon.playIcon,
                  ),
                ),

                ///
                ///
                ///
                CustomCircleButton(
                  onPressed: () async {},
                  icon: AppIcon.skipForwardIcon,
                ),
              ],
            ),


            ///
            /// PLAY SLIDER 
            ///
            CustomNeumoSlider(
              minValue: 0,
              maxValue:
                  homePageProvider_read.video?.duration?.inSeconds.toDouble() ??
                  100,
              currentValue: homePageProvider_listen.currentTime.toDouble(),
              onChanged: (value) async {
                await homePageProvider_read.seekTo(value: value);
              },

              ///
              /// CURRENT TIME AND TOTAL DURATION
              ///
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  converSecToCorrectFromat(homePageProvider_listen.currentTime),
                ),
                Text(
                  converSecToCorrectFromat(
                    homePageProvider_read.video?.duration!.inSeconds,
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///
                /// MUTE ON/OFF
                ///
                CustomCircleButton(
                  onPressed: () async {
                    homePageProvider_read.isMute
                        ? await homePageProvider_read.unMute()
                        : await homePageProvider_read.setMute();
                  },
                  icon: homePageProvider_listen.isMute == true
                      ? AppIcon.volumeOff
                      : AppIcon.volumeOn2,
                ),

                CustomCircleButton(onPressed: () {}, icon: AppIcon.repeatIcon),


                  /// Play back rate
                  //TODO: PLAYBACK LOGIC
                 CustomCircleButton(onPressed: () {}, icon: AppIcon.speedIcon),


                CustomCircleButton(onPressed: () {}, icon: AppIcon.unsavedIcon),
              ],
            ),
            VolumeWidget(),
          ],
        ),
      ),
    );
  }
}
