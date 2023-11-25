import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/three_options.dart';

// This function is the basic layout for rooms with three doors and one item

void threeDoorsAndItem(
  String firstDoor,
  String secondDoor,
  String thirdDoor,
  String roomExamination,
  Function selectFirstDoor,
  Function selectSecondDoor,
  Function selectThirdDoor,
  String item,
  String itemSpecial,
  String itemSpecialConsequence,
) {
  bool optionSelector = false;

  while (optionSelector == false) {
    print('You have the following options');
    print('1: Examine the room');
    print('2: $firstDoor');
    print('3: $secondDoor');
    print('4: $thirdDoor');
    print('5: Look at inventory');
    int roomOptions = nullEscapeAndConvertToInt();
    switch (roomOptions) {
      case 1:
        threeOptions(
          roomExamination,
          item,
          'Take the $item',
          itemSpecial,
          'Leave the $item',
          itemSpecialConsequence,
        );
        break;
      case 2:
        selectFirstDoor();
        optionSelector = true;
        break;
      case 3:
        selectSecondDoor();
        optionSelector = true;
      case 4:
        selectThirdDoor();
        optionSelector = true;
      case 5:
        inventoryOptions();
        break;
      default:
        print('Not a valid option');
    }
  }
}
