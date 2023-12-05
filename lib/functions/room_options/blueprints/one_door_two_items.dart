import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/two_items_in_room.dart';

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
