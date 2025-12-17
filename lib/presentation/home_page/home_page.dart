import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';
import 'package:ya_tuber/core/custom_snackbar.dart';
import 'package:ya_tuber/data/repo/youtube_explode_impl.dart';
import 'package:ya_tuber/presentation/home_page/provider/home_page_provider.dart';
import 'package:ya_tuber/presentation/home_page/widget/info_widget.dart';
import 'package:ya_tuber/presentation/home_page/widget/play_buttons_have_controller.dart';
import 'package:ya_tuber/presentation/home_page/widget/play_buttons_not_controller.dart';
import 'package:ya_tuber/presentation/home_page/widget/playlist_widget.dart';
import 'package:ya_tuber/widget/custom_circle_button.dart';
import 'package:ya_tuber/widget/custom_input.dart';
import 'package:ya_tuber/presentation/home_page/widget/custom_homepage_appbar.dart';
import 'package:ya_tuber/widget/custom_neumo_icon.dart';
import 'package:ya_tuber/widget/custom_neumo_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomhomePageAppbar(),

        // appBar: NeumorphicAppBar(
        //   //  leading: CustomNeumoIcon(),
        //   title: CustomNeumoText(text: 'Ya Tube'),
        //   actions: [
        //     CustomCircleButton(onPressed: () {}, icon: AppIcon.searchIcon),
        //     CustomCircleButton(onPressed: () {}, icon: AppIcon.settingIcon),
        //   ],
        // ),
        body: buildBody(context),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    final homePageProvider_listen = context.watch<HomePageProvider>();
    return Padding(
      padding: EdgeInsetsGeometry.all(AppConstant.appPadding),
      child: SingleChildScrollView(
        child: Column(
          spacing: AppConstant.widgetPadding,
          children: [
            InfoWidget(),
            Row(
              spacing: AppConstant.widgetPadding,
              children: [
                Expanded(
                  child: CustomInput(
                    hintText: 'Past Youtube link...',
                    onChanged: (value) {
                      context.read<HomePageProvider>().setCurrentVideoUrl(
                        value,
                      );
                    },
                  ),
                ),
                CustomCircleButton(
                  onPressed: () async {
                    try {
                      await context.read<HomePageProvider>().loadVideoInfo();
                    } catch (e) {
                      showCustomSnackbar(context, content: e.toString());
                    }
                  },
                  icon: AppIcon.searchIcon,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(AppConstant.borderRadius),
                  ),
                ),
              ],
            ),
            Gap(AppConstant.appPadding),
            homePageProvider_listen.youtubePlayerController !=null ? PlayButtons_when_have_controller() : PlayButtons_when_not_controller(),
            PlaylistWidget(),
          ],
        ),
      ),
    );
  }
}
