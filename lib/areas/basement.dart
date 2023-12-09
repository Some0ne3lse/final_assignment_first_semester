import 'package:final_assignment_first_semester/areas/showing_visited_rooms.dart';
import 'package:final_assignment_first_semester/areas/hidden_room.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/two_doors_one_hidden.dart';
import 'package:final_assignment_first_semester/lists/rooms_visited.dart';
import 'package:final_assignment_first_semester/areas/hall.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';

void basement() {
  roomsVisited.add('basement');
  // This if else statement is to show whether or not the player has found
  // the hidden door in the basement
  if (hiddenDoorOpened == false) {
    basementDescriptionHiddenNotFound();
  } else {
    basementDescriptionHiddenFound();
  }
  enterToContinue();
  twoDoorsOneHidden(
    newRoom: 'hiddenRoom',
    printHiddenDoorNotFound: hiddenRoomNotFoundBasement,
    printNoNewRooms: hiddenRoomFoundBasement,
    printNewRoom: hiddenRoomFoundBasement,
    roomExamination: basementExamination,
    selectNewDoor: hiddenRoom,
    selectPreviousDoor: hall,
  );
}
