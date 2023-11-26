import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/item_options.dart';

// This function is the basic layout for rooms with three doors and one item

void threeDoorsAndItem({
  required String firstDoor,
  required String secondDoor,
  required String thirdDoor,
  required String roomExaminationAll,
  String? roomExaminationFirstTaken,
  String? roomExaminationSecondTaken,
  required Function selectFirstDoor,
  required Function selectSecondDoor,
  required Function selectThirdDoor,
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
    print('2: $firstDoor');
    print('3: $secondDoor');
    print('4: $thirdDoor');
    print('5: Look at inventory');
    int roomOptions = nullEscapeAndConvertToInt();
    // This if else is for changing the room depending on item amount
    if (roomExaminationFirstTaken != null &&
        roomExaminationSecondTaken != null &&
        itemOne != null &&
        itemTwo != null &&
        interactWithOne != null &&
        interactWithTwo != null &&
        actionOne != null &&
        actionTwo != null && itemAmount == 2) {
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
        case 2:
          selectFirstDoor();
          optionSelector = true;
          break;
        case 3:
          selectSecondDoor();
          optionSelector = true;
        case 4:
          selectThirdDoor();
          optionSelector = true;
        case 5:
          inventoryOptions();
          break;
        default:
          print('Not a valid option');
      }
    } else if (itemOne != null &&
        interactWithOne != null &&
        actionOne != null && itemAmount == 1) {
      switch (roomOptions) {
        case 1:
          itemOptions(
            roomExaminationAll: roomExaminationAll,
            itemOne: itemOne,
            takeOptionOne: 'Take the $itemOne',
            interactWithOne: interactWithOne,
            interactingOne: actionOne,
            leaveAll: 'Leave the $itemOne',
          );
          break;
        case 2:
          selectFirstDoor();
          optionSelector = true;
          break;
        case 3:
          selectSecondDoor();
          optionSelector = true;
        case 4:
          selectThirdDoor();
          optionSelector = true;
        case 5:
          inventoryOptions();
          break;
        default:
          print('Not a valid option');
      }
    } else if (itemAmount == 0){
      switch (roomOptions) {
        case 1:
          roomExaminationAll;
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
        case 5:
          inventoryOptions();
          break;
        default:
          print('Not a valid option');
      }
    }
  }
}
