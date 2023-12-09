import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/two_items_in_room.dart';

// This is the blueprint for rooms with one door and two items, so you can
// quickly expand the game if you want.
// I could have made one code for all types of doors and all amounts of items,
// which I did in the beginning, but the code was ugly and convoluted, so I
// split it up into different codes and files.

// In case 1, I import the twoItemsInRooms function

void oneDoorTwoItems({
  required Function printNoNewRooms,
  required Function roomExaminationAll,
  required Function roomExaminationFirstTaken,
  required Function roomExaminationSecondTaken,
  required String itemOne,
  required String itemTwo,
  required String chooseInteractWithOne,
  required String chooseInteractWithTwo,
  required Function interactActionOne,
  required Function interactActionTwo,
  required Function selectPreviousDoor,
}) {
  bool optionSelector = false;
  while (optionSelector == false) {
    printNoNewRooms();
    int roomOptions = nullEscapeAndConvertToInt();
    switch (roomOptions) {
      case 1:
        twoItemsInRoom(
          roomExaminationAll: roomExaminationAll,
          roomExaminationFirstTaken: roomExaminationFirstTaken,
          roomExaminationSecondTaken: roomExaminationSecondTaken,
          itemOne: itemOne,
          itemTwo: itemTwo,
          chooseInteractWithOne: chooseInteractWithOne,
          chooseInteractWithTwo: chooseInteractWithTwo,
          interactActionOne: interactActionOne,
          interactActionTwo: interactActionTwo,
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
