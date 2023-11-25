import 'package:final_assignment_first_semester/functions/room_options/itemOptions/interact_with_item.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
// This code is for interaction with items found in different rooms.
// In this case with one item, and three options

void oneItemThreeOptions({
  required String roomExamination,
  required String item,
  required String takeItem,
  required String interactWithItem,
  required String leaveItem,
  required String interacting,
}) {
  bool itemTaken = items.contains(item);
  if (itemTaken == false) {
    print(roomExamination);
    print('1: $takeItem');
    print('2: $interactWithItem');
    print('3: $leaveItem');
    interactWithOneItem(
      takingItem: item,
      interacting: interacting,
    );
  } else {
    print('You find nothing else of value');
  }
}
