import 'dart:io';

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
