import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';
import 'package:ya_tuber/presentation/home_page/provider/home_page_provider.dart';
import 'package:ya_tuber/widget/custom_neumo_slider.dart';

class VolumeWidget extends StatelessWidget {
  const VolumeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageProvider_listen = context.watch<HomePageProvider>();
    final homePageProvider_read = context.read<HomePageProvider>();
    return Neumorphic(
      child: Padding(
        padding: EdgeInsets.all(AppConstant.widgetPadding),
        child: Row(
          children: [
            Icon(AppIcon.volumeOn),
            Expanded(
              child: CustomNeumoSlider(
                minValue: 0,
                maxValue: 100,
                currentValue: homePageProvider_listen.currentVolume.toDouble(),
                onChanged: (value) {
                  homePageProvider_read.changeVolumeValue(
                    volume: value.toInt(),
                  );
                },
              ),
            ),
            Text('${homePageProvider_listen.currentVolume} %'),
          ],
        ),
      ),
    );
  }
}
