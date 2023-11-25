import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';

void threeOptions(String roomExamination ,String item, String optionOne, String optionTwo, String optionThree, String secondOption){
  bool itemTaken = items.contains(item);
  if (itemTaken == false){
    print(roomExamination);
    print('1: $optionOne');
    print('2: $optionTwo');
    print('3: $optionThree');
    int itemOption = nullEscapeAndConvertToInt();
    switch (itemOption) {
      case 1:
        items.add(item);
        print('Your current items are');
        for (String thing in items){ // Called thing since item is taken
          print(thing);
        }
        break;
      case 2:
        print(secondOption);
        break;
      case 3:
        break;
      default:
        print('Not a valid option');
    }
  } else {
    print('You find nothing else of use');
  }
}