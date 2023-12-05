import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/one_item_in_room.dart';

void onDoorOneItem({
  required Function printNoNewRooms,
  required Function roomExamination,
  required String item,
  required String chooseInteract,
  required Function interactAction,
  required Function selectPreviousDoor,
}) {
  bool optionSelector = false;

  while (optionSelector == false) {
    printNoNewRooms();
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
        selectPreviousDoor();
        optionSelector = true;
        break;
      case 3:
        inventoryOptions();
        break;
      default:
        print('Not a valid option');
    }
  }
}
