import 'package:final_assignment_first_semester/area_classes/room.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/all_rooms_visted.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/kitchen_and_library_visited.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/kitchen_and_main_hall_visited.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/kitchen_visited.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/library_visited.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/main_hall_and_library_visited.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/main_hall_visited.dart';
import 'package:final_assignment_first_semester/areas/entrance/rooms_visited/no_rooms_visited.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';

String entranceDescription = '''
  There are three doors in this room. From the one on the left you smell food.
  The door straight ahead is grand, and seems like the main entrance to the house.
  To your left is a smaller, less used door.
''';

Room entrance = Room(
  description: entranceDescription,
  numberOfDoors: 3,
);

void entranceSetter() {
  bool haveYouVisitedKitchen = roomsVisited.contains('kitchen');
  bool haveYouVisitedLibrary = roomsVisited.contains('library');
  bool haveYouVisitedMainHall = roomsVisited.contains('mainHall');
  print(entranceDescription);

  if (haveYouVisitedKitchen == false &&
      haveYouVisitedMainHall == false &&
      haveYouVisitedLibrary == false) {
    noRoomVisited();
  } else if (haveYouVisitedKitchen == true &&
      haveYouVisitedMainHall == false &&
      haveYouVisitedLibrary == false) {
    kitchenVisited();
  } else if (haveYouVisitedKitchen == false &&
      haveYouVisitedMainHall == true &&
      haveYouVisitedLibrary == false) {
    mainHallVisited();
  } else if (haveYouVisitedKitchen == false &&
      haveYouVisitedMainHall == false &&
      haveYouVisitedLibrary == true) {
    libraryVisited();
  } else if (haveYouVisitedKitchen == true &&
      haveYouVisitedMainHall == true &&
      haveYouVisitedLibrary == false) {
    kitchenAndMainHallVisited();
  } else if (haveYouVisitedKitchen == true &&
      haveYouVisitedMainHall == false &&
      haveYouVisitedLibrary == true) {
    kitchenAndLibraryVisited();
  } else if (haveYouVisitedKitchen == false &&
      haveYouVisitedMainHall == true &&
      haveYouVisitedLibrary == true) {
    mainHallAndLibraryVisited();
  } else if (haveYouVisitedKitchen == true &&
      haveYouVisitedMainHall == true &&
      haveYouVisitedLibrary == true) {
    allRoomsVisited();
  }
}
