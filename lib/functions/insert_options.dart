import 'dart:io';
import 'package:final_assignment_first_semester/lists/items.dart';

// This file is for different simple codes that I use often.
// I did not use chatGPT once for this entire project, except for these two
// nullEscape functions. And I only did that because I reused them from way back
// when I first started learning. Having said that, I made much of these
// functions myself, and only used chatGPT as a helper

// This function is to be able to insert Ints without having to worry about
// null safety
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

// And just like above, this code is to be able to insert String
String nullEscapeFromString() {
  String? sentence;
  while (sentence == null) {
    sentence = stdin.readLineSync();
    if (sentence == null) {
      print("Invalid option");
    }
  }
  return sentence;
}

void enterToContinue() {
  print('Press Enter to continue');
  stdin.readLineSync();
}

void printInventory() {
  print('Your current items are:');
  for (String item in items) {
    print(item);
  }
  print('');
}

void nothingOfValue() {
  print('''
  You find nothing else of value
  ''');
}
