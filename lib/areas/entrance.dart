import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/three_doors_entrance.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/interact_action.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';
import 'package:final_assignment_first_semester/areas/kitchen.dart';
import 'package:final_assignment_first_semester/areas/main_hall.dart';
import 'package:final_assignment_first_semester/areas/library.dart';
import 'package:final_assignment_first_semester/areas/showing_visited_rooms.dart';

void entrance() {
  entranceDescription();
  enterToContinue();
  // The following code could be written in only this file, but for consistency
  // and to use it as a blueprint for the following rooms, I've set it up as a
  // reusable code
  threeDoorsEntrance(
    firstRoom: 'kitchen',
    secondRoom: 'mainHall',
    thirdRoom: 'library',
    printNoRooms: noRoomsVisitedEntrance,
    printFirstRoom: kitchenVisitedEntrance,
    printSecondRoom: mainHallVisitedEntrance,
    printThirdRoom: libraryVisitedEntrance,
    printFirstAndSecond: kitchenAndMainHallVisitedEntrance,
    printFirstAndThird: kitchenAndLibraryVisitedEntrance,
    printSecondAndThird: mainHallAndLibraryVisitedEntrance,
    printAll: allRoomsVisitedEntrance,
    selectFirstDoor: kitchen,
    selectSecondDoor: mainHall,
    selectThirdDoor: library,
  );
}
