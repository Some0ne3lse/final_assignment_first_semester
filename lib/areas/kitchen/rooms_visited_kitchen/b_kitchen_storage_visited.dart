import 'package:final_assignment_first_semester/areas/entrance/entrance.dart';
import 'package:final_assignment_first_semester/areas/storage/storage.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/two_doors.dart';
import 'package:final_assignment_first_semester/lists/items.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';

void bKitchenStorageVisited() {
  twoDoorsAndItem(
    firstDoor: 'Go to the storage',
    secondDoor: 'Go to the Entrance',
    roomExamination: kitchenExamination(),
    selectFirstDoor: storage,
    selectSecondDoor: entrance,
    item: 'doughnuts',
    interactWithItem: 'Eat a doughnut',
    interacting:
    'You eat a doughnut. It tastes nice, but not as nice as your cake',
  );
}

// void bKitchenStorageVisited() {
//   bool optionSelector = false;
//   while (optionSelector == false){
//     print('You have the following options');
//     print('1: Examine the room');
//     print('2: Go to the Storage');
//     print('3: Go back to the entrance');
//     int kitchenOptions = nullEscapeAndConvertToInt();
//     switch(kitchenOptions) {
//       case 1:
//         bool doughnutOrNot = items.contains('doughnuts');
//         if (doughnutOrNot == false) {
//           print('There is a box of doughnuts on the counter. All drawers are '
//               'locked, so you can\'t find a knife to defend yourself.');
//           print('What do you want to do?:');
//           print('1: Take the doughnuts');
//           print('2: Eat a doughnut');
//           print('3: Leave the doughnuts');
//           int doughnutOption = nullEscapeAndConvertToInt();
//           switch (doughnutOption) {
//             case 1:
//               items.add('doughnuts');
//               print('Your current items are $items');
//               break;
//             case 2:
//               print('You eat a doughnut. It tastes nice');
//               break;
//             case 3:
//               break;
//             default:
//               print('Not a valid option');
//           }
//         } else {
//           print('You find nothing else of use');
//         }
//
//       case 2:
//         storage();
//         optionSelector = true;
//         break;
//       case 3:
//         entrance();
//         break;
//       default:
//         print('Not a valid option');
//     }
//   }
// }
