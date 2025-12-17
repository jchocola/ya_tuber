import 'package:get_it/get_it.dart';
import 'package:ya_tuber/data/repo/youtube_explode_impl.dart';
import 'package:ya_tuber/domain/repo/youtube_explode_repo.dart';
import 'package:ya_tuber/main.dart';

final getIt = GetIt.instance;

Future<void> DI() async {
  getIt.registerSingleton<YoutubeExplodeRepo>(YoutubeExplodeImpl());

  logger.d('DI inited');
}
