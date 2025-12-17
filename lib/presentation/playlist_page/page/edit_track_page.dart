import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:gap/gap.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/widget/big_button.dart';
import 'package:ya_tuber/widget/custom_input.dart';
import 'package:ya_tuber/widget/play_list_card.dart';

class EditTrackPage extends StatelessWidget {
  const EditTrackPage({super.key});

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
                CustomInput(),
            
                Text('Artist / Channel'),
                CustomInput(),

                Divider(),

                Row(
                  spacing: AppConstant.widgetPadding,
                  children: [
                    Expanded(
                      child: BigButton(isNegative: true, onPressed: () {}),
                    ),
                    Expanded(child: BigButton(onPressed: () {})),
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
