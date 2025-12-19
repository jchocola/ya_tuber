import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';
import 'package:ya_tuber/domain/entity/track_entity.dart';
import 'package:ya_tuber/presentation/playlist_page/page/confirm_delete_page.dart';
import 'package:ya_tuber/presentation/playlist_page/page/edit_track_page.dart';
import 'package:ya_tuber/widget/custom_circle_button.dart';
import 'package:ya_tuber/widget/custom_neumo_icon.dart';
import 'package:ya_tuber/widget/custom_small_thumbnail.dart';
import 'package:ya_tuber/widget/rotating_widget.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({
    super.key,
    this.isPlaying = false,
    this.isSetting = false,
    this.track,
    this.onTap
  });
  final bool isPlaying;
  final bool isSetting;
  final TrackEntity? track;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
      final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(
        vertical: AppConstant.widgetPadding,
      ),
      child: RepaintBoundary(
        child: GestureDetector(
          onTap: onTap,
          child: Neumorphic(
            style: NeumorphicStyle(
              lightSource: LightSource.topLeft,
              depth: isPlaying ? AppConstant.neumoDepthNegative : 0,
            ),
            child: ListTile(
              leading:  isPlaying ? RotatingWidget(child:CustomSmallThumbnail(imageUrl: track?.thumbnail,) ) :  CustomSmallThumbnail(imageUrl: track?.thumbnail,),
              title: Text(track?.title ?? 'Lofi Coding', maxLines: 3, style: theme.textTheme.bodyMedium,),
              subtitle: Text(track?.subtitle ?? 'FocusMusic', style: theme.textTheme.bodySmall,),
                        
              trailing: Transform.scale(
                scale: 0.8,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ///
                    /// EDIT
                    ///
                    isSetting
                        ? CustomCircleButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => EditTrackPage(track: track,),
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
        ),
      ),
    );
  }
}
