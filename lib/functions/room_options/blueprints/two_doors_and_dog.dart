import 'package:final_assignment_first_semester/areas/kennel.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
import 'package:final_assignment_first_semester/room_selectors/room_selector_two_doors.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/making_choice_text.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';

// I wanted to make this into one function for both dog and sleeping man,
// but I could not make the boolean transfer to different files depending
// on what the boolean was, so I made one function for the dog, and one
// for the man

void twoDoorsAndDog({
  required String newRoom,
  required Function printNoNewRooms,
  required Function printNewRoom,
  required Function roomExamination,
  required Function selectNewDoor,
  required Function selectPreviousDoor,
}) {
  bool optionSelector = false;
  while (optionSelector == false) {
    roomSelectorTwoDoors(
      newRoom: newRoom,
      printNoNewRooms: printNoNewRooms,
      printNewRoom: printNewRoom,
    );
    int roomOptions = nullEscapeAndConvertToInt();
    bool interactItem = items.contains('spiked doughnut');
    switch (roomOptions) {
      case 1:
        if (sleepingDog == false) {
          if (interactItem == true) {
            roomExamination();
            enterToContinue();
            print('1: Give the dog the spiked doughnuts');
            print('2: Leave the dog');
            int itemOption = nullEscapeAndConvertToInt();
            switch (itemOption) {
              case 1:
                dogEatsDoughnut();
                sleepingDog = true;
                items.remove('spiked doughnut');
                break;
              case 2:
                break;
            }
          } else if (interactItem == false) {
            gardenExamination();
            enterToContinue();
          }
        } else if (sleepingDog == true) {
          print('There is nothing of interest, and the dog is sleeping');
          enterToContinue();
        }
      case 2:
        selectNewDoor();
        optionSelector = true;
        break;
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
