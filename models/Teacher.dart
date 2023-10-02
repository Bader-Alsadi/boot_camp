
import 'Course.dart';
import 'department.dart';

class Teacher {
  late int _id;
  late String name;
  double? salary;
  Department? department;
List<Corurse> listTeacherCourse = [];

  Teacher({required this.name});

int get getId => this._id;

 set setId(int id) => this._id = id;

}
