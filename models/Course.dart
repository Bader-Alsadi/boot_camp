import 'Teacher.dart';

class Corurse {
  late String name;
  late Teacher teacher;
  late int noHouers ;
  late double fees ;
  late int _id;
  int available_Student=0;
  Corurse({required this.name,required this.noHouers,required this.fees,required this.teacher});
  int get getId => this._id;

 set setId(int id) => this._id = id;

   String toString() => " Id: ${this._id}- course name : ${this.name} Teacher name : ${this.teacher.name} NoHouers : ${this.noHouers} Fees : ${this.fees} ";
}