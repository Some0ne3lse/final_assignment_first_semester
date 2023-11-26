import 'package:final_assignment_first_semester/areas/kitchen/kitchen.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/one_door.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';
import 'package:final_assignment_first_semester/areas/kitchen/kitchen.dart';

// In this code I didn't include the room setter, since there is only one door

void storage() {
  roomsVisited.add('storage');
  print(storageDescription());

  oneDoor(
    door: 'Go back to the Kitchen',
    roomExaminationAll: storageExaminationAll(),
    roomExaminationFirstTaken: storageExaminationSawTaken(),
    roomExaminationSecondTaken: storageExaminationAxeTaken(),
    selectDoor: kitchen,
    itemAmount: 2,
    itemOne: 'saw',
    itemTwo: 'axe',
    interactWithOne: 'Check if the saw is in a good state',
    interactWithTwo: 'Check how sharp the axe is',
    actionOne: 'The saw looks to be in fine condition',
    actionTwo: 'The axe is sharp. You swing it through the air to test it',
  );

  // oneDoorTwoItems(
  //   door: 'Go back to the Kitchen',
  //   roomExaminationAll: storageExaminationAll(),
  //   roomExaminationFirstTaken: storageExaminationSawTaken(),
  //   roomExaminationSecondTaken: storageExaminationAxeTaken(),
  //   roomExaminationEmpty: 'You find nothing else of value',
  //   selectDoor: kitchenSetter,
  //   itemOne: 'saw',
  //   itemTwo: 'axe',
  //   interactWithOne: 'Check if the saw is in a good state',
  //   interactWithTwo: 'Check how sharp the axe is',
  //   interactingOne: 'The saw looks to be in fine condition',
  //   interactingTwo: 'The axe is sharp. You swing it through the air to test it',
  // );
}
