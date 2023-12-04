import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';

void deadMan(){
  print('Bob is dead.');
  bool optionSelector = false;
  while (optionSelector == false){
    if (items.contains('hand')){
      print('There is nothing else to do here');
      enterToContinue();
      optionSelector = true;
    } else if (items.contains('saw')){
      print('''
      1: Cut off Bobs hand
      2: Leave the poor man alone''');
      int bodyOptions = nullEscapeAndConvertToInt();
      switch(bodyOptions){
        case 1:
          print('''
          You take your saw and cut Bobs hand off.
          You monster''');
          items.add('hand');
          print('Your current items are');
          for (String thing in items) {
            // Called thing since item is taken
            print(thing);
          }
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
      print('''You can't do anything with your current inventory''');
      optionSelector = true;
    }
  }
}