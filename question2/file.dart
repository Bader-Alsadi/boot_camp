import 'dart:convert';
import 'dart:io';

import 'program.dart';


class FileHelper {

  late File f;
  FileHelper._internal(String fileName) {
      f = File(fileName);
  }

  static FileHelper? _instance;

  static FileHelper getInstance({String fileName=''}) {
    if(_instance == null) {
      _instance = FileHelper._internal(fileName);
    }
    return _instance!;
  }


  loadfile() {
    String fileContents = f.readAsStringSync();
    List<Program> list = [];
    list = (json.decode(fileContents) as List).map<Program>((e) => Program.fromJson(e)).toList();
    return list;
  }
}