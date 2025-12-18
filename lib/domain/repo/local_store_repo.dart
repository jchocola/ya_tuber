import 'package:ya_tuber/domain/entity/track_entity.dart';

abstract class LocalStoreRepo {
  Future<void> init();

  Future<void> saveTrack({required TrackEntity track});

  Future<List<TrackEntity>> getAllTrack();

  Future<void> updateTrackInfo({required TrackEntity track});

  Future<void> deleteTrack({required TrackEntity track});
}
