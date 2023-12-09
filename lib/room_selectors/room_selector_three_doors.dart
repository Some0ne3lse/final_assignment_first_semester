import 'package:final_assignment_first_semester/lists/rooms_visited.dart';

// This code shows you what options you have in a room with 3 doors depending
// on which rooms you've visited.
// It reads the rooms_visited file, and then shows you what room you've entered
// by taking code from showing_visited_rooms

void roomSelectorThreeDoors({
  required String secondRoom,
  required String thirdRoom,
  required Function printNoNewRooms,
  required Function printSecondRoom,
  required Function printThirdRoom,
  required Function printAll,
}) {
  bool haveYouVisitedSecondRoom = roomsVisited.contains(secondRoom);
  bool haveYouVisitedThirdRoom = roomsVisited.contains(thirdRoom);

  if (haveYouVisitedSecondRoom == false && haveYouVisitedThirdRoom == false) {
    printNoNewRooms();
  } else if (haveYouVisitedSecondRoom == true &&
      haveYouVisitedThirdRoom == false) {
    printSecondRoom();
  } else if (haveYouVisitedSecondRoom == false &&
      haveYouVisitedThirdRoom == true) {
    printThirdRoom();
  } else {
    printAll();
  }
}
