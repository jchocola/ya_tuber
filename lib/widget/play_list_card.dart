import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';
import 'package:ya_tuber/core/light_app_color.dart';
import 'package:ya_tuber/presentation/playlist_page/page/confirm_delete_page.dart';
import 'package:ya_tuber/presentation/playlist_page/page/edit_track_page.dart';
import 'package:ya_tuber/widget/custom_circle_button.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({
    super.key,
    this.isPlaying = false,
    this.isSetting = false,
  });
  final bool isPlaying;
  final bool isSetting;
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
            leading: Icon(AppIcon.musicIcon),
            title: Text('Lofi Coding'),
            subtitle: Text('FocusMusic'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ///
                /// EDIT
                ///
                isSetting
                    ? CustomCircleButton(
                        onPressed: () {
                           showDialog(context: context, builder: (context)=> EditTrackPage());
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
                          showDialog(context: context, builder: (context)=> ConfirmDeletePage());
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
