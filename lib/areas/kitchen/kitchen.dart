import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/two_doors_one_item.dart';
import 'package:final_assignment_first_semester/areas/kitchen/visited_rooms_kitchen.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';
import 'package:final_assignment_first_semester/areas/storage/storage.dart';
import 'package:final_assignment_first_semester/areas/entrance/entrance.dart';

void kitchen() {
  roomsVisited.add('kitchen');
  kitchenDescription();
  enterToContinue();
  twoDoorsOneItem(
    newRoom: 'storage',
    printNoNewRooms: noNewRoomsKitchen,
    printNewRoom: storageVisited,
    roomExamination: kitchenExamination(),
    item: 'doughnuts',
    chooseInteract: 'Eat a doughnut',
    interactAction:
        'You eat a doughnut. It tastes nice, but not as nice as your cake',
    selectNewDoor: storage,
    selectPreviousDoor: entrance,
  );
}