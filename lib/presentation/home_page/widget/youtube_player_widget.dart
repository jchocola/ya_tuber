import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/presentation/home_page/provider/home_page_provider.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart' show YoutubePlayer, YoutubePlayerController;



class YoutubePlayerWidget extends StatelessWidget {
  const YoutubePlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageProvider_listen = context.watch<HomePageProvider>();

    final controller = context.select<HomePageProvider, YoutubePlayerController?>(
  (p) => p.youtubePlayerController,
);
    final size = MediaQuery.of(context).size;
    return Neumorphic(
      style: NeumorphicStyle(depth: AppConstant.neumoDepthNegative),
      child: SizedBox(
        width: size.width * 0.6 ,
        height: size.width * 0.4,
        child: controller == null ? SizedBox() : YoutubePlayer(controller: controller!, aspectRatio: 5 / 3),
      ),
    );
  }
}
