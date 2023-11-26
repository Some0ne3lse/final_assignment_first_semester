import 'package:final_assignment_first_semester/lists/roomsVisited.dart';

void roomSetterThreeDoors(
    String description,
    String firstRoom,
    String secondRoom,
    String thirdRoom,
    Function aFirstRoomVersion,
    Function bRoomVersion,
    Function cRoomVersion,
    Function dAllRoomVersion,
    ) {
  print(description);

  bool haveYouVisitedSecondRoom = roomsVisited.contains(secondRoom);
  bool haveYouVisitedThirdRoom = roomsVisited.contains(thirdRoom);

  if (haveYouVisitedSecondRoom == false && haveYouVisitedThirdRoom == false){
    aFirstRoomVersion();
  } else if (haveYouVisitedSecondRoom == true && haveYouVisitedThirdRoom == false) {
    bRoomVersion();
  } else if (haveYouVisitedSecondRoom == false && haveYouVisitedThirdRoom == true) {
    cRoomVersion();
  } else if (haveYouVisitedSecondRoom == true && haveYouVisitedThirdRoom == true) {
    dAllRoomVersion();
  }
}
