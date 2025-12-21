import 'package:get_it/get_it.dart';
import 'package:ya_tuber/data/repo/local_store_impl.dart';
import 'package:ya_tuber/data/repo/shared_pref_app_setting_impl.dart';
import 'package:ya_tuber/data/repo/youtube_explode_impl.dart';
import 'package:ya_tuber/domain/repo/app_setting_repo.dart';
import 'package:ya_tuber/domain/repo/local_store_repo.dart';
import 'package:ya_tuber/domain/repo/youtube_explode_repo.dart';
import 'package:ya_tuber/main.dart';

final getIt = GetIt.instance;

Future<void> DI() async {
  getIt.registerSingleton<YoutubeExplodeRepo>(YoutubeExplodeImpl());
  getIt.registerSingleton<LocalStoreRepo>(LocalStoreImpl());

  getIt.registerSingleton<AppSettingRepo>(SharedPrefAppSettingImpl());

  await getIt<AppSettingRepo>().init();

  logger.d('DI inited');
}
