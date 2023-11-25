import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';

void inventoryOptions(){
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
          enterToContinue();
        } else {
          print('You cannot combine this');
        }
      case 2:
        break;
      default:
        print('Not a valid option');
    }
  }
}