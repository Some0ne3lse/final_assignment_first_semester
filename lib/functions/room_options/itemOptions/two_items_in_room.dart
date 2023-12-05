import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';

void twoItemsInRoom({
  required Function roomExaminationAll,
  required Function roomExaminationFirstTaken,
  required Function roomExaminationSecondTaken,
  required String itemOne,
  required String itemTwo,
  required String chooseInteractWithOne,
  required String chooseInteractWithTwo,
  required Function interactActionOne,
  required Function interactActionTwo,
}) {
  bool itemOneTaken = items.contains(itemOne);
  bool itemTwoTaken = items.contains(itemTwo);
  if (itemOneTaken == false && itemTwoTaken == false) {
    roomExaminationAll();
    print('1: Take the $itemOne');
    print('2: Take the $itemTwo');
    print('3: $chooseInteractWithOne');
    print('4: $chooseInteractWithTwo');
    print('5: Leave the $itemOne and $itemTwo');
    int itemOption = nullEscapeAndConvertToInt();
    switch (itemOption) {
      case 1:
        items.add(itemOne);
        printInventory();
        enterToContinue();
        break;
      case 2:
        items.add(itemTwo);
        printInventory();
        enterToContinue();
        break;
      case 3:
        interactActionOne();
        enterToContinue();
        break;
      case 4:
        interactActionTwo();
        enterToContinue();
        break;
      case 5:
        break;
      default:
        print('''
        Not a valid option''');
    }
  } else if (itemOneTaken == true && itemTwoTaken == false) {
    roomExaminationFirstTaken();
    print('1: Take the $itemTwo');
    print('2: $chooseInteractWithTwo');
    print('3: Leave the $itemTwo');
    int itemOption = nullEscapeAndConvertToInt();
    switch (itemOption) {
      case 1:
        items.add(itemTwo);
        print('Your current items are');
        printInventory();
        enterToContinue();
        break;
      case 2:
        interactActionTwo();
        enterToContinue();
        break;
      case 3:
        break;
      default:
        print('''
        Not a valid option''');
    }
  } else if (itemOneTaken == false && itemTwoTaken == true) {
    roomExaminationSecondTaken();
    print('1: Take the $itemOne');
    print('2: $chooseInteractWithOne');
    print('3: Leave the $itemOne');
    int itemOption = nullEscapeAndConvertToInt();
    switch (itemOption) {
      case 1:
        items.add(itemOne);
        print('Your current items are');
        printInventory();
        enterToContinue();
        break;
      case 2:
        interactActionOne();
        enterToContinue();
        break;
      case 3:
        break;
      default:
        print('Not a valid option');
    }
  } else if (itemOneTaken == true && itemTwoTaken == true) {
    nothingOfValue();
  }
}
