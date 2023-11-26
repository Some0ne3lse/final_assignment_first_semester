// This function is the basic layout for rooms with one door.

import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/item_options.dart';

void oneDoor({
  required String door,
  required String roomExaminationAll,
  String? roomExaminationFirstTaken,
  String? roomExaminationSecondTaken,
  required selectDoor,
  required int itemAmount,
  String? itemOne,
  String? itemTwo,
  String? interactWithOne,
  String? interactWithTwo,
  String? actionOne,
  String? actionTwo,
}) {
  bool optionSelector = false;

  while (optionSelector == false) {
    print('You have the following options');
    print('1: Examine the room');
    print('2: $door');
    print('3: Look at inventory');

    int roomOptions = nullEscapeAndConvertToInt();

    if (roomExaminationFirstTaken != null &&
        roomExaminationSecondTaken != null &&
        itemOne != null &&
        itemTwo != null &&
        interactWithOne != null &&
        interactWithTwo != null &&
        actionOne != null &&
        actionTwo != null &&
        itemAmount == 2) {
      switch (roomOptions) {
        case 1:
          itemOptions(
            roomExaminationAll: roomExaminationAll,
            roomExaminationFirstTaken: roomExaminationFirstTaken,
            roomExaminationSecondTaken: roomExaminationSecondTaken,
            itemOne: itemOne,
            itemTwo: itemTwo,
            takeOptionOne: 'Take the $itemOne',
            takeOptionTwo: 'Take the $itemTwo',
            interactWithOne: interactWithOne,
            interactWithTwo: interactWithTwo,
            interactingOne: actionOne,
            interactingTwo: actionTwo,
            leaveAll: 'Leave both items',
            leaveItemOne: 'Leave the $itemOne',
            leaveItemTwo: 'Leave the $itemTwo',
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
    } else if (itemOne != null &&
            interactWithOne != null &&
            actionOne != null &&
        itemAmount == 1) {
      switch (roomOptions) {
        case 1:
          itemOptions(
              roomExaminationAll: roomExaminationAll,
              itemOne: itemOne,
              takeOptionOne: 'Take the $itemOne',
              interactWithOne: interactWithOne,
              interactingOne: actionOne,
              leaveAll: 'Leave the item');
        case 2:
          selectDoor();
          optionSelector = true;
          break;
        case 3:
          inventoryOptions();
          break;
        default:
          print('Not a valid option');
      }
    } else if (itemAmount == 0) {
      switch (roomOptions) {
        case 1:
          roomExaminationAll;
          break;
        case 2:
          selectDoor();
          optionSelector = true;
          break;
        case 3:
          inventoryOptions();
        default:
          print('Not a valid option');
      }
    }
  }
}
