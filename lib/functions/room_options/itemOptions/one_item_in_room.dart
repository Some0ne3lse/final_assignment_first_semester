import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';

void oneItemInRoom({
  required String item,
  required Function roomExamination,
  required String chooseInteract,
  required Function interactAction,
}) {
  bool itemTaken = items.contains(item);
  if (itemTaken == false) {
    roomExamination();
    print('1: Take the $item');
    print('2: $chooseInteract');
    print('3: Leave the $item');
    int itemOption = nullEscapeAndConvertToInt();
    switch (itemOption) {
      case 1:
        items.add(item);
        printInventory();
        enterToContinue();
        break;
      case 2:
        interactAction();
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
