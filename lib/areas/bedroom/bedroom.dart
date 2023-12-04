import 'package:final_assignment_first_semester/areas/bedroom/visited_rooms_bedroom.dart';
import 'package:final_assignment_first_semester/areas/living_room/living_room.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/being_interactions/sleeping_man.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/one_door_sleeping_man.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';

void bedroom() {
  roomsVisited.add('bedroom');
  if (manDead == false) {
    bedroomDescriptionBobStillAlive();
    enterToContinue();
  } else if (manDead == true) {
    bedroomDescriptionBobDead();
    enterToContinue();
  }
  oneDoorSleepingMan(
    printManAliveDescription: visitingBedroomBobAlive,
    printManDeadDescription: visitingBedroomBobDead,
    roomExamination: bedRoomExamination(),
    item: 'sleeping-pills',
    chooseInteract: 'Look at the pill description',
    interactAction:
        'It reads: Very strong sleeping pills for both humans and animals',
    selectPreviousDoor: livingRoom,
  );
}
