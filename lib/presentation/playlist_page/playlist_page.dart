import 'package:flutter/material.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/presentation/home_page/widget/playlist_widget.dart';
import 'package:ya_tuber/presentation/playlist_page/widget/playlist_page_appbar.dart';
import 'package:ya_tuber/presentation/playlist_page/widget/playlists.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PlaylistPageAppbar(),
      body: buildBody(context),
    );
  }


  Widget buildBody(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(AppConstant.appPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Playlists(),
          ],
        ),
      ),
    );
  }
}
