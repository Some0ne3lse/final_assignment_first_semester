import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/shoes_item_in_room.dart';
import 'package:final_assignment_first_semester/room_selectors/room_selector_entrance.dart';

// This is the blueprint for the entrance. I didn't use this again, but
// for consistency and using it as a guide for future rooms, I made it like this


// In case 1 I import the options for one item in the room
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
      // In case 1 I didn't use oneItemInRoom, since it activates a boolean,
      // and I couldn't make the boolean move across files. Therefore it has a
      // separate class. This is so the shoes don't show up after giving them to
      // the dog
      case 1:
        shoesItemInRoom();
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
