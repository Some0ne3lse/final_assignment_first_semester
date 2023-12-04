import 'package:final_assignment_first_semester/areas/bedroom/bedroom.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
import 'package:final_assignment_first_semester/text_files/endings/bad_endings.dart';

bool manDead = false;
void sleepingMan(){
  print('The man is sound asleep. You see a book under his pillow');
  bool optionSelector = false;
  while (optionSelector == false){
    if (items.contains('axe')){
      print('''
      1: Kill the man in his sleep
      2: Try to take the book under his pillow
      3: Leave the man alone''');
      int manOptions = nullEscapeAndConvertToInt();
      switch (manOptions){
        case 1:
          manDead = true;
          print('''
          You lift the axe above your head and strike.
          His head comes clean off, and blood sprays everywhere.
          You got your revenge. You pick up the book under his pillow.
          A recipe book for cakes.''');
          items.add('book');
          print('Your current items are');
          for (String thing in items) {
            // Called thing since item is taken
            print(thing);
          }
          enterToContinue();
          bedroom();
          optionSelector = true;
          break;
        case 2:
          print('''
          You try to take the book without waking Bob up.
          You move his head to the side, but suddenly his eyes open.
          He screams in anger "I have not had my cake yet!"
          ''');
          print('''
          1: Stand your ground. Prepare your axe
          2: Try to run away
          3: Give up on life''');
          int awakeBobOptions = nullEscapeAndConvertToInt();
          switch(awakeBobOptions){
            case 1:
              manDead = true;
              print('''You bring up your axe.
              When he comes charging against you, you swing your axe...
              Next second he lies dead on the ground. You are safe
              You pick up the book under his pillow.
              A recipe book for cakes.''');
              items.add('book');
              print('Your current items are');
              for (String thing in items) {
                // Called thing since item is taken
                print(thing);
              }
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
      switch (manOptions){
        case 1:
          print('''
          You try to take the book without waking Bob up.
          You move his head to the side, but suddenly his eyes open.
          He screams in anger "I have not had my cake yet!"
          ''');
          print('''
          1: Try to run away
          2: Give up on life''');
          int awakeBobOptions = nullEscapeAndConvertToInt();
          switch(awakeBobOptions){
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