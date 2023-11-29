import 'package:final_assignment_first_semester/areas/hall/hall.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/two_doors.dart';
import 'package:final_assignment_first_semester/functions/room_options/quick_interaction/quick_interaction.dart';
import 'package:final_assignment_first_semester/functions/room_options/setters/room_setter_two_doors.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';

void garden() {
  roomsVisited.add('garden');
  if (tamedDog == false) {
    quickAction(room: garden);
  } else {
    roomSetterTwoDoors(
      'dogHouse',
      aGardenNoNewRooms,
      bGardenDogHouseVisited,
    );
  }
}
