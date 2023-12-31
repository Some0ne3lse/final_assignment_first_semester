import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/three_doors_one_item.dart';
import 'package:final_assignment_first_semester/lists/rooms_visited.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/interact_action.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';
import 'package:final_assignment_first_semester/areas/hall.dart';
import 'package:final_assignment_first_semester/areas/living_room.dart';
import 'package:final_assignment_first_semester/areas/entrance.dart';
import 'package:final_assignment_first_semester/areas/showing_visited_rooms.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';

void mainHall() {
  roomsVisited.add('mainHall');
  mainHallDescription();
  enterToContinue();
  threeDoorsOneItem(
    secondRoom: 'hall',
    thirdRoom: 'livingRoom',
    printNoNewRooms: noNewRoomsMainHall,
    printSecondRoom: hallVisitedMainHall,
    printThirdRoom: livingRoomVisitedMainHall,
    printAll: allRoomsVisitedMainHall,
    roomExamination: mainHallExamination,
    item: 'letter',
    chooseInteract: 'Read the letter',
    interactAction: letterAction,
    selectSecondDoor: hall,
    selectThirdDoor: livingRoom,
    selectPreviousDoor: entrance,
  );
}
