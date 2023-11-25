// This function is the basic layout for rooms with one door

import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/two_items.dart';

void oneDoorTwoItems(
    {required String door,
    required String roomExaminationAll,
    required String roomExaminationFirstTaken,
    required String roomExaminationSecondTaken,
    required String roomExaminationEmpty,
    required selectDoor,
    required String itemOne,
    required String itemTwo,
    required String interactWithOne,
    required String interactWithTwo,
    required String interactingOne,
    required String interactingTwo}) {
  bool optionSelector = false;
  while (optionSelector == false) {
    print('1: Examine the room');
    print('2: $door');
    print('3: Look at inventory');
    int roomOptions = nullEscapeAndConvertToInt();
    switch (roomOptions) {
      case 1:
        twoItems(
          roomExaminationAll: roomExaminationAll,
          roomExaminationFirstTaken: roomExaminationFirstTaken,
          roomExaminationSecondTaken: roomExaminationSecondTaken,
          roomExaminationEmpty: roomExaminationEmpty,
          itemOne: itemOne,
          itemTwo: itemTwo,
          takeOptionOne: 'Take the $itemOne',
          takeOptionTwo: 'Take the $itemTwo',
          interactWithOne: interactWithOne,
          interactWithTwo: interactWithTwo,
          interactingOne: interactingOne,
          interactingTwo: interactingTwo,
          leaveBoth: "Leave both items",
          leaveItemOne: 'Leave the $itemOne',
          leaveItemTwo: 'Leave teh $itemTwo',
        );
        break;
      case 2:
        selectDoor();
        optionSelector = true;
        break;
      case 3:
        inventoryOptions();
        optionSelector = true;
        break;
      default:
        print('Not a valid option');
    }
  }
}
