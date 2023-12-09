import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/two_doors_one_hidden.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/making_choice_text.dart';

void hiddenDoor({
  required Function roomExamination,
}) {
  // This code is for the hidden door in the basement. If you don't have the
  // book, you can't do anything
  if (items.contains('book')) {
    roomExamination();
    print('1: Insert book into shelf');
    print('2: Do nothing');
    int hiddenOption = nullEscapeAndConvertToInt();
    switch (hiddenOption) {
      case 1:
        bookInsertedAndHiddenOpened();
        enterToContinue();
        hiddenDoorOpened = true;
        items.remove('book');
        break;
      case 2:
        break;
      default:
        print('Not a valid option');
    }
  } else {
    nothingOfValue();
  }
}
