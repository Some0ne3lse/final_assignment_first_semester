import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';

import '../../../text_files/notes.dart';

// In this code, you decide what you want to do with your inventory

void inventoryOptions() {
  if (items.isEmpty) {
    print('You have no items');
  } else if (items.isNotEmpty) {
    print('Your items are:');
    for (String item in items) {
      print(item);
    }
    bool optionSelector = false;
    while (optionSelector == false) {
      print('What do you want to do?');
      print('1: Combine items');
      print('2: Examine your items');
      print('3: Continue your search');
      int itemOptionSelector = nullEscapeAndConvertToInt();
      switch (itemOptionSelector) {
        case 1:
          print('What is the first item you want to combine?');
          String item1 = nullEscapeFromString().toLowerCase();
          print('What is the second item you want to combine?');
          String item2 = nullEscapeFromString().toLowerCase();
          if (item1.contains('sleeping-pills') && item2.contains('doughnuts')) {
            print('You insert a few pills in one of the doughnuts');
            items.add('spiked doughnut');
            for (String thing in items) {
              // Called thing since item is taken
              print(thing);
            }
            enterToContinue();
          } else if (item1.contains('doughnuts') &&
              item2.contains('sleeping-pills')) {
            print('You insert a few pills in one of the doughnuts');
            items.add('spiked doughnut');
            for (String thing in items) {
              // Called thing since item is taken
              print(thing);
            }
            enterToContinue();
          } else {
            print('You cannot combine these items');
          }
        case 2:
          print('What do you want to examine?');
          print('Write your option in the console');
          for (String item in items) {
            print(item);
          }
          String whatToExamine = nullEscapeFromString().toLowerCase();
          switch (whatToExamine) {
            case 'shoes':
              print(
                  'The shoes are too big for you. They have chewing marks on them');
              break;
            case 'saw':
              print('The saw is sharp. You almost cut yourself');
              break;
            case 'axe':
              print('The axe is in fine condition');
              break;
            case 'doughnuts':
              print(
                  'You eat a doughnut. It tastes nice, but not as nice as your cake');
              break;
            case 'basement note':
              print('The note reads as following: ${basementNote()}');
              break;
            case 'letter':
              print('The letter reads as following: ${letter()}');
              break;
            case 'homework':
              print('The homework reads as following: ${homework()}');
            default:
              print('You do not have this item');
          }
          enterToContinue();
        case 3:
          optionSelector = true;
          break;
        default:
          print('Not a valid option');
      }
    }
  }
}
