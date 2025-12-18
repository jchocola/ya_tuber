import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';
import 'package:ya_tuber/core/light_app_color.dart';
import 'package:ya_tuber/domain/entity/track_entity.dart';
import 'package:ya_tuber/presentation/playlist_page/page/confirm_delete_page.dart';
import 'package:ya_tuber/presentation/playlist_page/page/edit_track_page.dart';
import 'package:ya_tuber/widget/custom_circle_button.dart';
import 'package:ya_tuber/widget/custom_neumo_icon.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({
    super.key,
    this.isPlaying = false,
    this.isSetting = false,
    this.track
  });
  final bool isPlaying;
  final bool isSetting;
  final TrackEntity? track;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(
        vertical: AppConstant.widgetPadding,
      ),
      child: RepaintBoundary(
        child: Neumorphic(
          style: NeumorphicStyle(
            lightSource: LightSource.topLeft,
            depth: isPlaying ? AppConstant.neumoDepthNegative : 0,
          ),
          child: ListTile(
            leading: isPlaying ? CustomNeumoIcon(iconData: AppIcon.audioLinesIcon,) :Icon(AppIcon.musicIcon),
            title: Text(track?.title ?? 'Lofi Coding', maxLines: 3,),
            subtitle: Text(track?.subtitle ?? 'FocusMusic'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ///
                /// EDIT
                ///
                isSetting
                    ? CustomCircleButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => EditTrackPage(),
                          );
                        },
                        icon: AppIcon.editIcon,
                      )
                    : SizedBox(),

                ///
                /// DELETE
                ///
                isSetting
                    ? CustomCircleButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => ConfirmDeletePage(
                              track: track,
                            ),
                          );
                        },
                        icon: AppIcon.deleteIcon,
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
