import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';

void oneItemInRoom({
  required String item,
  required String roomExamination,
  required String chooseInteract,
  required String interactAction,
}) {
  bool itemTaken = items.contains(item);
  if (itemTaken == false) {
    print('''$roomExamination
    1: Take the $item
    2: $chooseInteract
    3: Leave the $item''');
    int itemOption = nullEscapeAndConvertToInt();
    switch (itemOption) {
      case 1:
        items.add(item);
        print('Your current items are');
        for (String thing in items) {
          // Called thing since item is taken
          print(thing);
        }
        enterToContinue();
        break;
      case 2:
        print(interactAction);
        enterToContinue();
        break;
      case 3:
        break;
      default:
        print('''
        Not a valid option''');
    }
  } else {
    print('''
    You find nothing else of value''');
  }
}
