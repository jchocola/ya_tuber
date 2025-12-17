import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/widget/custom_slider_thumb.dart';

class CustomNeumoSlider extends StatelessWidget {
  const CustomNeumoSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return NeumorphicSlider(
      thumb: CustomSliderThumb(),
      style: SliderStyle(
      
        depth: AppConstant.neumoDepthNegative
      ),
      value: 5,
      height: AppConstant.sliderHeight,
    );
  }
}
