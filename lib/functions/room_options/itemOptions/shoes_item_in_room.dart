import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/interact_action.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';

bool shoesTaken = false;
void shoesItemInRoom() {
  if (shoesTaken == false){
    entranceExamination();
    print('1: Take the shoes');
    print('2: Try the shoes on');
    print('3: Leave the shoes');
    int itemOption = nullEscapeAndConvertToInt();
    switch (itemOption) {
      case 1:
        shoesTaken = true;
        items.add('shoes');
        printInventory();
        enterToContinue();
        break;
      case 2:
        shoes;
        enterToContinue();
        break;
      case 3:
        break;
      default:
        print('Not a valid option');
    }
  } else {
    nothingOfValue();
  }
}