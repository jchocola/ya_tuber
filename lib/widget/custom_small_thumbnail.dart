import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ya_tuber/core/app_constant.dart';

class CustomSmallThumbnail extends StatelessWidget {
  const CustomSmallThumbnail({super.key, this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(AppConstant.appPadding),
        child: SizedBox(
          width: size.width *0.1,
          height:size.width *0.1 ,
          child: CachedNetworkImage(
            fit: BoxFit.cover,
          imageUrl: imageUrl ?? '',
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, error) => Icon(Icons.error),
                ),
        ),
    );
  }
}
