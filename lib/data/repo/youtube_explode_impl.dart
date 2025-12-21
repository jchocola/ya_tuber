import 'package:ya_tuber/core/app_exception.dart';
import 'package:ya_tuber/domain/repo/youtube_explode_repo.dart';
import 'package:ya_tuber/main.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart'
    show YoutubePlayer;
import 'package:youtube_player_iframe/youtube_player_iframe.dart'
    show YoutubePlayerController, YoutubePlayerParams;

class YoutubeExplodeImpl implements YoutubeExplodeRepo {
  final yt = YoutubeExplode();

  @override
  Future<String> getAudioUrl({required String videoUrl}) async {
    try {
      final StreamManifest manifest = await yt.videos.streams.getManifest(
        videoUrl,
      );
      logger.i(manifest);
      final audioStream = manifest.audioOnly.withHighestBitrate();

      logger.i(audioStream.url.toString());
      return audioStream.url.toString();
    } catch (e) {
      return '';
    }
  }

  @override
  Future<Video?> getVideoFullInfo({required String videoUrl}) async {
    try {
      final res = await yt.videos.get(videoUrl);
      logger.i(res);
      logger.d('ThumbnailUrl : ${res.thumbnails.lowResUrl}');
      return res;
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<YoutubePlayerController> getYoutubePlayerController({
    required String videoUrl,
  }) async {
    try {
      final videoId = await getVideoIdViaUrl(videoUrl: videoUrl);

      final controller = YoutubePlayerController(
        params: YoutubePlayerParams(
          mute: false,
          showControls: true,
          showFullscreenButton: true,
          origin: 'https://www.youtube-nocookie.com',
        ),
      );
      controller.loadVideoById(videoId: videoId);

      //       final controller = YoutubePlayerController.fromVideoId(
      //   videoId: videoId,
      //   autoPlay: false,

      //   params: const YoutubePlayerParams(showFullscreenButton: true, origin: 'https://www.youtube-nocookie.com'),
      // );

      logger.i(controller);
      return controller;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> getVideoIdViaUrl({required String videoUrl}) async {
    try {
      final res = YoutubePlayer.convertUrlToId(videoUrl);
      if (res == null) {
        throw APP_EXCEPTION.INVALID_URL;
      }

      logger.i(res);

      return res;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
