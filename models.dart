class Student {
  late int id;
  late String name;
  List<Grade> studentGrad = [];

  Student({required this.id, required this.name});
  String toString() => "Id : $id name: $name";
}

class Grade {
  late String course;
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
  String toString() => "course name  : $course, mark: $mark. ( Grade : $grade)";
}
