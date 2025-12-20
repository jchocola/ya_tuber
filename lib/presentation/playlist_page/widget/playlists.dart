import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/generated/l10n.dart';
import 'package:ya_tuber/presentation/playlist_page/provider/playlist_page_provider.dart';
import 'package:ya_tuber/widget/play_list_card.dart';

class Playlists extends StatelessWidget {
  const Playlists({super.key});

  @override
  Widget build(BuildContext context) {
    final playlistPageProvider_listen = context.watch<PlaylistPageProvider>();

    return playlistPageProvider_listen.listTracks.isNotEmpty
        ? Column(
            children: List.generate(
              playlistPageProvider_listen.listTracks.length,
              (index) {
                final track = playlistPageProvider_listen.listTracks[index];
                return PlayListCard(isPlaying: false, isSetting: true, track: track,);
              },
            ),
          )
        : Center(child: Text(S.of(context).empty));
  }
}
