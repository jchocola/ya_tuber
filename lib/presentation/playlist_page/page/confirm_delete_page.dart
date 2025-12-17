import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/widget/big_button.dart';
import 'package:ya_tuber/widget/play_list_card.dart';

class ConfirmDeletePage extends StatelessWidget {
  const ConfirmDeletePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
      child: Neumorphic(
        child: Padding(
          padding: EdgeInsetsGeometry.all(AppConstant.appPadding),
          child: Column(
            spacing: AppConstant.widgetPadding,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Delete Track?'),
              Text(
                'This action cannot be undone. The track will be permanently removed from your playlist.',
              ),
              PlayListCard(isPlaying: true),

              Row(
                spacing: AppConstant.widgetPadding,
                children: [
                  Expanded(
                    child: BigButton(isNegative: true, onPressed: () {}),
                  ),
                  Expanded(child: BigButton(onPressed: () {})),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
