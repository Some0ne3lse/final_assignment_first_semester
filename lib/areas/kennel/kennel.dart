import 'package:final_assignment_first_semester/areas/garden/garden.dart';
import 'package:final_assignment_first_semester/lists/roomsVisited.dart';
bool sleepingDog = false;
void kennel(){
  roomsVisited.add('kennel');
  if(sleepingDog == false){
    print('The dog will not let you in here');
    garden();
  } else if (sleepingDog == true){
    print('Success!');
  }
}