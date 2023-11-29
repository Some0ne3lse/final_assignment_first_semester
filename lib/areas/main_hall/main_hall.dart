import 'package:final_assignment_first_semester/functions/room_options/setters/room_setter_three_doors.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/areas/main_hall/rooms_visited/a_only_entry_room_visited.dart';
import 'package:final_assignment_first_semester/areas/main_hall/rooms_visited/b_entry_and_hall_visited.dart';
import 'package:final_assignment_first_semester/areas/main_hall/rooms_visited/c_entry_and_living_room_visited.dart';
import 'package:final_assignment_first_semester/areas/main_hall/rooms_visited/d_all_rooms_visited_mh.dart';

void mainHall() {
  roomsVisited.add('mainHall');
  roomSetterThreeDoors(
    'entrance',
    'hall',
    'livingRoom',
    aOnlyEntryRoomVisited,
    bEntryAndHallVisited,
    cEntryAndLivingRoomVisited,
    bAllRoomsVisitedMainHall,
  );
}
