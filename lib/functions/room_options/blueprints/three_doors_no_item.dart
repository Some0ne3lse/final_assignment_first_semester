import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/room_selectors/room_selector_three_doors.dart';

// This is the blueprint for rooms with one three doors and no item, so you can
// quickly expand the game if you want.
// I could have made one code for all types of doors and all amounts of items,
// which I did in the beginning, but the code was ugly and convoluted, so I
// split it up into different codes and files.

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
