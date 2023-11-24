import 'dart:io';

import 'package:final_assignment_first_semester/areas/entrance/entrance.dart';
import 'package:final_assignment_first_semester/commands/intro_selection.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/text_files/bad_ending.dart';
import 'package:final_assignment_first_semester/text_files/introduction.dart';
void main() {
  introduction();
  enterToContinue();
  switch(introSelection()) {
    case 1:
      badEnding1();
    case 2:
      entranceSetter();
  }
}
