import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/two_doors_one_hidden.dart';
import 'package:final_assignment_first_semester/lists/items.dart';

void hiddenDoor({
  required String roomExamination,
}) {
  if (items.contains('book')) {
    print('''$roomExamination
    1: Insert book into shelf
    2: Do nothing''');
   int hiddenOption = nullEscapeAndConvertToInt();
   switch(hiddenOption){
     case 1:
       print('You insert the book, and you hear a click. The shelf moves to the side');
       enterToContinue();
       hiddenDoorOpened = true;
       items.remove('book');
       break;
     case 2:
       break;
     default:
       print('''Not a valid option''');
   }
  } else {
    print('''
    You find nothing of value''');
  }
}
