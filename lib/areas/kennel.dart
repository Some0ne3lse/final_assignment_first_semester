import 'package:final_assignment_first_semester/areas/garden.dart';
import 'package:final_assignment_first_semester/areas/showing_visited_rooms.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/one_door_one_item.dart';
import 'package:final_assignment_first_semester/lists/rooms_visited.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/interact_action.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';

bool sleepingDog = false;
void kennel() {
  roomsVisited.add('kennel');
  if (sleepingDog == false) {
    print('The dog will not let you in here');
    enterToContinue();
    garden();
  } else if (sleepingDog == true) {
    kennelDescription();
    enterToContinue();
    onDoorOneItem(
      printNoNewRooms: visitingKennel,
      roomExamination: kennelExamination,
      item: 'homework',
      chooseInteract: 'Read the homework',
      interactAction: homeworkAction,
      selectPreviousDoor: garden,
    );
  }
}
