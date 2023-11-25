import 'package:final_assignment_first_semester/area_classes/room.dart';
import 'package:final_assignment_first_semester/areas/entrance/entrance.dart';
import 'package:final_assignment_first_semester/areas/kitchen/rooms_visited_kitchen/no_new_rooms.dart';
import 'package:final_assignment_first_semester/areas/kitchen/rooms_visited_kitchen/storage_visited.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';

String kitchenDescription = '''
  The kitchen is well kept, but barely used.
  This is not the kitchen of someone who makes his own cake.
  There are two doors in here. One back to the Entrance,
  the other one smaller and old in the corner of the room.

''';

void kitchenSetter() {
  roomsVisited.add('kitchen');
  print(kitchenDescription);
  bool haveYouVisitedStorage = roomsVisited.contains('storage');

  if (haveYouVisitedStorage == false){
    noNewRooms();
  } else if (haveYouVisitedStorage == true){
    storageVisited();
  }

}