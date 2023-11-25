import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/inventory_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/three_options.dart';

// This function is the basic layout for rooms with two doors and one item

void twoDoorsAndItem(
  String firstDoor,
  String secondDoor,
  String roomExamination,
  Function selectFirstDoor,
  Function selectSecondDoor,
  String item,
  String itemSpecial,
  String itemSpecialConsequence,
) {
  bool optionSelector = false;
  while (optionSelector == false) {
    print('1: Examine the room');
    print('2: $firstDoor');
    print('3: $secondDoor');
    print('4: Look at inventory');
    int roomOptions = nullEscapeAndConvertToInt();
    switch (roomOptions) {
      case 1:
        print(roomExamination);
        threeOptions(
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
        inventoryOptions();
        break;
      default:
        print('Not a valid option');
    }
  }
}
