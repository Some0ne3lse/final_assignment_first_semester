import 'dart:io';

import 'package:final_assignment_first_semester/lists/items.dart';

int nullEscapeAndConvertToInt() {
  String? number;
  int? parsedNumber;

  while (parsedNumber == null) {
    number = stdin.readLineSync();
    if (number != null) {
      parsedNumber = int.tryParse(number);
    }
    if (parsedNumber == null) {
      print("Invalid option");
    }
  }
  return parsedNumber;
}

String nullEscapeFromString(){
  String? sentence;
  while (sentence == null) {
    sentence = stdin.readLineSync();
    if (sentence == null) {
      print("Invalid option");
    }
  }
  return sentence;
}

void enterToContinue () {
  print('Press Enter to continue');
  stdin.readLineSync();
}

void printInventory(){
  print('Your current items are:');
  for (String item in items){
    print(item);
  }
  print('');
}

void nothingOfValue() {
  print('''
  You find nothing else of value
  ''');
}
