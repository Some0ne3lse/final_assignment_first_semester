import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/h_all_rooms_visted_entrance.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/f_kitchen_and_library_visited.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/e_kitchen_and_main_hall_visited.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/b_kitchen_visited.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/d_library_visited.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/g_main_hall_and_library_visited.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/c_main_hall_visited.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/a_no_rooms_visited.dart';
import 'package:final_assignment_first_semester/functions/room_options/setters/room_setter_entry.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';

void entrance() {
  roomSetterEntry(
    'kitchen',
    'mainHall',
    'library',
    aNoRoomVisited,
    bKitchenVisited,
    cMainHallVisited,
    dLibraryVisited,
    eKitchenAndMainHallVisited,
    fKitchenAndLibraryVisited,
    gMainHallAndLibraryVisited,
    hAllRoomsVisitedEntrance,
  );
}

//   bool haveYouVisitedKitchen = roomsVisited.contains('kitchen');
//   bool haveYouVisitedLibrary = roomsVisited.contains('library');
//   bool haveYouVisitedMainHall = roomsVisited.contains('mainHall');
//   print(entranceDescription);
//
//   if (haveYouVisitedKitchen == false &&
//       haveYouVisitedMainHall == false &&
//       haveYouVisitedLibrary == false) {
//     aNoRoomVisited();
//   } else if (haveYouVisitedKitchen == true &&
//       haveYouVisitedMainHall == false &&
//       haveYouVisitedLibrary == false) {
//     bKitchenVisited();
//   } else if (haveYouVisitedKitchen == false &&
//       haveYouVisitedMainHall == true &&
//       haveYouVisitedLibrary == false) {
//     cMainHallVisited();
//   } else if (haveYouVisitedKitchen == false &&
//       haveYouVisitedMainHall == false &&
//       haveYouVisitedLibrary == true) {
//     dLibraryVisited();
//   } else if (haveYouVisitedKitchen == true &&
//       haveYouVisitedMainHall == true &&
//       haveYouVisitedLibrary == false) {
//     eKitchenAndMainHallVisited();
//   } else if (haveYouVisitedKitchen == true &&
//       haveYouVisitedMainHall == false &&
//       haveYouVisitedLibrary == true) {
//     fKitchenAndLibraryVisited();
//   } else if (haveYouVisitedKitchen == false &&
//       haveYouVisitedMainHall == true &&
//       haveYouVisitedLibrary == true) {
//     gMainHallAndLibraryVisited();
//   } else if (haveYouVisitedKitchen == true &&
//       haveYouVisitedMainHall == true &&
//       haveYouVisitedLibrary == true) {
//     hAllRoomsVisited();
//   }
// }
