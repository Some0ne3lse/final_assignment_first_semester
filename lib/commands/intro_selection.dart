import 'package:final_assignment_first_semester/functions/insert_options.dart';

int introSelection (){

  bool validOrInvalid = false;

  int selected = 0;

  while (validOrInvalid == false) {
  print('What do you want to do?');
  print('1: Sit down and cry with your wife.');
  print('2: Go to Bob the Burly mans home. You need your cake.');

  int selection = nullEscapeAndConvertToInt();

    switch (selection) {
      case 1:
        selected = 1;
        validOrInvalid = true;
      case 2:
        selected = 2;
        validOrInvalid = true;
      default:
        print('Not a valid option');
        break;
    }
  }
  return selected;
}