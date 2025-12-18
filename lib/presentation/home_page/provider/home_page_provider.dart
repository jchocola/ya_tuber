import 'package:flutter/material.dart';
import 'package:ya_tuber/domain/repo/youtube_explode_repo.dart';
import 'package:ya_tuber/main.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart'
    show YoutubePlayerController, YoutubePlayerParams;

class HomePageProvider extends ChangeNotifier {
  final YoutubeExplodeRepo youtubeExplodeRepo;

  HomePageProvider({required this.youtubeExplodeRepo});

  //variables
  String? _currentVideoUrl = '';
  String? _currentVideoAudioUrl;
  Video? video;
  YoutubePlayerController? _youtubePlayerController = YoutubePlayerController(
    params: YoutubePlayerParams(
      mute: false,
      showControls: true,
      showFullscreenButton: true,
      origin: 'https://www.youtube-nocookie.com',
    ),
  );
  bool isMute = false;
  int currentVolume = 70;
  int currentTime = 0;
  List<double>? playBackRateList = [-1, -0.5, 1, 1.5, 2];
  double currentPlayBackRate = 1.0;
  String currentVideoId = '';

  YoutubePlayerController? get youtubePlayerController =>
      _youtubePlayerController;

  ///
  /// PUBLIC METHODS
  ///
  void setCurrentVideoUrl(String? value) {
    _currentVideoUrl = value;
    logger.i('CurrentUrl : $value');
    // notifyListeners();
  }

  Future<void> loadVideoInfo() async {
    try {
      // ⛔ закрываем старый
      // await _closeYoutubePlayerController();

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

      // check mute
      isMute = false;
      // await _checkMute();

      // load play back rate list
      await _loadPlayBackList();

      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> seekTo({required double value}) async {
    try {
      setCurrentTime(value.toInt());

      await _youtubePlayerController?.seekTo(
        seconds: value,
        allowSeekAhead: true,
      );
      logger.i('Seek forward $value s');
    } catch (e) {
      logger.e(e);
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

  Future<void> setMute() async {
    try {
      await _youtubePlayerController?.mute();
      // await _checkMute();
      isMute = true;
      logger.i('SetMute $isMute');
      notifyListeners();
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> unMute() async {
    try {
      await _youtubePlayerController?.unMute();
      // await _checkMute();
      isMute = false;
      logger.i('Unmute $isMute');
      notifyListeners();
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> changeVolumeValue({required int volume}) async {
    try {
      await _youtubePlayerController?.setVolume(volume);
      currentVolume = volume;
      logger.d('Set volume to : $volume');
      notifyListeners();
    } catch (e) {
      logger.e(e);
    }
  }

  void setCurrentTime(int value) {
    currentTime = value.toInt();
    notifyListeners();
  }

  //TODO : PLAY BACK LOGIC
  Future<void> setPlaybackRate({required double value}) async {
    try {
      currentPlayBackRate = value;
      notifyListeners();
      await _youtubePlayerController?.setPlaybackRate(value);
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
      final videoId = await youtubeExplodeRepo.getVideoIdViaUrl(
        videoUrl: _currentVideoUrl!,
      );

      currentVideoId = videoId;

      youtubePlayerController!.loadVideoById(videoId: videoId);

      youtubePlayerController!.videoStateStream.listen((data) {
        setCurrentTime(data.position.inSeconds);
        logger.d(data.position);
      });
      // final res = await youtubeExplodeRepo.getYoutubePlayerController(
      //   videoUrl: _currentVideoUrl!,
      // );
      // _youtubePlayerController = res;

      // notifyListeners();
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  Future<void> _closeYoutubePlayerController() async {
    if (_youtubePlayerController != null) {
      await _youtubePlayerController!.close();
      _youtubePlayerController = null;
      logger.d('Old YoutubePlayerController closed');
    }
  }

  Future<void> _checkMute() async {
    isMute = await _youtubePlayerController?.isMuted ?? true;

    logger.d('Current IsMute $isMute');
  }

  Future<void> _loadPlayBackList() async {
    final res = await _youtubePlayerController?.availablePlaybackRates;
    playBackRateList = res;
    logger.d('Play back rate List : ${playBackRateList}');
  }

  @override
  void dispose() {
    _youtubePlayerController?.close();
    _youtubePlayerController = null;
    super.dispose();
  }
}
