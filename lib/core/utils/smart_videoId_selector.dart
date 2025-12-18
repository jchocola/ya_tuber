/*  

  This function call when user tap , PLAY NEXT OR BACK
  Passed argument 
   - List<String> savedTrackIdList 
   - bool isNext (next or back)
  - String currentVideoUrl

  case 1 : when [savedTrackListId] not contains [currentVideoUrl] 
          then throught value of [isNext], return first or last from savedTrackIdList
  case 2 :  when [savedTrackListId]  contains [currentVideoUrl]
          then throught value of [isNext], return index +-1      
*/

String SmartVideoIdSelector({
  required List<String> playListIds,
  required bool isNext,
  required String? currentVideoId,
}) {
  if (playListIds.isEmpty) {
    throw Exception('Play list id empty');
  }

  final playListLenght = playListIds.length;

  ///
  ///  CASE 1
  ///
  if (currentVideoId == null ||
      currentVideoId.isEmpty ||
      !playListIds.contains(currentVideoId)) {
    if (isNext) {
      return playListIds.first;
    } else {
      return playListIds.last;
    }
  }
  ///
  /// CASE 2
  ///
  else {
    final currenVideoIndex = playListIds.indexOf(currentVideoId);
    if (isNext) {
      return playListIds[(currenVideoIndex + 1) % playListLenght];
    } else {
      return playListIds[(currenVideoIndex - 1) % playListLenght];
    }
  }
}
