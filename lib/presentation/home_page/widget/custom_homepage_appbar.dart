import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';
import 'package:ya_tuber/generated/l10n.dart';
import 'package:ya_tuber/presentation/playlist_page/playlist_page.dart';
import 'package:ya_tuber/presentation/setting_page/setting_page.dart';
import 'package:ya_tuber/widget/custom_circle_button.dart';
import 'package:ya_tuber/widget/custom_neumo_text.dart';

class CustomhomePageAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomhomePageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Neumorphic(
      child: Padding(
        padding: EdgeInsets.only(left:  AppConstant.appPadding ,right:  AppConstant.appPadding, top: AppConstant.appPadding*2, bottom: AppConstant.appPadding),
        child: Row(
          children: [
            Text(S.of(context).yatube, style: theme.textTheme.titleMedium,),
    
            Spacer(),
    
            ///
            ///PLAYLIST
            ///
            CustomCircleButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlaylistPage()),
                );
              },
              icon: AppIcon.playlistIcon,
            ),
    
            ///
            /// SETTING
            ///
            CustomCircleButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingPage()),
                );
              },
              icon: AppIcon.settingIcon,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
