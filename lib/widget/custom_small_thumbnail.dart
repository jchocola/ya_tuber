import 'package:flutter/material.dart';
import 'package:ya_tuber/core/app_constant.dart';

class CustomSmallThumbnail extends StatelessWidget {
  const CustomSmallThumbnail({super.key, this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CircleAvatar(backgroundImage: NetworkImage(imageUrl ?? '',));
  }
}
