import 'package:final_assignment_first_semester/areas/garden/garden.dart';
import 'package:final_assignment_first_semester/areas/kennel/visited_rooms_kennel.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/one_door_one_item.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/notes.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';

bool sleepingDog = false;
void kennel() {
  roomsVisited.add('kennel');
  if (sleepingDog == false) {
    print('The dog will not let you in here');
    garden();
  } else if (sleepingDog == true) {
    kennelDescription();
    enterToContinue();
    onDoorOneItem(
      printNoNewRooms: visitingKennel,
      roomExamination: kennelExamination(),
      item: 'homework',
      chooseInteract: 'Read the homework',
      interactAction: 'The homework reads as following: ${homework()}',
      selectPreviousDoor: garden,
    );
  }
}
