import 'package:final_assignment_first_semester/areas/bedroom.dart';
import 'package:final_assignment_first_semester/areas/giant_safe.dart';
import 'package:final_assignment_first_semester/areas/showing_visited_rooms.dart';
import 'package:final_assignment_first_semester/areas/main_hall.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/three_doors_no_item.dart';
import 'package:final_assignment_first_semester/lists/rooms_visited.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';

void livingRoom() {
  roomsVisited.add('livingRoom');
  livingRoomDescription();
  enterToContinue();
  threeDoorsNoItem(
    secondRoom: 'bedroom',
    thirdRoom: 'giantSafe',
    printNoNewRooms: noNewRoomsLivingRoom,
    printSecondRoom: bedroomVisitedLivingRoom,
    printThirdRoom: cakeRoomVisitedLivingRoom,
    printAll: allRoomsVisitedLivingRoom,
    roomExamination: livingRoomExamination,
    selectSecondDoor: bedroom,
    selectThirdDoor: giantSafe,
    selectPreviousDoor: mainHall,
  );
}
