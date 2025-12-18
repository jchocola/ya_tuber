import 'package:localstore/localstore.dart';
import 'package:ya_tuber/data/model/track_model.dart';
import 'package:ya_tuber/domain/entity/track_entity.dart';
import 'package:ya_tuber/domain/repo/local_store_repo.dart';
import 'package:ya_tuber/main.dart';

class LocalStoreImpl implements LocalStoreRepo {
  late Localstore db;
  static final String _collectionName = 'Tracks';

  @override
  Future<void> deleteTrack({required TrackEntity track}) async {
    try {
      await db.collection(_collectionName).doc(track.videoId).delete();
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<List<TrackEntity>> getAllTrack() async {
    try {
      final tracks = await db.collection(_collectionName).get();
      if (tracks == null || tracks.isEmpty) {
        return [];
      }

      logger.i('Tracks : ${tracks.values.length}');

      return tracks.values
          .map(
            (e) => TrackModel.fromJson(Map<String, dynamic>.from(e)).toEntity(),
          )
          .toList();
    } catch (e) {
      logger.e(e);
      return [];
    }
  }

  @override
  Future<void> init() async {
    db = Localstore.instance;
    logger.i('Local DB - inited');
  }

  @override
  Future<void> saveTrack({required TrackEntity track}) async {
    try {
      final trackModel = TrackModel.fromEntity(track);
      await db
          .collection(_collectionName)
          .doc(track.videoId)
          .set(trackModel.toJson());
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Future<void> updateTrackInfo({required TrackEntity track}) async {
    try {
      final trackModel = TrackModel.fromEntity(track);
      await db
          .collection(_collectionName)
          .doc(trackModel.videoId)
          .set(trackModel.toJson());
    } catch (e) {
      logger.e(e);
    }
  }
}
