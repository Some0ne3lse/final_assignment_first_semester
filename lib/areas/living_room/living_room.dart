import 'package:final_assignment_first_semester/areas/bedroom/bedroom.dart';
import 'package:final_assignment_first_semester/areas/giant_safe/giant_safe.dart';
import 'package:final_assignment_first_semester/areas/living_room/visited_rooms_living_room.dart';
import 'package:final_assignment_first_semester/areas/main_hall/main_hall.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/three_doors_no_item.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';

void livingRoom() {
  roomsVisited.add('livingRoom');
  livingRoomDescription();
  enterToContinue();
  threeDoorsNoItem(
    secondRoom: 'bedroom',
    thirdRoom: 'giantSafe',
    printNoNewRooms: noNewRoomsLivingRoom,
    printSecondRoom: bedroomVisited,
    printThirdRoom: cakeRoomVisited,
    printAll: allRoomsVisitedLivingRoom,
    roomExamination: livingRoomExamination(),
    selectSecondDoor: bedroom,
    selectThirdDoor: giantSafe,
    selectPreviousDoor: mainHall,
  );
}
