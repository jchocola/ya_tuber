import 'package:equatable/equatable.dart';


// TODO : thumbnail
class TrackEntity extends Equatable {
  final String videoId;
  final String title;
  final String subtitle;
  TrackEntity({
    required this.videoId,
    required this.title,
    required this.subtitle,
  });

  
  @override
  List<Object?> get props => [
    videoId,title,subtitle
  ];
}
