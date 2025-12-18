import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/custom_snackbar.dart';
import 'package:ya_tuber/domain/entity/track_entity.dart';
import 'package:ya_tuber/presentation/playlist_page/provider/playlist_page_provider.dart';
import 'package:ya_tuber/widget/big_button.dart';
import 'package:ya_tuber/widget/custom_input.dart';
import 'package:ya_tuber/widget/play_list_card.dart';

class EditTrackPage extends StatefulWidget {
  const EditTrackPage({super.key, this.track});
  final TrackEntity? track;
  @override
  State<EditTrackPage> createState() => _EditTrackPageState();
}

class _EditTrackPageState extends State<EditTrackPage> {
  late TextEditingController titleController;
  late TextEditingController subTitleController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    subTitleController = TextEditingController();
    titleController.text = widget.track?.title ?? '';
    subTitleController.text = widget.track?.subtitle ?? '';
  }

  @override
  void dispose() {
    titleController.dispose();
    subTitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
      child: Neumorphic(
        child: Padding(
          padding: EdgeInsetsGeometry.all(AppConstant.appPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppConstant.widgetPadding,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Edit Track'),
                Text('Update the track information below'),
                Gap(AppConstant.widgetPadding),
                Text('Track Title'),
                CustomInput(controller: titleController),

                Text('Artist / Channel'),
                CustomInput(controller: subTitleController),

                Divider(),

                Row(
                  spacing: AppConstant.widgetPadding,
                  children: [
                    Expanded(
                      child: BigButton(
                        isNegative: true,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        title: 'Cancel',
                      ),
                    ),
                    Expanded(
                      child: BigButton(
                        onPressed: () async {
                          final trackWithNewData = TrackEntity(
                            videoId: widget.track!.videoId,
                            title: titleController.text,
                            subtitle: subTitleController.text,
                            thumbnail: widget.track!.thumbnail
                          );

                          Navigator.pop(context);
                          await context
                              .read<PlaylistPageProvider>()
                              .saveTrack(track: trackWithNewData)
                              .then((_) {
                                showCustomSnackbar(context, content: 'Edited');
                              });
                        },
                        title: 'Confirm',
                      ),
                    ),
                  ],
                ),

                Text('Changes will be saved to your local playlist'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
