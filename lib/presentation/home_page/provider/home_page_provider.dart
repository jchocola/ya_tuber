import 'package:flutter/material.dart';
import 'package:ya_tuber/domain/repo/youtube_explode_repo.dart';
import 'package:ya_tuber/main.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart'
    show YoutubePlayerController;

class HomePageProvider extends ChangeNotifier {
  final YoutubeExplodeRepo youtubeExplodeRepo;

  HomePageProvider({required this.youtubeExplodeRepo});

  //variables
  String? _currentVideoUrl = '';
  String? _currentVideoAudioUrl;
  Video? video;
  YoutubePlayerController? _youtubePlayerController;

  YoutubePlayerController? get youtubePlayerController =>
      _youtubePlayerController;

  void setCurrentVideoUrl(String? value) {
    _currentVideoUrl = value;
    logger.i('CurrentUrl : $value');
    notifyListeners();
  }

  ///
  /// PUBLIC METHODS
  ///

  Future<void> loadVideoInfo() async {
    try {
      // if current video url is empty
      if (_currentVideoUrl == null || _currentVideoUrl!.isEmpty) {
        throw Exception('URL EMPTY');
      }

      // get audio Url
      final res = await youtubeExplodeRepo.getAudioUrl(
        videoUrl: _currentVideoUrl!,
      );

      if (res.isEmpty) {
        throw Exception('AUDIO URL EMPTY');
      }
      _currentVideoAudioUrl = res;

      // load video
      await _loadVideo();

      // load youtube player
      await _loadYoutubePlayerController();

      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  void pauseVideo() async {
    try {
      _youtubePlayerController?.pauseVideo();
      logger.i('Pause video tapped');
    } catch (e) {
      logger.e(e);
    }
  }

  void playVideo() async {
    try {
      _youtubePlayerController?.playVideo();
      logger.i('Play video tapped');
    } catch (e) {
      logger.e(e);
    }
  }

  

  ///
  ///PRIVATE METHODS
  ///
  Future<void> _loadVideo() async {
    final res = await youtubeExplodeRepo.getVideoFullInfo(
      videoUrl: _currentVideoUrl!,
    );
    video = res;

    //notifyListeners();
  }

  Future<void> _loadYoutubePlayerController() async {
    try {
      final res = await youtubeExplodeRepo.getYoutubePlayerController(
        videoUrl: _currentVideoUrl!,
      );
      _youtubePlayerController = res;

      // notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}
