import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';

class YoutubePlayerWidget extends StatelessWidget {
  const YoutubePlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Neumorphic(
      style: NeumorphicStyle(
        depth: AppConstant.neumoDepthNegative
      ),
      child: SizedBox(
        width: size.width * 0.3,
        height: size.width * 0.2,
        
      ),
      
    );
  }
}
