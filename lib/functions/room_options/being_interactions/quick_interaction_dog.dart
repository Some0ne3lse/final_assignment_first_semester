import 'package:final_assignment_first_semester/areas/garden.dart';
import 'package:final_assignment_first_semester/areas/hall.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
import 'package:final_assignment_first_semester/text_files/endings/bad_endings.dart';
import 'package:final_assignment_first_semester/text_files/endings/good_endings.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/making_choice_text.dart';

// When you enter the Garden for the first time, this is what comes up.
// There are 4 different scenarios depending on which items you have.
// Until you tame the dog, this will always show up when you enter the Garden

bool tamedDog = false;
void quickInteractionDog() {
  angryDog();
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
          hall();
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
          items.remove('shoes');
          enterToContinue();
          tamedDog = true;
          garden();
          optionSelector = true;
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
          hall();
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
          hall();
          optionSelector = true;
          break;
        case 2:
          badEndingPetDog();
          optionSelector = true;
          break;
        case 3:
          happyDog();
          items.remove('shoes');
          enterToContinue();
          tamedDog = true;
          garden();
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
          hall();
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
