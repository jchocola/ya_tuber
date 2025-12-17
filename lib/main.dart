import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/light_theme.dart';
import 'package:ya_tuber/presentation/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'Ya Tuber',
      home: HomePage()
    );
  }
}


