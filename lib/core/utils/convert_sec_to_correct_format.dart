///
/// 70s => 01:10s
///

String converSecToCorrectFromat(int? seconds) {
  if (seconds == null) {
    return '...';
  } else {
    return '${(seconds ~/ 60) < 60 ? (seconds ~/ 60) : '${(seconds ~/ 60) ~/ 60}:${(seconds ~/ 60) % 60 < 10 ? '0${(seconds ~/ 60) % 60}' : '${(seconds ~/ 60) % 60}'}'}:${(seconds % 60) < 10 ? '0${seconds % 60}' : (seconds % 60)}';
  }
}
