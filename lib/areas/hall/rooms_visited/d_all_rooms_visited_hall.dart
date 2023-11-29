import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/three_doors.dart';
import 'package:final_assignment_first_semester/text_files/room_description.dart';
import 'package:final_assignment_first_semester/text_files/room_examination.dart';
import 'package:final_assignment_first_semester/areas/garden/garden.dart';
import 'package:final_assignment_first_semester/areas/basement/basement.dart';
import 'package:final_assignment_first_semester/areas/main_hall/main_hall.dart';
import 'package:final_assignment_first_semester/functions/room_options/quick_interaction/quick_interaction.dart';

void dAllRoomsVisitedHall() {
  if (tamedDog == false) {
    hallDescriptionOne();
  } else if (tamedDog == true){
    hallDescriptionTwo();
  }
  enterToContinue();
  threeDoors(
      firstDoor: 'Go to the Garden',
      secondDoor: 'Go to the Basement',
      thirdDoor: 'Go back to the Main Hall',
      roomExaminationAll: hallExamination(),
      selectFirstDoor: garden,
      selectSecondDoor: basement,
      selectThirdDoor: mainHall,
      itemAmount: 0);
}
