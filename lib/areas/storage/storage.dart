import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/one_door_two_items.dart';
import 'package:final_assignment_first_semester/lists/rooms_visited.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/interact_action.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';
import 'package:final_assignment_first_semester/areas/storage/visited_rooms_storage.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';
import 'package:final_assignment_first_semester/areas/kitchen/kitchen.dart';

void storage() {
  roomsVisited.add('storage');
  storageDescription();
  enterToContinue();
  oneDoorTwoItems(
      printNoNewRooms: visitingStorage,
      roomExaminationAll: storageExaminationAll,
      roomExaminationFirstTaken: storageExaminationSawTaken,
      roomExaminationSecondTaken: storageExaminationAxeTaken,
      itemOne: 'saw',
      itemTwo: 'axe',
      chooseInteractWithOne: 'Check if the saw is sharp',
      chooseInteractWithTwo: 'Check if the axe is in good condition',
      interactActionOne: saw,
      interactActionTwo: axe,
      selectPreviousDoor: kitchen);
}
