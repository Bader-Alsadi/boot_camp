import '../models/Course.dart';
import '../models/Grade.dart';
import '../models/Student.dart';
import 'StudentCon.dart';

class GrdeControler {
  static List<Grade> ListGrade = [];

  addGradeRecode({int? id, Corurse? corurse, double mark = 0.0}) {
    List<Student> Students = StudentControler.studenList;
    print("${"-" * 20}add Grade Recode${"-" * 20}");
    if (ListGrade.where((element) => element.course.name == corurse!.name)
            .length ==
        3)
      print("coures reach mamimum");
    else {
      int index = Students.indexWhere((element) => element.id == id);
      if (index != -1) {
        print(Students[index].name);
        ListGrade.add(
            Grade(course: corurse!, student: Students[index], mark: mark));
        print("add succcessfuly");
      } else {
        print("student not Exit");
      }
    }
  }

  updateMark({int? id, String? name, double mark = 0.0}) {
    int index = ListGrade.indexWhere((element) =>
        (element.course.name == name) && (element.student.id == id));
    ListGrade[index].mark = mark;
  }

  showGradesInfo() {
    ListGrade.forEach((element) {
      print(
          "Studemt name : ${element.student.name} coruse name : ${element.course.name} mark ${element.mark}");
    });
    
  }
}
