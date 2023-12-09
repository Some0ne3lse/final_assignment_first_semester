import 'package:final_assignment_first_semester/areas/living_room.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
import 'package:final_assignment_first_semester/lists/rooms_visited.dart';
import 'package:final_assignment_first_semester/text_files/endings/good_endings.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/making_choice_text.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';

void giantSafe() {
  // This is the code for the final room to enter
  roomsVisited.add('giantSafe');
  giantSafeDescription();
  bool optionSelector = false;
  while (optionSelector == false) {
    // If the player has both the key and hand, it let's you enter the password
    if (items.contains('gold key') && items.contains('hand')) {
      print('1: Insert hand and key');
      print('2: Go back');
      int safeOptions = nullEscapeAndConvertToInt();
      switch (safeOptions) {
        case 1:
          safeActivated();
          String passwordTerminal = nullEscapeFromString();
          // Here it asks the player for the password. If wrong, it'll give
          // the message in default, if correct, the final text message
          switch (passwordTerminal) {
            case 'cakeisawesomeyouknow':
              youGotTheCake();
              optionSelector = true;
            default:
              print('The password is wrong');
              enterToContinue();
          }
        case 2:
          livingRoom();
          optionSelector = true;
      }
      // Below it does nothing if you only have one or 0 of the required items
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
