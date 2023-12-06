import 'package:final_assignment_first_semester/areas/living_room.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
import 'package:final_assignment_first_semester/lists/rooms_visited.dart';
import 'package:final_assignment_first_semester/text_files/endings/good_endings.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/making_choice_text.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';

void giantSafe() {
  roomsVisited.add('giantSafe');
  giantSafeDescription();
  bool optionSelector = false;
  while (optionSelector == false) {
    if (items.contains('gold key') && items.contains('hand')) {
      print('1: Insert hand and key');
      print('2: Go back');
      int safeOptions = nullEscapeAndConvertToInt();
      switch (safeOptions) {
        case 1:
          safeActivated();
          String passwordTerminal = nullEscapeFromString();
          switch (passwordTerminal) {
            case 'cakeisawesomeyouknow':
              optionSelector = true;
              youGotTheCake();
            default:
              print('The password is wrong');
              enterToContinue();
          }
        case 2:
          livingRoom();
          optionSelector = true;
      }
    } else if (items.contains('gold key')) {
      print('1: Insert key');
      print('2: Go back');
      int safeOptions = nullEscapeAndConvertToInt();
      switch (safeOptions) {
        case 1:
          print('Nothing happens');
          enterToContinue();
          break;
        case 2:
          livingRoom();
          optionSelector = true;
      }
    } else if (items.contains('hand')) {
      print('1: Insert hand');
      print('2: Go back');
      int safeOptions = nullEscapeAndConvertToInt();
      switch (safeOptions) {
        case 1:
          print('Nothing happens');
          enterToContinue();
          break;
        case 2:
          livingRoom();
          optionSelector = true;
      }
    } else {
      print('You cannot do anything');
      enterToContinue();
      livingRoom();
    }
  }
}
