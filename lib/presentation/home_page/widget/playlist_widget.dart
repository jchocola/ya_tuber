import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/presentation/home_page/provider/home_page_provider.dart';
import 'package:ya_tuber/presentation/playlist_page/provider/playlist_page_provider.dart';
import 'package:ya_tuber/widget/play_list_card.dart';

class PlaylistWidget extends StatelessWidget {
  const PlaylistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final playListProvider_listen = context.watch<PlaylistPageProvider>();
    final homePageProvider_listen = context.watch<HomePageProvider>();
    final homePageProvider_read = context.read<HomePageProvider>();
    return Neumorphic(
      child: Theme(
        data: ThemeData(dividerColor: Colors.transparent),
        child: Padding(
          padding: EdgeInsetsGeometry.all(AppConstant.widgetPadding),
          child: ExpansionTile(
            title: Text('PlayList'),
            childrenPadding: EdgeInsets.all(AppConstant.widgetPadding),
            children: playListProvider_listen.listTracks.isNotEmpty
                ? List.generate(playListProvider_listen.listTracks.length, (
                    index,
                  ) {
                    final track = playListProvider_listen.listTracks[index];
                    return PlayListCard(
                      isSetting: false,
                      track: track,
                      isPlaying:
                          homePageProvider_listen.currentVideoId ==
                          track.videoId,
                      onTap: () async {
                        ///
                        /// IF CURRENT PLAY VIDEO , THEN DONT NOPTHING
                        ///
                        if (homePageProvider_read.currentVideoId ==
                            track.videoId) {
                          return;
                        } else {
                           await homePageProvider_read.playTrackFromPlayList(
                          track: track,
                        );
                        }
                       
                      },
                    );
                  })
                : [Text('Empty')],
          ),
        ),
      ),
    );
  }
}
