import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';
import 'package:ya_tuber/generated/l10n.dart';
import 'package:ya_tuber/widget/custom_circle_button.dart';
import 'package:ya_tuber/widget/custom_neumo_text.dart';

class SettingPageAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const SettingPageAppbar({super.key});

  @override
  Widget build(BuildContext context) {

     final theme = Theme.of(context);
    return Neumorphic(
      child: Padding(
        padding: EdgeInsets.only(left:  AppConstant.appPadding ,right:  AppConstant.appPadding, top: AppConstant.appPadding*2, bottom: AppConstant.appPadding),
        child: Row(
          children: [
             CustomCircleButton(
              icon: AppIcon.arrowbackIcon,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Text(S.of(context).settings , style: theme.textTheme.titleMedium,),
      
            // Spacer(),
      
      
            // ///
            // ///PLAYLIST
            // ///
            // CustomCircleButton(onPressed: () {} , icon: AppIcon.playlistIcon,),
      
      
            // ///
            // /// SETTING
            // ///
            // CustomCircleButton(onPressed: () {},icon: AppIcon.settingIcon,),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppConstant.appBarHeight);
}
