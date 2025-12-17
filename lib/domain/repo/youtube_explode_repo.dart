import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


abstract class YoutubeExplodeRepo {
  Future<String> getAudioUrl({required String videoUrl});

  Future<Video?> getVideoFullInfo({required String videoUrl});
  Future<String> getVideoIdViaUrl({required String videoUrl});

  Future<YoutubePlayerController> getYoutubePlayerController({
    required String videoUrl,
  });
}
