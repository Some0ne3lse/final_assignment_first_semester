import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/making_choice_text.dart';

void deadMan(){
  print('Bob is dead.');
  bool optionSelector = false;
  while (optionSelector == false){
    if (items.contains('hand')){
      print('There is nothing else to do here');
      enterToContinue();
      optionSelector = true;
    } else if (items.contains('saw')){
      print('1: Cut off Bobs hand');
      print('2: Leave the poor man alone');
      int bodyOptions = nullEscapeAndConvertToInt();
      switch(bodyOptions){
        case 1:
          takeOffHand();
          items.add('hand');
          enterToContinue();
          printInventory();
          enterToContinue();
          optionSelector = true;
          break;
        case 2:
          optionSelector = true;
          break;
        default:
          print('Not a valid option');
      }
    } else {
      print('You can\'t do anything with your current inventory');
      optionSelector = true;
    }
  }
}