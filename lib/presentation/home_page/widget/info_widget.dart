import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/presentation/home_page/provider/home_page_provider.dart';
import 'package:ya_tuber/presentation/home_page/widget/youtube_player_widget.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final homePageProvider_listen = context.watch<HomePageProvider>();

    return Neumorphic(
      child: Padding(
        padding: EdgeInsetsGeometry.all(AppConstant.widgetPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppConstant.widgetPadding,
          children: [
            ///
            /// Circle avatar and name
            ///
            Row(
              spacing: AppConstant.widgetPadding,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                YoutubePlayerWidget(),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(homePageProvider_listen.video?.title ?? '', maxLines: 2,),
                      Text(homePageProvider_listen.video?.author ?? ''),
                    ],
                  ),
                ),
              ],
            ),

            ///
            /// Progress , Duration left
            ///
            Text('Progress : 65%'),

            NeumorphicProgress(
              curve: AppConstant.neumorphicCurve,
              style: ProgressStyle(depth: AppConstant.neumoDepthNegative),
              percent: 0.65,
            ),
          ],
        ),
      ),
    );
  }
}
