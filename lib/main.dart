import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:logger/web.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/app_setting_provider.dart';
import 'package:ya_tuber/core/di.dart';
import 'package:ya_tuber/core/light_theme.dart';
import 'package:ya_tuber/domain/repo/app_setting_repo.dart';
import 'package:ya_tuber/domain/repo/local_store_repo.dart';
import 'package:ya_tuber/domain/repo/youtube_explode_repo.dart';
import 'package:ya_tuber/presentation/home_page/home_page.dart';
import 'package:ya_tuber/presentation/home_page/provider/home_page_provider.dart';
import 'package:ya_tuber/presentation/playlist_page/provider/playlist_page_provider.dart';

final logger = Logger();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Provider.debugCheckInvalidValueType = null;

  ///
  /// DI
  ///
  await DI();

  ///
  /// INIT LOCAL DB
  ///
  await getIt<LocalStoreRepo>().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> AppSettingProvider(settingRepo: getIt<AppSettingRepo>())..init()),
        ChangeNotifierProvider(
          create: (context) =>
              HomePageProvider(youtubeExplodeRepo: getIt<YoutubeExplodeRepo>()),
        ),

        ChangeNotifierProvider(create: (context)=> PlaylistPageProvider(localDB: getIt<LocalStoreRepo>())..loadListTracks())
      ],
      child: NeumorphicApp(
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        title: 'Ya Tuber',
        home: HomePage(),
      ),
    );
  }
}
