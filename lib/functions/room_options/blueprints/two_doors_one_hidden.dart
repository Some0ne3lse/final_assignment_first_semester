import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/hidden_door.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/room_selectors/room_selector_two_doors.dart';

bool hiddenDoorOpened = false;
void twoDoorsOneHidden({
  required String newRoom,
  required Function printHiddenDoorNotFound,
  required Function printNoNewRooms,
  required Function printNewRoom,
  required String roomExamination,
  required Function selectNewDoor,
  required Function selectPreviousDoor,
}) {
  bool optionSelector = false;
  while (optionSelector == false) {
    if (hiddenDoorOpened == false) {
      printHiddenDoorNotFound();
      int roomOptions = nullEscapeAndConvertToInt();
      switch (roomOptions) {
        case 1:
          hiddenDoor(roomExamination: roomExamination);
          break;
        case 2:
          selectPreviousDoor();
          optionSelector = true;
          break;
        case 3:
          inventoryOptions();
          break;
        default:
          print('Not a valid option');
      }
    } else if (hiddenDoorOpened == true) {
      roomSelectorTwoDoors(
        newRoom: newRoom,
        printNoNewRooms: printNoNewRooms,
        printNewRoom: printNewRoom,
      );
      int roomOptions = nullEscapeAndConvertToInt();
      switch (roomOptions) {
        case 1:
          print('You find nothing else of value');
          break;
        case 2:
          selectNewDoor();
          optionSelector = true;
          break;
        case 3:
          selectPreviousDoor();
          optionSelector = true;
          break;
        case 4:
          inventoryOptions();
          break;
        default:
          print('Not a valid option');
      }
    }
  }
}
