import 'package:final_assignment_first_semester/lists/roomsVisited.dart';

void roomSelectorTwoDoors({
  required String newRoom,
  required Function printNoNewRooms,
  required Function printNewRoom,
}) {
  bool haveYouVisitedNewRoom = roomsVisited.contains(newRoom);
  if (haveYouVisitedNewRoom == false) {
    printNoNewRooms();
  } else {
    printNewRoom();
  }
}
