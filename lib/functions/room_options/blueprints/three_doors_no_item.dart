import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/room_selectors/room_selector_three_doors.dart';

void threeDoorsNoItem({
  required String secondRoom,
  required String thirdRoom,
  required Function printNoNewRooms,
  required Function printSecondRoom,
  required Function printThirdRoom,
  required Function printAll,
  required Function roomExamination,
  required Function selectSecondDoor,
  required Function selectThirdDoor,
  required Function selectPreviousDoor,
}) {
  bool optionSelector = false;
  while (optionSelector == false) {
    roomSelectorThreeDoors(
      secondRoom: secondRoom,
      thirdRoom: thirdRoom,
      printNoNewRooms: printNoNewRooms,
      printSecondRoom: printSecondRoom,
      printThirdRoom: printThirdRoom,
      printAll: printAll,
    );
    int roomOptions = nullEscapeAndConvertToInt();
    switch (roomOptions) {
      case 1:
        roomExamination();
        break;
      case 2:
        selectSecondDoor();
        optionSelector = true;
        break;
      case 3:
        selectThirdDoor();
        optionSelector = true;
        break;
      case 4:
        selectPreviousDoor();
        optionSelector = true;
        break;
      case 5:
        inventoryOptions();
        break;
      default:
        print('Not a valid option');
    }
  }
}
