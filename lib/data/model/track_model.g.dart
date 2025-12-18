// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrackModel _$TrackModelFromJson(Map<String, dynamic> json) => _TrackModel(
  videoId: json['videoId'] as String,
  title: json['title'] as String,
  subtitle: json['subtitle'] as String,
  thumbnail: json['thumbnail'] as String,
);

Map<String, dynamic> _$TrackModelToJson(_TrackModel instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'thumbnail': instance.thumbnail,
    };
