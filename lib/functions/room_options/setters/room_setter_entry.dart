import 'package:final_assignment_first_semester/lists/roomsVisited.dart';

// This function selects which room version you end up in. This is to keep track
// on which rooms you have already visited

void roomSetterEntry(
  String description,
  String firstRoom,
  String secondRoom,
  String thirdRoom,
  Function aNoRoomVersion,
  Function bRoomVersion,
  Function cRoomVersion,
  Function dRoomVersion,
  Function eRoomVersion,
  Function fRoomVersion,
  Function gRoomVersion,
  Function hAllRoomVersion,
) {
  print(description);

  bool haveYouVisitedFirstRoom = roomsVisited.contains(firstRoom);
  bool haveYouVisitedSecondRoom = roomsVisited.contains(secondRoom);
  bool haveYouVisitedThirdRoom = roomsVisited.contains(thirdRoom);

  if (haveYouVisitedFirstRoom == false &&
      haveYouVisitedSecondRoom == false &&
      haveYouVisitedThirdRoom == false) {
    aNoRoomVersion();
  } else if (haveYouVisitedFirstRoom == true &&
      haveYouVisitedSecondRoom == false &&
      haveYouVisitedThirdRoom == false) {
    bRoomVersion();
  } else if (haveYouVisitedFirstRoom == false &&
      haveYouVisitedSecondRoom == true &&
      haveYouVisitedThirdRoom == false) {
    cRoomVersion();
  } else if (haveYouVisitedFirstRoom == false &&
      haveYouVisitedSecondRoom == false &&
      haveYouVisitedThirdRoom == true) {
    dRoomVersion();
  } else if (haveYouVisitedFirstRoom == true &&
      haveYouVisitedSecondRoom == true &&
      haveYouVisitedThirdRoom == false) {
    eRoomVersion();
  } else if (haveYouVisitedFirstRoom == true &&
      haveYouVisitedSecondRoom == false &&
      haveYouVisitedThirdRoom == true) {
    fRoomVersion();
  } else if (haveYouVisitedFirstRoom == false &&
      haveYouVisitedSecondRoom == true &&
      haveYouVisitedThirdRoom == true) {
    gRoomVersion();
  } else if (haveYouVisitedFirstRoom == true &&
      haveYouVisitedSecondRoom == true &&
      haveYouVisitedThirdRoom == true) {
    hAllRoomVersion();
  }
}
