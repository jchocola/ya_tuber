import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';

class SettingTitle extends StatelessWidget {
  const SettingTitle({
    super.key,
    this.withSwitch = false,
    this.title = 'Title',
    this.subTitle = 'SubTitle',
    this.onPressed,
    this.switchValue = false
  });
  final String title;
  final String subTitle;
  final bool withSwitch;
  final void Function()? onPressed;
  final bool switchValue;
  @override
  Widget build(BuildContext context) {
      final theme = Theme.of(context);
    return NeumorphicButton(
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.all(AppConstant.widgetPadding),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(title, style: theme.textTheme.bodyMedium,), Text(subTitle, style: theme.textTheme.bodySmall,)],
              ),
            ),
            withSwitch
                ? Transform.scale(
                    scale: 0.7,
                    child: NeumorphicSwitch(value: switchValue),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
