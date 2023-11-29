import 'package:final_assignment_first_semester/functions/room_options/different_descriptions/different_descriptions.dart';
import 'package:final_assignment_first_semester/functions/room_options/setters/room_setter_three_doors.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/areas/hall/rooms_visited/a_only_main_hall_visited.dart';
import 'package:final_assignment_first_semester/areas/hall/rooms_visited/b_main_hall_and_garden_visited.dart';
import 'package:final_assignment_first_semester/areas/hall/rooms_visited/c_main_hall_and_basement_visited.dart';
import 'package:final_assignment_first_semester/areas/hall/rooms_visited/d_all_rooms_visited_hall.dart';

void hall() {
  roomsVisited.add('hall');
  roomSetterThreeDoors('mainHall', 'garden', 'basement', aOnlyMainHallVisited, bMainHallAndGardenVisited, cMainHallAndBasementVisited, dAllRoomsVisitedHall);
}
