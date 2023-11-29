import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/three_doors.dart';
import 'package:final_assignment_first_semester/text_files/notes.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';
import 'package:final_assignment_first_semester/areas/hall/hall.dart';
import 'package:final_assignment_first_semester/areas/living_room/living_room.dart';
import 'package:final_assignment_first_semester/areas/entrance/entrance.dart';

void bEntryAndHallVisited() {
  mainHallDescription();
  enterToContinue();
  threeDoors(
    firstDoor: 'Go to the Hall',
    secondDoor: 'Go through the door on your right',
    thirdDoor: 'Go back to entrance',
    roomExaminationAll: mainHallExamination(),
    selectFirstDoor: hall,
    selectSecondDoor: livingRoom,
    selectThirdDoor: entrance,
    itemAmount: 1,
    itemOne: 'letter',
    interactWithOne: 'Read the letter',
    actionOne: 'The letter reads: ${letter()}',
  );
}
