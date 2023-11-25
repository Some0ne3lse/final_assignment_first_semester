import 'package:final_assignment_first_semester/functions/room_options/blueprints/three_doors_and_item.dart';
import 'package:final_assignment_first_semester/areas/kitchen/kitchen.dart';
import 'package:final_assignment_first_semester/areas/main_hall/main_hall.dart';
import 'package:final_assignment_first_semester/areas/library/library.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';
void hAllRoomsVisited() {
  threeDoorsAndItem(
    firstDoor: 'Go to the Kitchen',
    secondDoor: 'Go to the Main Hall',
    thirdDoor: 'Go to the Library',
    roomExamination: entranceExamination(),
    selectFirstDoor: kitchenSetter,
    selectSecondDoor: mainHall,
    selectThirdDoor: library,
    item: 'shoes',
    interactWithItem: 'Try the shoes on',
    interacting: 'The shoes are too big for you',
  );
}

// import 'package:final_assignment_first_semester/areas/kitchen/kitchen.dart';
// import 'package:final_assignment_first_semester/areas/library/library.dart';
// import 'package:final_assignment_first_semester/areas/main_hall/main_hall.dart';
// import 'package:final_assignment_first_semester/functions/insert_options.dart';
// import 'package:final_assignment_first_semester/lists/items.dart';
//
// void allRoomsVisited() {
//   bool optionSelector = false;
//
//   while (optionSelector == false) {
//     print('You have the following options');
//     print('1: Examine the room');
//     print('2: Go to the kitchen');
//     print('3: Go to the Main Hall');
//     print('4: Go to the Library');
//     int entranceOptions = nullEscapeAndConvertToInt();
//     switch (entranceOptions) {
//       case 1:
//         bool shoesOrNot = items.contains('shoes');
//         if (shoesOrNot == false) {
//           print('There is one set of shoes standing in the corner.'
//               'You find nothing else of use.');
//           print('What do you want to do?:');
//           print('1: Take the shoes');
//           print('2: Leave the shoes');
//           print('3: Put on the shoes');
//           int shoesOption = nullEscapeAndConvertToInt();
//           switch (shoesOption) {
//             case 1:
//               items.add('shoes');
//               print('Your current items are $items');
//               break;
//             case 2:
//               break;
//             case 3:
//               print('The shoes are a little too big for your feet');
//               break;
//             default:
//               print('Not a valid option');
//           }
//         } else {
//           print('You find nothing else of use');
//         }
//       case 2:
//         kitchenSetter();
//         optionSelector = true;
//         break;
//       case 3:
//         mainHall();
//         optionSelector = true;
//         break;
//       case 4:
//         library();
//         optionSelector = true;
//       default:
//         print('Not a valid option');
//     }
//   }
// }