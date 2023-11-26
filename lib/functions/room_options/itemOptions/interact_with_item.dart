import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';

void interactWithOneItem({
  required String takingItem,
  required String interacting,
}){
  int itemOption = nullEscapeAndConvertToInt();
  switch (itemOption) {
    case 1:
      items.add(takingItem);
      print('Your current items are');
      for (String thing in items) {
        // Called thing since item is taken
        print(thing);
      }
      enterToContinue();
      break;
    case 2:
      print(interacting);
      break;
    case 3:
      break;
    default:
      print('Not a valid option');
  }
}

void interactWithTwoItems({
  required String takingItemOne,
  required String takingItemTwo,
  required String interactingOne,
  required String interactingTwo,
}) {
  int itemsOption = nullEscapeAndConvertToInt();
  switch (itemsOption) {
    case 1:
      items.add(takingItemOne);
      print('Your current items are');
      for (String thing in items) {
        // Called thing since item is taken
        print(thing);
      }
      enterToContinue();
      break;
    case 2:
      items.add(takingItemTwo);
      print('Your current items are');
      for (String thing in items) {
        // Called thing since item is taken in the other interactions
        print(thing);
      }
      enterToContinue();
      break;
    case 3:
      print(interactingOne);
      break;
    case 4:
      print(interactingTwo);
      break;
    case 5:
      break;
    default:
      print('Not a valid option');
  }
}
