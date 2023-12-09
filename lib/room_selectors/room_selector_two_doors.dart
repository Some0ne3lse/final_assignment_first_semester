import 'package:final_assignment_first_semester/lists/rooms_visited.dart';

// This code shows you what options you have in a room with 2 doors depending
// on which rooms you've visited.
// It reads the rooms_visited file, and then shows you what room you've entered
// by taking code from showing_visited_rooms

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
