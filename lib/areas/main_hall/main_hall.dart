import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/three_doors_one_item.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/notes.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/areas/hall/hall.dart';
import 'package:final_assignment_first_semester/areas/living_room/living_room.dart';
import 'package:final_assignment_first_semester/areas/entrance/entrance.dart';
import 'package:final_assignment_first_semester/areas/main_hall/visited_rooms_main_hall.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';

void mainHall() {
  roomsVisited.add('mainHall');
  mainHallDescription();
  enterToContinue();
  threeDoorsOneItem(
    secondRoom: 'hall',
    thirdRoom: 'livingRoom',
    printNoNewRooms: noNewRoomsMainHall,
    printSecondRoom: hallVisited,
    printThirdRoom: livingRoomVisited,
    printAll: allRoomsVisitedMainHall,
    roomExamination: mainHallExamination(),
    item: 'letter',
    chooseInteract: 'Read the letter',
    interactAction: 'The letter reads: ${letter()}',
    selectSecondDoor: hall,
    selectThirdDoor: livingRoom,
    selectPreviousDoor: entrance,
  );
}
// void mainHall() {
//   roomsVisited.add('mainHall');
//   roomSetterThreeDoors(
//     'entrance',
//     'hall',
//     'livingRoom',
//     aOnlyEntryRoomVisited,
//     bEntryAndHallVisited,
//     cEntryAndLivingRoomVisited,
//     bAllRoomsVisitedMainHall,
//   );
// }
