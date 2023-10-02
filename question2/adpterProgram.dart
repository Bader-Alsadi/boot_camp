

import 'dart:convert';

import 'apiProgram.dart';
import 'convertprogram.dart';
import 'program.dart';

class AdpterProgram implements ConvertProgram {
  List<Program> finalList = [];
  @override
  List<Program> converProgram(ApiProgram apiProgram) {
    // Map<String, String> mapAdd = {};
    List listbefor =jsonDecode(apiProgram.getProgramApi()) ;
    listbefor.forEach((element) {
      finalList.add(Program.fromJson(element as Map<String,dynamic>));
    });
    return finalList;
  }
}
