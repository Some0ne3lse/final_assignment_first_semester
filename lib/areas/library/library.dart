import 'package:final_assignment_first_semester/areas/entrance/entrance.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/one_door.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
import 'package:final_assignment_first_semester/text_files/notes.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';

void library() {
  roomsVisited.add('library');
  libraryDescription();
  oneDoor(
    door: 'Go back to the Entrance',
    roomExaminationAll: libraryExamination(),
    selectDoor: entrance,
    itemAmount: 1,
    itemOne: 'basement note',
    interactWithOne: 'Read the note',
    actionOne: 'The note reads as following: ${basementNote()}',
  );
}
