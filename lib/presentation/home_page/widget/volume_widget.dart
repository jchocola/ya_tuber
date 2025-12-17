import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';
import 'package:ya_tuber/widget/custom_neumo_slider.dart';

class VolumeWidget extends StatelessWidget {
  const VolumeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      child: Padding(
        padding:  EdgeInsets.all(AppConstant.widgetPadding),
        child: Row(
          children: [
            Icon(AppIcon.volumeOn),
            Expanded(child: CustomNeumoSlider()),
            Text('21%'),
          ],
        ),
      ),
    );
  }
}
