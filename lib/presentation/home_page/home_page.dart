import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/app_setting_provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';
import 'package:ya_tuber/core/custom_snackbar.dart';
import 'package:ya_tuber/main.dart';
import 'package:ya_tuber/presentation/home_page/provider/home_page_provider.dart';
import 'package:ya_tuber/presentation/home_page/widget/info_widget.dart';
import 'package:ya_tuber/presentation/home_page/widget/play_buttons_have_controller.dart';
import 'package:ya_tuber/presentation/home_page/widget/play_buttons_not_controller.dart';
import 'package:ya_tuber/presentation/home_page/widget/playlist_widget.dart';
import 'package:ya_tuber/widget/custom_circle_button.dart';
import 'package:ya_tuber/widget/custom_input.dart';
import 'package:ya_tuber/presentation/home_page/widget/custom_homepage_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  StreamSubscription<List<ConnectivityResult>>? subscription;

  @override
  void initState() {
    super.initState();
    subscription = Connectivity().onConnectivityChanged.listen((
      List<ConnectivityResult> result,
    ) {
      logger.d(result);
      if (result.contains(ConnectivityResult.none)) {
        showCustomSnackbar(context, content: 'YOU ARE OFFLINE');
      }
      if (result.contains(ConnectivityResult.wifi) || result.contains(ConnectivityResult.mobile)) {
        showCustomSnackbar(context, content: 'WELCOME BACK )))');
      }
    });
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    subscription?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        logger.e('Приложение активно и видимо');
        // Приложение вернулось на передний план
        // _onAppResumed();
        break;

      case AppLifecycleState.inactive:
        logger.e('Приложение неактивно (но видимо)');
        // Например: уведомление поверх приложения, мультитаск
        break;

      case AppLifecycleState.paused:
        logger.e('Приложение в фоновом режиме');
        // Приложение свернуто или перешло в фон
        //_onAppPaused();
        checkPlayBackgroundOrNot();
        break;

      case AppLifecycleState.detached:
        logger.e('Приложение уничтожено');
        // Приложение полностью закрыто (только Android)
        break;

      case AppLifecycleState.hidden:
        logger.e('Приложение скрыто');
        // Новое состояние в Flutter 3.13+
        break;
    }
  }

  void checkPlayBackgroundOrNot() {
    if (context.read<AppSettingProvider>().backgroundPlay) {
      logger.d('Play background');
      context.read<HomePageProvider>().playVideo();
    } else {
      logger.d('Not play background');
      return;
    }
  }

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
    final homePageProvider_read = context.read<HomePageProvider>();
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
            homePageProvider_listen.youtubePlayerController != null
                ? PlayButtons_when_have_controller()
                : PlayButtons_when_not_controller(),
            PlaylistWidget(),
          ],
        ),
      ),
    );
  }
}
