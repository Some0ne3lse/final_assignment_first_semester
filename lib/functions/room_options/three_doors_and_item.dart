import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/itemOptions/three_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';

// This function is the basic layout for rooms with three doors and one item

void threeDoors(
  String firstDoor,
  String secondDoor,
  String thirdDoor,
  String roomExamination,
  Function selectFirstDoor,
  Function selectSecondDoor,
  Function selectThirdDoor,
  String item,
  String itemSpecial,
    String itemSpecialConsequence
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
        selectThirdDoor();
        optionSelector = true;
      case 5:
        if (items.isEmpty) {
          print('You have no items');
        } else if (items.isNotEmpty) {
          print('Your items are:');
          for(String item in items){
            print(item);
          }
          print('What do you want to do?');
          print('1: Combine items');
          print('2: Continue your search');
          int itemOptionSelector  = nullEscapeAndConvertToInt();
          switch (itemOptionSelector){
            case 1:
              print('What is the first item you want to combine?');
              String item1 = nullEscapeFromString().toLowerCase();
              print('What is the second item you want to combine?');
              String item2 = nullEscapeFromString().toLowerCase();
              if (item1.contains('sleeping-pills') && item2.contains('doughnuts')){
                print('You insert a few pills in one of the doughnuts');
                items.add('spiked-doughnuts');
              } else if (item2.contains('doughnuts') && item1.contains('sleeping-pills')){
                print('You insert a few pills in one of the doughnuts');
                items.add('spiked-doughnut');
              } else {
                print('You cannot combine this');
              }
            case 2:
              break;
            default:
              print('Not a valid option');
          }
        }
        enterToContinue();
      default:
        print('Not a valid option');
    }
  }
}
