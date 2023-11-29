import 'package:final_assignment_first_semester/areas/kitchen/rooms_visited_kitchen/a_kitchen_no_new_rooms.dart';
import 'package:final_assignment_first_semester/areas/kitchen/rooms_visited_kitchen/b_kitchen_storage_visited.dart';
import 'package:final_assignment_first_semester/functions/room_options/setters/room_setter_two_doors.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';

void kitchen() {
  roomsVisited.add('kitchen');

  roomSetterTwoDoors(
    'storage',
    aKitchenNoNewRooms,
    bKitchenStorageVisited,
  );
}
// void kitchenSetter() {
//   roomsVisited.add('kitchen');
//   print(kitchenDescription());
//   bool haveYouVisitedStorage = roomsVisited.contains('storage');
//
//   if (haveYouVisitedStorage == false){
//     aKitchenNoNewRooms();
//   } else if (haveYouVisitedStorage == true){
//     kitchenStorageVisited();
//   }
//
// }
