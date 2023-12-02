import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/one_item_in_room.dart';
import 'package:final_assignment_first_semester/room_selectors/room_selector_two_doors.dart';

void twoDoorsOneItem({
  required String newRoom,
  required Function printNoNewRooms,
  required Function printNewRoom,
  required String roomExamination,
  required String item,
  required String chooseInteract,
  required String interactAction,
  required Function selectNewDoor,
  required Function selectPreviousDoor,
}) {
  bool optionSelector = false;
  while (optionSelector == false) {
    roomSelectorTwoDoors(
      newRoom: newRoom,
      printNoNewRooms: printNoNewRooms,
      printNewRoom: printNewRoom,
    );
    int roomOptions = nullEscapeAndConvertToInt();
    switch (roomOptions) {
      case 1:
        oneItemInRoom(
          item: item,
          roomExamination: roomExamination,
          chooseInteract: chooseInteract,
          interactAction: interactAction,
        );
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
