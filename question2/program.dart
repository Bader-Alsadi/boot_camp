import 'dart:convert';

class Program{
  late int id;
  late String program_name;
  late double program_fee;
  Program({required this.id,required this.program_name,required this.program_fee});
  Program.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    program_name = json['name']==null ? json["title"]:json['name'];
    program_fee = json['fees'];
  }

  // Program.fromRJson(String Rjson) {
  //   Map<String, dynamic> json = jsonDecode(Rjson);
  //   id = json['id'];
  //   program_name = json['title'];
  //   program_fee = json['fees'];
  // }

  String toString(){
    return """
id : $id
program name : $program_name;
programe fees : $program_fee;
""";
  }
}