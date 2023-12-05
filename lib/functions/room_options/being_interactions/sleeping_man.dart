import 'package:final_assignment_first_semester/areas/bedroom/bedroom.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
import 'package:final_assignment_first_semester/text_files/endings/bad_endings.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/making_choice_text.dart';

bool manDead = false;
void sleepingMan() {
  sleepingBob();
  bool optionSelector = false;
  while (optionSelector == false) {
    if (items.contains('axe')) {
      print('1: Kill the man in his sleep');
      print('2: Try to take the book under his pillow');
      print('3: Leave the man alone');
      int manOptions = nullEscapeAndConvertToInt();
      switch (manOptions) {
        case 1:
          manDead = true;
          killInColdBlood();
          enterToContinue();
          items.add('book');
          printInventory();
          enterToContinue();
          bedroom();
          optionSelector = true;
          break;
        case 2:
          tryToTakeBook();
          print('1: Stand your ground. Prepare your axe');
          print('2: Try to run away');
          print('3: Give up on life');
          int awakeBobOptions = nullEscapeAndConvertToInt();
          switch (awakeBobOptions) {
            case 1:
              manDead = true;
              killInDefence();
              enterToContinue();
              items.add('book');
              printInventory();
              enterToContinue();
              bedroom();
              optionSelector = true;
              break;
            case 2:
              runAwayFromBob();
              optionSelector = true;
              break;
            case 3:
              giveUpOnLifeBob();
              optionSelector = true;
              break;
            default:
              print('Not an option');
          }
        case 3:
          optionSelector = true;
          bedroom();
          break;
        default:
          print('Not an option');
      }
    } else {
      print('''
      1: Try to take the book under his pillow
      2: Leave the man alone''');
      int manOptions = nullEscapeAndConvertToInt();
      switch (manOptions) {
        case 1:
          tryToTakeBook();
          print('1: Try to run away');
          print('2: Give up on life');
          int awakeBobOptions = nullEscapeAndConvertToInt();
          switch (awakeBobOptions) {
            case 1:
              runAwayFromBob();
              optionSelector = true;
              break;
            case 2:
              giveUpOnLifeBob();
              optionSelector = true;
              break;
            default:
              print('Not an option');
          }
        case 2:
          optionSelector = true;
          bedroom();
          break;
        default:
          print('Not an option');
      }
    }
  }
}
