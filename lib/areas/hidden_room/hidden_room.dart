import 'package:final_assignment_first_semester/areas/basement/basement.dart';
import 'package:final_assignment_first_semester/areas/hidden_room/visited_rooms_hidden_room.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/one_door_one_item.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';

void hiddenRoom() {
  roomsVisited.add('hiddenRoom');
  hiddenRoomDescription();
  onDoorOneItem(
    printNoNewRooms: visitingHiddenRoom,
    roomExamination: hiddenRoomExamination(),
    item: 'gold key',
    chooseInteract: 'Examine the gold key',
    interactAction: 'It is heavy but beautiful',
    selectPreviousDoor: basement,
  );
}
