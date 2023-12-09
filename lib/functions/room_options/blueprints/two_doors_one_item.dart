import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/one_item_in_room.dart';
import 'package:final_assignment_first_semester/room_selectors/room_selector_two_doors.dart';

// This is the blueprint for rooms with two doors and one item, so you can
// quickly expand the game if you want.
// I could have made one code for all types of doors and all amounts of items,
// which I did in the beginning, but the code was ugly and convoluted, so I
// split it up into different codes and files.

// In case 1, I import the onItemInRoom function


void twoDoorsOneItem({
  required String newRoom,
  required Function printNoNewRooms,
  required Function printNewRoom,
  required Function roomExamination,
  required String item,
  required String chooseInteract,
  required Function interactAction,
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
