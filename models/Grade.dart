import 'Course.dart';

class Grade {
  late Corurse course;
  late double mark;
  late String grade;

  Grade({required this.course, required this.mark}) {
    if (mark <= 100 && mark > 89)
      grade = "A";
    else if (mark <= 89 && mark > 79)
      grade = "B";
    else if (mark <= 79 && mark > 69)
      grade = "C";
    else if (mark <= 69 && mark > 59)
      grade = "D";
    else
      grade = "F";
  }
  String toString() => "${course.toString()} \n mark: $mark. ( Grade : $grade)";
}