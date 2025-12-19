import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/custom_snackbar.dart';
import 'package:ya_tuber/domain/entity/track_entity.dart';
import 'package:ya_tuber/generated/l10n.dart';
import 'package:ya_tuber/presentation/playlist_page/provider/playlist_page_provider.dart';
import 'package:ya_tuber/widget/big_button.dart';
import 'package:ya_tuber/widget/play_list_card.dart';

class ConfirmDeletePage extends StatelessWidget {
  const ConfirmDeletePage({super.key, this.track});
  final TrackEntity? track;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final playlistPageProvider_read = context.read<PlaylistPageProvider>();
     final theme = Theme.of(context);
    return Dialog(
      child: Neumorphic(
        child: Padding(
          padding: EdgeInsetsGeometry.all(AppConstant.appPadding),
          child: Column(
            spacing: AppConstant.widgetPadding,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.of(context).deleteTrack , style: theme.textTheme.titleLarge,),
              Text(
                S.of(context).thisActionCannotBeUndoneTheTrackWillBePermanently,
                style:  theme.textTheme.bodySmall,
              ),
              PlayListCard(isPlaying: true, track: track),

              Row(
                spacing: AppConstant.widgetPadding,
                children: [
                  Expanded(
                    child: BigButton(
                      isNegative: true,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      title: S.of(context).cancel,
                    ),
                  ),
                  Expanded(
                    child: BigButton(
                      onPressed: () async {
                        Navigator.pop(context);
                        await playlistPageProvider_read
                            .deleteTrack(track: track!)
                            .then((value) {
                              showCustomSnackbar(context, type: SNACKBAR_TYPE.SUCCESS, content: 'Track deleted');
                            });
                      },
                      title: S.of(context).confirm,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
