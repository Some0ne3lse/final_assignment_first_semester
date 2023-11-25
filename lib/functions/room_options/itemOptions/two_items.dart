// This code is for interaction with items found in different rooms.
// In this case with two items

import 'package:final_assignment_first_semester/functions/room_options/itemOptions/interact_with_item.dart';
import 'package:final_assignment_first_semester/lists/items.dart';

void twoItems({
  required String roomExaminationAll,
  required String roomExaminationFirstTaken,
  required String roomExaminationSecondTaken,
  required String roomExaminationEmpty,
  required String itemOne,
  required String itemTwo,
  required String takeOptionOne,
  required String takeOptionTwo,
  required String interactWithOne,
  required String interactWithTwo,
  required String interactingOne,
  required String interactingTwo,
  required String leaveBoth,
  required String leaveItemOne,
  required String leaveItemTwo,

}) {
  bool itemOneTaken = items.contains(itemOne);
  bool itemTwoTaken = items.contains(itemTwo);
  if (itemOneTaken == false && itemTwoTaken == false) {
    print(roomExaminationAll);
    print('1: $takeOptionOne');
    print('2: $takeOptionTwo');
    print('3: $interactWithOne');
    print('4: $interactWithTwo');
    print('5: $leaveBoth');
    interactWithTwoItems(
      takingItemOne: itemOne,
      takingItemTwo: itemTwo,
      interactingOne: interactingOne,
      interactingTwo: interactingTwo,
    );
  } else if (itemOneTaken == true && itemTwoTaken == false) {
    print(roomExaminationFirstTaken);
    print('1: $takeOptionTwo');
    print('2: $interactWithTwo');
    print('3: $leaveItemOne');
    interactWithOneItem(takingItem: itemTwo, interacting: interactingTwo,);
  } else if (itemOneTaken == false && itemTwoTaken == true) {
    print(roomExaminationSecondTaken);
    print('1: $takeOptionOne');
    print('2: $interactWithOne');
    print('3: $leaveItemTwo');
    interactWithOneItem(takingItem: itemOne, interacting: interactingOne);
  } else if (itemOneTaken == true && itemTwoTaken == true) {
    print(roomExaminationEmpty);
    print('You find nothing else of value');
  }
}
