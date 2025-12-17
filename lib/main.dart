import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:logger/web.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/core/di.dart';
import 'package:ya_tuber/core/light_theme.dart';
import 'package:ya_tuber/domain/repo/youtube_explode_repo.dart';
import 'package:ya_tuber/presentation/home_page/home_page.dart';
import 'package:ya_tuber/presentation/home_page/provider/home_page_provider.dart';

final logger = Logger();
Future<void> main() async {
  Provider.debugCheckInvalidValueType = null;

  ///
  /// DI
  ///
  await DI();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider(create: (context) => HomePageProvider(youtubeExplodeRepo: getIt<YoutubeExplodeRepo>()))],
      child: NeumorphicApp(
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        title: 'Ya Tuber',
        home: HomePage(),
      ),
    );
  }
}
