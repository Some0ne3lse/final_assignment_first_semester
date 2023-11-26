import 'package:final_assignment_first_semester/functions/room_options/itemOptions/interact_with_item.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
// This code is to get an overview of what options you have regarding items

void itemOptions({
  required String roomExaminationAll,
  String? roomExaminationFirstTaken,
  String? roomExaminationSecondTaken,
  required String itemOne,
  String? itemTwo,
  required String takeOptionOne,
  String? takeOptionTwo,
  required String interactWithOne,
  String? interactWithTwo,
  required String interactingOne,
  String? interactingTwo,
  required String leaveAll,
  String? leaveItemOne,
  String? leaveItemTwo,
}) {
  bool itemOneTaken = items.contains(itemOne);
  bool itemTwoTaken = items.contains(itemTwo);
  if (itemTwo != null &&
      takeOptionTwo != null &&
      interactWithTwo != null &&
      interactingTwo != null) {
    if (itemOneTaken == false && itemTwoTaken == false) {
      print(roomExaminationAll);
      print('1: $takeOptionOne');
      print('2: $takeOptionTwo');
      print('3: $interactWithOne');
      print('4: $interactWithTwo');
      print('5: $leaveAll');
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
      interactWithOneItem(
        takingItem: itemTwo,
        interacting: interactingTwo,
      );
    } else if (itemOneTaken == false && itemTwoTaken == true) {
      print(roomExaminationSecondTaken);
      print('1: $takeOptionOne');
      print('2: $interactWithOne');
      print('3: $leaveItemTwo');
      interactWithOneItem(
        takingItem: itemOne,
        interacting: interactingOne,
      );
    } else if (itemOneTaken == true && itemTwoTaken == true) {
      print('You find nothing else of value');
    }
  } else if (itemTwo == null &&
      takeOptionTwo == null &&
      interactWithTwo == null &&
      interactingTwo == null) {
    bool itemTaken = items.contains(itemOne);
    if (itemTaken == false) {
      print(roomExaminationAll);
      print('1: $takeOptionOne');
      print('2: $interactWithOne');
      print('3: $leaveAll');
      interactWithOneItem(
        takingItem: itemOne,
        interacting: interactingOne,
      );
    } else {
      print('You find nothing else of value');
    }
  }
}
