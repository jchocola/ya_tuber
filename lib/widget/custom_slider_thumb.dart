import 'package:flutter/material.dart';
import 'package:ya_tuber/core/app_constant.dart';

class CustomSliderThumb extends StatelessWidget {
  const CustomSliderThumb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 2,

          )
        ],
        color: Colors.amber,
        border: Border.all(
          color: Colors.white,
          width: 4
        ),
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.all(AppConstant.widgetPadding/1.5),
    );
  }
}
