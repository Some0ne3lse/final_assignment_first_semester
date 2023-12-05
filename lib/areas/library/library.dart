import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/one_door_one_item.dart';
import 'package:final_assignment_first_semester/lists/rooms_visited.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/interact_action.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/notes.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';
import 'package:final_assignment_first_semester/areas/library/visited_rooms_library.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';
import 'package:final_assignment_first_semester/areas/entrance/entrance.dart';

void library() {
  roomsVisited.add('library');
  libraryDescription();
  enterToContinue();
  onDoorOneItem(
    printNoNewRooms: visitingLibrary,
    roomExamination: libraryExamination,
    item: 'basement note',
    chooseInteract: 'Read the note',
    interactAction: basementNoteAction,
    selectPreviousDoor: entrance,
  );
}