import 'package:final_assignment_first_semester/functions/room_options/blueprints/three_doors.dart';
import 'package:final_assignment_first_semester/areas/kitchen/kitchen.dart';
import 'package:final_assignment_first_semester/areas/main_hall/main_hall.dart';
import 'package:final_assignment_first_semester/areas/library/library.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';

void fKitchenAndLibraryVisited() {
  threeDoorsAndItem(
    firstDoor: 'Go to the Kitchen',
    secondDoor: 'Go through the door straight ahead',
    thirdDoor: 'Go to the Library',
    roomExaminationAll: entranceExamination(),
    selectFirstDoor: kitchenSetter,
    selectSecondDoor: mainHall,
    selectThirdDoor: library,
    itemAmount: 1,
    itemOne: 'shoes',
    interactWithOne: 'Try the shoes on',
    actionOne: 'The shoes are too big for you',
  );
}


// import 'package:final_assignment_first_semester/areas/kitchen/kitchen.dart';
// import 'package:final_assignment_first_semester/areas/library/library.dart';


// import 'package:final_assignment_first_semester/areas/main_hall/main_hall.dart';
// import 'package:final_assignment_first_semester/functions/insert_options.dart';
// import 'package:final_assignment_first_semester/lists/items.dart';
//
// void kitchenAndLibraryVisited() {
//   bool optionSelector = false;
//
//   while (optionSelector == false) {
//     print('You have the following options');
//     print('1: Examine the room');
//     print('2: Go to the Kitchen');
//     print('3: Go through the door straight ahead');
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