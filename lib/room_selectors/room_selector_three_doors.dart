import 'package:final_assignment_first_semester/lists/roomsVisited.dart';

void roomSelectorThreeDoors({
  required String secondRoom,
  required String thirdRoom,
  required Function printNoNewRooms,
  required Function printSecondRoom,
  required Function printThirdRoom,
  required Function printAll,
}){
  bool haveYouVisitedSecondRoom = roomsVisited.contains(secondRoom);
  bool haveYouVisitedThirdRoom = roomsVisited.contains(thirdRoom);

  if (haveYouVisitedSecondRoom == false && haveYouVisitedThirdRoom == false){
    printNoNewRooms();
  } else if (haveYouVisitedSecondRoom == true && haveYouVisitedThirdRoom == false) {
    printSecondRoom();
  } else if (haveYouVisitedSecondRoom == false && haveYouVisitedThirdRoom == true) {
    printThirdRoom();
  } else {
    printAll();
  }
}