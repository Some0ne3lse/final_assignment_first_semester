import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/being_interactions/dead_man.dart';
import 'package:final_assignment_first_semester/functions/room_options/being_interactions/sleeping_man.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/one_item_in_room.dart';

// This is the blueprint for rooms with one door, and Bob

// I wanted to make this into one function for both dog and sleeping man,
// but I could not make the boolean transfer to different files depending
// on what the boolean was, so I made one function for the dog, and one
// for the man

// I import the function sleepingMan, so I can have all the different options
// with alive Bob in one case

// When you've killed Bob, manDead becomes true, and case 1 gives you the
// different options you have for dealing with Bobs dead body

// I also import the function for one item in the room.
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
