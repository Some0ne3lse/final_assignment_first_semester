import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/one_item_in_room.dart';
import 'package:final_assignment_first_semester/room_selectors/room_selector_entrance.dart';

void threeDoorsEntrance({
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
  required Function roomExamination,
  required String item,
  required String chooseInteract,
  required Function interactAction,
  required Function selectFirstDoor,
  required Function selectSecondDoor,
  required Function selectThirdDoor,
}) {
  bool optionSelector = false;
  while (optionSelector == false) {
    roomSelectorEntry(
      firstRoom: firstRoom,
      secondRoom: secondRoom,
      thirdRoom: thirdRoom,
      printNoRooms: printNoRooms,
      printFirstRoom: printFirstRoom,
      printSecondRoom: printSecondRoom,
      printThirdRoom: printThirdRoom,
      printFirstAndSecond: printFirstAndSecond,
      printFirstAndThird: printFirstAndThird,
      printSecondAndThird: printSecondAndThird,
      printAll: printAll,
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
        selectFirstDoor();
        optionSelector = true;
        break;
      case 3:
        selectSecondDoor();
        optionSelector = true;
        break;
      case 4:
        selectThirdDoor();
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
