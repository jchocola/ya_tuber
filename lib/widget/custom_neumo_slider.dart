import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/widget/custom_slider_thumb.dart';

class CustomNeumoSlider extends StatelessWidget {
  const CustomNeumoSlider({
    super.key,
    this.minValue = 0,
    this.maxValue = 100,
    this.currentValue = 50,
    this.onChanged,
    this.onChangeEnd,
  });
  final double minValue;
  final double maxValue;
  final double currentValue;
  final void Function(double)? onChanged;
  final void Function(double)? onChangeEnd;
  @override
  Widget build(BuildContext context) {
    return NeumorphicSlider(
      min: minValue,
      max: maxValue,
      onChanged: onChanged,
      onChangeEnd: onChangeEnd,
      //thumb: CustomSliderThumb(),
      style: SliderStyle(depth: AppConstant.neumoDepthNegative),
      value: currentValue,
      height: AppConstant.sliderHeight,
    );
  }
}
