import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
import 'package:final_assignment_first_semester/text_files/bad_ending.dart';
import 'package:final_assignment_first_semester/text_files/quick_interaction_text.dart';

bool tamedDog = false;
void quickAction({required Function room}) {
  print('The dog runs toward you. What do you want to do?');
  bool optionSelector = false;
  while (optionSelector == false) {
    if (items.contains('axe') && items.contains('shoes')) {
      print('1: Try to run back inside');
      print('2: Try to pet the dog');
      print('3: Try to kill the dog with axe');
      print('4: Throw the shoes towards the dog');
      print('5: Give up on life');
      int quickOption = nullEscapeAndConvertToInt();
      switch (quickOption) {
        case 1:
          room();
          optionSelector = true;
          break;
        case 2:
          badEndingPetDog();
          optionSelector = true;
          break;
        case 3:
          badEndingMonster();
          optionSelector = true;
          break;
        case 4:
          happyDog();
          tamedDog = true;
          optionSelector = true;
          room();
          break;
        case 5:
          givingUpOnLifeDog();
          optionSelector = true;
          break;
        default:
          print('Not an option');
      }
    } else if (items.contains('axe')) {
      print('1: Try to run back inside');
      print('2: Try to pet the dog');
      print('3: Try to kill the dog with axe');
      print('4: Give up on life');
      int quickOption = nullEscapeAndConvertToInt();
      switch (quickOption) {
        case 1:
          room();
          optionSelector = true;
          break;
        case 2:
          badEndingPetDog();
          optionSelector = true;
          break;
        case 3:
          badEndingMonster();
          optionSelector = true;
          break;
        case 4:
          givingUpOnLifeDog();
          optionSelector = true;
          break;
        default:
          print('Not an option');
      }
    } else if (items.contains('shoes')) {
      print('1: Try to run back inside');
      print('2: Try to pet the dog');
      print('3: Throw the shoes towards the dog');
      print('4: Give up on life');
      int quickOption = nullEscapeAndConvertToInt();
      switch (quickOption) {
        case 1:
          room();
          optionSelector = true;
          break;
        case 2:
          badEndingPetDog();
          optionSelector = true;
          break;
        case 3:
          happyDog();
          tamedDog = true;
          room();
          optionSelector = true;
          break;
        case 4:
          givingUpOnLifeNoAxeDog();
          optionSelector = true;
          break;
        default:
          print('Not an option');
      }
    } else {
      print('1: Try to run back inside');
      print('2: Try to pet the dog');
      print('3: Give up on life');
      int quickOption = nullEscapeAndConvertToInt();
      switch (quickOption) {
        case 1:
          room();
          optionSelector = true;
          break;
        case 2:
          badEndingPetDog();
          optionSelector = true;
          break;
        case 3:
          givingUpOnLifeNoAxeDog();
          optionSelector = true;
          break;
        default:
          print('Not an option');
      }
    }
  }
}
