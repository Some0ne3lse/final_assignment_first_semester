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

void enterToContinue () {
  print('Press Enter to continue');
  stdin.readLineSync();
}