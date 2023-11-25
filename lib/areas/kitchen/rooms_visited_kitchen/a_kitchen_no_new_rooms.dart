import 'package:final_assignment_first_semester/functions/room_options/two_doors_and_item.dart';
import 'package:final_assignment_first_semester/areas/storage/storage.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';
import 'package:final_assignment_first_semester/areas/entrance/entrance.dart';

void aKitchenNoNewRooms() {
  twoDoorsAndItem(
    'Go through the door in the corner',
    'Go back to the entrance',
    kitchenExamination(),
    storage,
    entrance,
    'doughnuts',
    'Eat a doughnut',
    'You eat a doughnut. It tastes nice.',
  );
}
// void noNewRooms() {
//   bool optionSelector = false;
//   while (optionSelector == false){
//     print('You have the following options');
//     print('1: Examine the room');
//     print('2: Go through the door in the corner');
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
//       default:
//         print('Not a valid option');
//     }
//   }
// }
