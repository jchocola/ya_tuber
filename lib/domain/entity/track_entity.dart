import 'package:equatable/equatable.dart';

// TODO : thumbnail
class TrackEntity extends Equatable {
  final String videoId;
  final String title;
  final String subtitle;
  final String thumbnail;
  TrackEntity({
    required this.videoId,
    required this.title,
    required this.subtitle,
    required this.thumbnail
  });

  @override
  List<Object?> get props => [videoId, title, subtitle, thumbnail];
}
