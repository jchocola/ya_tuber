import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ya_tuber/domain/entity/track_entity.dart';

part 'track_model.g.dart';
part 'track_model.freezed.dart';

@freezed
sealed class TrackModel with _$TrackModel {
  const TrackModel._();
  const factory TrackModel({
    required String videoId,
    required String title,
    required String subtitle,
  }) = _TrackModel;

  factory TrackModel.fromJson(Map<String, dynamic> json) =>
      _$TrackModelFromJson(json);


  /// CONVERT MODEL TO ENTITY
   TrackEntity   toEntity () => TrackEntity(videoId: videoId, title: title, subtitle: subtitle);

  /// CONVERT FROM ENTITY
  factory TrackModel.fromEntity(TrackEntity entity) => TrackModel(videoId: entity.videoId, title: entity.title, subtitle: entity.subtitle);  
}
