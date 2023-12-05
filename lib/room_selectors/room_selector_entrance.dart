import 'package:final_assignment_first_semester/lists/rooms_visited.dart';

void roomSelectorEntry({
  required String firstRoom,
  required String secondRoom,
  required String thirdRoom,
  required Function printNoRooms,
  required Function printFirstRoom,
  required Function printSecondRoom,
  required Function printThirdRoom,
  required Function printFirstAndSecond,
  required Function printFirstAndThird,
  required Function printSecondAndThird,
  required Function printAll,
}) {
  bool haveYouVisitedFirstRoom = roomsVisited.contains(firstRoom);
  bool haveYouVisitedSecondRoom = roomsVisited.contains(secondRoom);
  bool haveYouVisitedThirdRoom = roomsVisited.contains(thirdRoom);

  if (haveYouVisitedFirstRoom == false &&
      haveYouVisitedSecondRoom == false &&
      haveYouVisitedThirdRoom == false) {
    printNoRooms();
  } else if (haveYouVisitedFirstRoom == true &&
      haveYouVisitedSecondRoom == false &&
      haveYouVisitedThirdRoom == false) {
    printFirstRoom();
  } else if (haveYouVisitedFirstRoom == false &&
      haveYouVisitedSecondRoom == true &&
      haveYouVisitedThirdRoom == false) {
    printSecondRoom();
  } else if (haveYouVisitedFirstRoom == false &&
      haveYouVisitedSecondRoom == false &&
      haveYouVisitedThirdRoom == true) {
    printThirdRoom();
  } else if (haveYouVisitedFirstRoom == true &&
      haveYouVisitedSecondRoom == true &&
      haveYouVisitedThirdRoom == false) {
    printFirstAndSecond();
  } else if (haveYouVisitedFirstRoom == true &&
      haveYouVisitedSecondRoom == false &&
      haveYouVisitedThirdRoom == true) {
    printFirstAndThird();
  } else if (haveYouVisitedFirstRoom == false &&
      haveYouVisitedSecondRoom == true &&
      haveYouVisitedThirdRoom == true) {
    printSecondAndThird();
  } else {
    printAll();
  }
}