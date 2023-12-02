import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/one_door_one_item.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/notes.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/areas/library/visited_rooms_library.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';
import 'package:final_assignment_first_semester/areas/entrance/entrance.dart';

void library() {
  roomsVisited.add('library');
  libraryDescription();
  enterToContinue();
  onDoorOneItem(
    printNoNewRooms: visitingLibrary,
    roomExamination: libraryExamination(),
    item: 'basement note',
    chooseInteract: 'Read the note',
    interactAction: 'The note reads as following: ${basementNote()}',
    selectPreviousDoor: entrance,
  );
}