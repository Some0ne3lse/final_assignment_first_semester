import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/interact_action.dart';

// In this code, you decide what you want to do with your inventory

void inventoryOptions() {
  if (items.isEmpty) {
    print('You have no items');
  } else if (items.isNotEmpty) {
    printInventory();
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
          print('Write your option in the console');
          String item1 = nullEscapeFromString().toLowerCase();
          print('What is the second item you want to combine?');
          print('Write your option in the console');
          String item2 = nullEscapeFromString().toLowerCase();
          if (item1.contains('sleeping-pills') && item2.contains('doughnuts')) {
            print('You insert a few pills into one of the doughnuts');
            enterToContinue();
            items.add('spiked doughnut');
            printInventory();
            enterToContinue();
          } else if (item1.contains('doughnuts') &&
              item2.contains('sleeping-pills')) {
            print('You insert a few pills into one of the doughnuts');
            enterToContinue();
            items.add('spiked doughnut');
            printInventory();
            enterToContinue();
          } else {
            print('You cannot combine these items');
            enterToContinue();
          }
        case 2:
          print('What do you want to examine?');
          print('Write your option in the console');
          printInventory();
          String whatToExamine = nullEscapeFromString().toLowerCase();
          switch (whatToExamine) {
            case 'shoes':
              shoes();
              break;
            case 'saw':
              saw();
              break;
            case 'axe':
              axe();
              break;
            case 'doughnuts':
              doughnuts();
              break;
            case 'basement note':
              basementNoteAction();
              break;
            case 'letter':
              letterAction();
              break;
            case 'homework':
              homeworkAction();
            case 'gold key':
              goldKey();
            case 'book':
              book();
            case 'sleeping-pills':
              sleepingPills();
            case 'hand':
              hand();
            case 'spiked doughnut':
              spikedDoughnut();
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
