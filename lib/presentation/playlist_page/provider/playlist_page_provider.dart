import 'package:flutter/material.dart';
import 'package:ya_tuber/domain/entity/track_entity.dart';
import 'package:ya_tuber/domain/repo/local_store_repo.dart';
import 'package:ya_tuber/main.dart';

class PlaylistPageProvider extends ChangeNotifier {
  ///
  /// REPOSITORIES
  ///
  final LocalStoreRepo localDB;

  ///
  ///VARIABLES
  ///
  List<TrackEntity> listTracks = [];

  ///
  ///PUBLIC METHOD
  ///
  Future<void> loadListTracks() async {
    try {
      listTracks = await localDB.getAllTrack();

      logger.i(listTracks.length);
      notifyListeners();
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> saveTrack({required TrackEntity track}) async {
    try {
      await localDB.saveTrack(track: track);
      await loadListTracks();
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> deleteTrack({required TrackEntity track}) async {
    try {
      await localDB.deleteTrack(track: track);
      await loadListTracks();
    } catch (e) {
      logger.e(e);
    }
  }

  ///
  /// constructor
  ///
  PlaylistPageProvider({required this.localDB});
}
