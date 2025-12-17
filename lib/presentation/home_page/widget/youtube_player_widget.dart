import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/presentation/home_page/provider/home_page_provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class YoutubePlayerWidget extends StatelessWidget {
  const YoutubePlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageProvider_listen = context.watch<HomePageProvider>();
    final size = MediaQuery.of(context).size;
    return Neumorphic(
      style: NeumorphicStyle(depth: AppConstant.neumoDepthNegative),
      child: SizedBox(
        width: size.width * 0.36,
        height: size.width * 0.2,
        child: homePageProvider_listen.youtubePlayerController == null ? SizedBox() : YoutubePlayer(controller: homePageProvider_listen.youtubePlayerController!, aspectRatio: 16 / 9),
      ),
    );
  }
}
