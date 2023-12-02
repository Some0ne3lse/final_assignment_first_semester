import 'package:final_assignment_first_semester/areas/garden/visited_rooms_garden.dart';
import 'package:final_assignment_first_semester/areas/hall/hall.dart';
import 'package:final_assignment_first_semester/areas/kennel/kennel.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/two_doors_and_dog.dart';
import 'package:final_assignment_first_semester/functions/room_options/quick_interaction/quick_interaction_dog.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';

void garden() {
  roomsVisited.add('garden');
  if (tamedDog == false) {
    quickInteractionDog();
  } else if (tamedDog == true) {
    gardenDescription();
    enterToContinue();
    twoDoorsAndDog(
      newRoom: 'kennel',
      printNoNewRooms: noNewRoomsGarden,
      printNewRoom: kennelVisited,
      roomExamination: gardenExamination(),
      selectNewDoor: kennel,
      selectPreviousDoor: hall,
    );
  }
}
