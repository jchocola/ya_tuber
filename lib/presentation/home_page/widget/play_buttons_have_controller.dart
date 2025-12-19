import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';
import 'package:ya_tuber/core/custom_snackbar.dart';
import 'package:ya_tuber/core/utils/convert_sec_to_correct_format.dart';
import 'package:ya_tuber/core/utils/smart_videoId_selector.dart';
import 'package:ya_tuber/domain/entity/track_entity.dart';
import 'package:ya_tuber/main.dart';
import 'package:ya_tuber/presentation/home_page/provider/home_page_provider.dart';
import 'package:ya_tuber/presentation/home_page/widget/playlist_widget.dart';
import 'package:ya_tuber/presentation/home_page/widget/volume_widget.dart';
import 'package:ya_tuber/presentation/playlist_page/page/confirm_delete_page.dart';
import 'package:ya_tuber/presentation/playlist_page/provider/playlist_page_provider.dart';
import 'package:ya_tuber/widget/custom_circle_button.dart';
import 'package:ya_tuber/widget/custom_neumo_slider.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PlayButtons_when_have_controller extends StatelessWidget {
  const PlayButtons_when_have_controller({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageProvider_read = context.read<HomePageProvider>();
    final homePageProvider_listen = context.watch<HomePageProvider>();

    final playlistProvider_listen = context.watch<PlaylistPageProvider>();
    final playlistProvider_read = context.read<PlaylistPageProvider>();
    final theme = Theme.of(context);
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
                  onPressed: () async {
                    try {
                      final nextVideoUrl = SmartVideoIdSelector(
                        playListIds: playlistProvider_read.listTracks
                            .map((e) => e.videoId)
                            .toList(),
                        isNext: false,
                        currentVideoId: homePageProvider_read.currentVideoId,
                      );

                      await homePageProvider_read.playVideoById(
                        videoId: nextVideoUrl,
                      );
                    } catch (e) {
                      showCustomSnackbar(context, content: e.toString());
                    }
                  },
                  icon: AppIcon.skipBackdIcon,
                ),

                ///
                /// PLAY / PAUSE BUTTON
                ///
                YoutubeValueBuilder(
                  controller: homePageProvider_listen.youtubePlayerController,
                  builder: (context, value) => CustomCircleButton(
                    isNegative: value.playerState == PlayerState.playing
                        ? true
                        : false,
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
                  onPressed: () async {
                    try {
                      final nextVideoUrl = SmartVideoIdSelector(
                        playListIds: playlistProvider_read.listTracks
                            .map((e) => e.videoId)
                            .toList(),
                        isNext: true,
                        currentVideoId: homePageProvider_read.currentVideoId,
                      );

                      await homePageProvider_read.playVideoById(
                        videoId: nextVideoUrl,
                      );
                    } catch (e) {
                      showCustomSnackbar(context, content: e.toString());
                    }
                  },
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
                  isNegative: homePageProvider_listen.isMute == true
                      ? true
                      : false,
                  onPressed: () async {
                    homePageProvider_read.isMute
                        ? await homePageProvider_read.unMute()
                        : await homePageProvider_read.setMute();
                  },
                  icon: homePageProvider_listen.isMute == true
                      ? AppIcon.volumeOff
                      : AppIcon.volumeOn2,
                ),

                CustomCircleButton(
                  isNegative: homePageProvider_listen.isLoop,
                  onPressed: () async {
                    await homePageProvider_read.toogleLoop();
                  },
                  icon: AppIcon.repeatIcon,
                ),

                /// Play back rate
                //TODO: PLAYBACK LOGIC
                CupertinoContextMenu(
                  actions: List.generate(
                    homePageProvider_listen.playBackRateList?.length ?? 1,
                    (index) {
                      final value =
                          homePageProvider_listen.playBackRateList?[index];
                      return CupertinoContextMenuAction(
                        onPressed: () async {
                          Navigator.pop(context);
                          await homePageProvider_read.setPlaybackRate(
                            value: value!,
                          );
                        },
                        isDefaultAction:
                            value ==
                            homePageProvider_listen.currentPlayBackRate,
                        child: Text('$value', style: value ==  homePageProvider_listen.currentPlayBackRate ? theme.textTheme.titleMedium : theme.textTheme.bodyMedium),
                      );
                    },
                  ),
                  child: CustomCircleButton(
                    onPressed: () {
                      showCustomSnackbar(
                        context,
                        content: 'Please long tap to set value',
                      );
                    },
                    icon: AppIcon.speedIcon,
                  ),
                ),

                CustomCircleButton(
                  onPressed: () async {
                    if (homePageProvider_read.video == null) {
                      showCustomSnackbar(context, content: 'Erorrrrrrrr');
                      return;
                    }

                    // generate track
                    final track = TrackEntity(
                      videoId: homePageProvider_read.currentVideoId,
                      title: homePageProvider_read.video?.title ?? '',
                      subtitle: homePageProvider_read.video?.author ?? '',
                      thumbnail:
                          homePageProvider_read
                              .video
                              ?.thumbnails
                              .mediumResUrl ??
                          '',
                    );
                    logger.f(track.toString());

                    final alreadyInPlayList = playlistProvider_read.listTracks
                        .any((e) => e.videoId == track.videoId);

                    if (alreadyInPlayList) {
                      // remove from playlist

                      showDialog(
                        context: context,
                        builder: (context) => ConfirmDeletePage(track: track),
                      );
                    } else {
                      // save track
                      await playlistProvider_read.saveTrack(track: track).then((
                        _,
                      ) {
                        showCustomSnackbar(
                          context,
                          content: 'Added to playlist',
                        );
                      });
                    }
                  },
                  icon: AppIcon.unsavedIcon,
                  isNegative: playlistProvider_listen.listTracks.any(
                    (e) => e.videoId == homePageProvider_listen.currentVideoId,
                  ),
                ),
              ],
            ),
            VolumeWidget(),
          ],
        ),
      ),
    );
  }
}
