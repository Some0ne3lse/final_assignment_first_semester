import 'package:final_assignment_first_semester/areas/showing_visited_rooms.dart';
import 'package:final_assignment_first_semester/areas/hall.dart';
import 'package:final_assignment_first_semester/areas/kennel.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/two_doors_and_dog.dart';
import 'package:final_assignment_first_semester/functions/room_options/being_interactions/quick_interaction_dog.dart';
import 'package:final_assignment_first_semester/lists/rooms_visited.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';

void garden() {
  roomsVisited.add('garden');
  // This code starts the quick interaction with the dog when entering the
  // Garden for the first time, or any other time where you didn't tame the
  // dog. When the dog has been tamed, it let's you enter the Garden
  if (tamedDog == false) {
    quickInteractionDog();
  } else if (tamedDog == true) {
    gardenDescription();
    enterToContinue();
    twoDoorsAndDog(
      newRoom: 'kennel',
      printNoNewRooms: noNewRoomsGarden,
      printNewRoom: kennelVisitedGarden,
      roomExamination: gardenExamination,
      selectNewDoor: kennel,
      selectPreviousDoor: hall,
    );
  }
}
