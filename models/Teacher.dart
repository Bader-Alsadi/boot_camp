
import 'Course.dart';

class Teacher {
  late int _id;
  late String name;
List<Corurse> listTeacherCourse = [];

  Teacher({required this.name});

int get getId => this._id;

 set setId(int id) => this._id = id;

}
