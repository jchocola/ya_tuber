import 'package:flutter/material.dart';
import 'package:ya_tuber/widget/play_list_card.dart';

class Playlists extends StatelessWidget {
  const Playlists({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(15, (index) {
        return PlayListCard(isPlaying: true,isSetting: true,);
      }),
    );
  }
}
