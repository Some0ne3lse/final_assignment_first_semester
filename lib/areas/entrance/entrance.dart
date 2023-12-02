import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/three_doors_entrance.dart';
import 'package:final_assignment_first_semester/areas/entrance/visited_rooms_entrance.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';
import 'package:final_assignment_first_semester/areas/kitchen/kitchen.dart';
import 'package:final_assignment_first_semester/areas/main_hall/main_hall.dart';
import 'package:final_assignment_first_semester/areas/library/library.dart';

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
    printFirstRoom: kitchenVisited,
    printSecondRoom: mainHallVisited,
    printThirdRoom: libraryVisited,
    printFirstAndSecond: kitchenAndMainHallVisited,
    printFirstAndThird: kitchenAndLibraryVisited,
    printSecondAndThird: mainHallAndLibraryVisited,
    printAll: allRoomsVisitedEntrance,
    roomExamination: entranceExamination(),
    item: 'shoes',
    chooseInteract: 'Try the shoes on',
    interactAction: 'The shoes are too big for you',
    selectFirstDoor: kitchen,
    selectSecondDoor: mainHall,
    selectThirdDoor: library,
  );
}
