import 'package:final_assignment_first_semester/areas/basement/basement.dart';
import 'package:final_assignment_first_semester/areas/garden/garden.dart';
import 'package:final_assignment_first_semester/areas/kennel/kennel.dart';
import 'package:final_assignment_first_semester/areas/main_hall/main_hall.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/functions/room_options/blueprints/three_doors_no_item.dart';
import 'package:final_assignment_first_semester/functions/room_options/being_interactions/quick_interaction_dog.dart';
import 'package:final_assignment_first_semester/lists/rooms_visited.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_description.dart';
import 'package:final_assignment_first_semester/areas/hall/visited_rooms_hall.dart';
import 'package:final_assignment_first_semester/text_files/interaction_text/room_examination.dart';

void hall() {
  roomsVisited.add('hall');
  if (tamedDog == false) {
    hallDescriptionOne();
  } else if (tamedDog == true && sleepingDog == false) {
    hallDescriptionTwo();
  } else if (sleepingDog == true){
    hallDescriptionThree();
  }
  enterToContinue();
  threeDoorsNoItem(
    secondRoom: 'garden',
    thirdRoom: 'basement',
    printNoNewRooms: noNewRoomsHall,
    printSecondRoom: gardenVisited,
    printThirdRoom: basementVisited,
    printAll: allRoomsVisitedHall,
    roomExamination: hallExamination,
    selectSecondDoor: garden,
    selectThirdDoor: basement,
    selectPreviousDoor: mainHall,
  );
}
