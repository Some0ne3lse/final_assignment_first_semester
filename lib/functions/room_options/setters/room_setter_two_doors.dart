import 'package:final_assignment_first_semester/lists/roomsVisited.dart';

void roomSetterTwoDoors(
String description,
    String nextRoom,
    Function aRoomVersion,
    Function bRoomVersion,
){
  print(description);

  bool haveYouVisitedNewRoom = roomsVisited.contains(nextRoom);
  if (haveYouVisitedNewRoom == false){
    aRoomVersion();
  } else {
    bRoomVersion();
  }

}