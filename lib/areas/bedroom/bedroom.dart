import 'package:final_assignment_first_semester/areas/showing_visited_rooms.dart';
import 'package:final_assignment_first_semester/areas/living_room/living_room.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/being_interactions/sleeping_man.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/one_door_sleeping_man.dart';
import 'package:final_assignment_first_semester/lists/rooms_visited.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/interact_action.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';

void bedroom() {
  roomsVisited.add('bedroom');
  if (manDead == false) {
    bedroomDescriptionBobStillAlive();
  } else if (manDead == true) {
    bedroomDescriptionBobDead();
  }
  enterToContinue();
  oneDoorSleepingMan(
    printManAliveDescription: visitingBedroomBobAlive,
    printManDeadDescription: visitingBedroomBobDead,
    roomExamination: bedRoomExamination,
    item: 'sleeping-pills',
    chooseInteract: 'Look at the pill description',
    interactAction: sleepingPills,
    selectPreviousDoor: livingRoom,
  );
}
