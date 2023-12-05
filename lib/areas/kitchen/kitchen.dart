import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/two_doors_one_item.dart';
import 'package:final_assignment_first_semester/areas/showing_visited_rooms.dart';
import 'package:final_assignment_first_semester/lists/rooms_visited.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/interact_action.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';
import 'package:final_assignment_first_semester/areas/storage/storage.dart';
import 'package:final_assignment_first_semester/areas/entrance/entrance.dart';

void kitchen() {
  roomsVisited.add('kitchen');
  kitchenDescription();
  enterToContinue();
  twoDoorsOneItem(
    newRoom: 'storage',
    printNoNewRooms: noNewRoomsKitchen,
    printNewRoom: storageVisitedKitchen,
    roomExamination: kitchenExamination,
    item: 'doughnuts',
    chooseInteract: 'Eat a doughnut',
    interactAction: doughnuts,
    selectNewDoor: storage,
    selectPreviousDoor: entrance,
  );
}