import 'dart:io';

import 'package:final_assignment_first_semester/areas/arrival/arrival.dart';
import 'package:final_assignment_first_semester/areas/entrance/entrance.dart';
import 'package:final_assignment_first_semester/commands/intro_selection.dart';
import 'package:final_assignment_first_semester/functions/insert_options.dart';
import 'package:final_assignment_first_semester/text_files/arrival.dart';
import 'package:final_assignment_first_semester/text_files/endings/bad_endings.dart';
import 'package:final_assignment_first_semester/text_files/introduction.dart';
void main() {
  introduction();
  enterToContinue();
  switch(introSelection()) {
    case 1:
      badEndingOne();
    case 2:
      arrival();
  }
}
