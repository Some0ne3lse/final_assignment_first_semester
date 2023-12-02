import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';

void twoItemsInRoom({
  required String roomExaminationAll,
  required String roomExaminationFirstTaken,
  required String roomExaminationSecondTaken,
  required String itemOne,
  required String itemTwo,
  required String chooseInteractWithOne,
  required String chooseInteractWithTwo,
  required String interactActionOne,
  required String interactActionTwo,
}) {
  bool itemOneTaken = items.contains(itemOne);
  bool itemTwoTaken = items.contains(itemTwo);
  if (itemOneTaken == false && itemTwoTaken == false) {
    print('''$roomExaminationAll
    1: Take the $itemOne
    2: Take the $itemTwo
    3: $chooseInteractWithOne
    4: $chooseInteractWithTwo
    5: Leave the $itemOne and $itemTwo''');
    int itemOption = nullEscapeAndConvertToInt();
    switch (itemOption) {
      case 1:
        items.add(itemOne);
        print('Your current items are');
        for (String thing in items) {
          // Called thing since item is taken
          print(thing);
        }
        enterToContinue();
        break;
      case 2:
        items.add(itemTwo);
        print('Your current items are');
        for (String thing in items) {
          // Called thing since item is taken
          print(thing);
        }
        enterToContinue();
        break;
      case 3:
        print(interactActionOne);
        enterToContinue();
        break;
      case 4:
        print(interactActionTwo);
        enterToContinue();
        break;
      case 5:
        break;
      default:
        print('''
        Not a valid option''');
    }
  } else if (itemOneTaken == true && itemTwoTaken == false) {
    print('''$roomExaminationFirstTaken
    1: Take the $itemTwo
    2: $chooseInteractWithTwo
    3: Leave the $itemTwo''');
    int itemOption = nullEscapeAndConvertToInt();
    switch (itemOption) {
      case 1:
        items.add(itemTwo);
        print('Your current items are');
        for (String thing in items) {
          // Called thing since item is taken
          print(thing);
        }
        enterToContinue();
        break;
      case 2:
        print(interactActionTwo);
        enterToContinue();
        break;
      case 3:
        break;
      default:
        print('''
        Not a valid option''');
    }
  } else if (itemOneTaken == false && itemTwoTaken == true) {
    print('''$roomExaminationSecondTaken
    1: Take the $itemOne
    2: $chooseInteractWithOne
    3: Leave the $itemOne''');
    int itemOption = nullEscapeAndConvertToInt();
    switch (itemOption) {
      case 1:
        items.add(itemOne);
        print('Your current items are');
        for (String thing in items) {
          // Called thing since item is taken
          print(thing);
        }
        enterToContinue();
        break;
      case 2:
        print(interactActionOne);
        enterToContinue();
        break;
      case 3:
        break;
      default:
        print('''
        Not a valid option''');
    }
  } else if (itemOneTaken == true && itemTwoTaken == true) {
    print('You find nothing else of value');
  }
}
