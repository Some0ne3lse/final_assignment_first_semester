import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';

void roomSetterTwoDoors(
  String nextRoom,
  Function aRoomVersion,
  Function bRoomVersion,
) {

  bool haveYouVisitedNewRoom = roomsVisited.contains(nextRoom);
  if (haveYouVisitedNewRoom == false) {
    aRoomVersion();
  } else {
    bRoomVersion();
  }
}
