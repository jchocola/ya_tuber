import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/widget/play_list_card.dart';

class PlaylistWidget extends StatelessWidget {
  const PlaylistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      child: Theme(
        data: ThemeData(dividerColor: Colors.transparent),
        child: Padding(
          padding: EdgeInsetsGeometry.all(AppConstant.widgetPadding),
          child: ExpansionTile(
            title: Text('PlayList'),
            childrenPadding: EdgeInsets.all(AppConstant.widgetPadding),
            children: [
              PlayListCard(),
              PlayListCard(isPlaying: true),
              PlayListCard(),
            ],
          ),
        ),
      ),
    );
  }
}
