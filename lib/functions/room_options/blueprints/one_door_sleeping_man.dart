import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/being_interactions/dead_man.dart';
import 'package:final_assignment_first_semester/functions/room_options/being_interactions/sleeping_man.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/one_item_in_room.dart';

void oneDoorSleepingMan({
  required Function printManAliveDescription,
  required Function printManDeadDescription,
  required Function roomExamination,
  required String item,
  required String chooseInteract,
  required Function interactAction,
  required Function selectPreviousDoor,
}) {
  bool optionSelector = false;
  while (optionSelector == false) {
    if (manDead == false) {
      printManAliveDescription();
      int roomOptions = nullEscapeAndConvertToInt();
      switch (roomOptions) {
        case 1:
          sleepingMan();
          optionSelector = true;
          break;
        case 2:
          oneItemInRoom(
            item: item,
            roomExamination: roomExamination,
            chooseInteract: chooseInteract,
            interactAction: interactAction,
          );
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
    } else if (manDead == true) {
      printManDeadDescription();
      int roomOptions = nullEscapeAndConvertToInt();
      switch (roomOptions) {
        case 1:
          deadMan();
          break;
        case 2:
          oneItemInRoom(
            item: item,
            roomExamination: roomExamination,
            chooseInteract: chooseInteract,
            interactAction: interactAction,
          );
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
}
