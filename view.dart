import 'controll.dart';
import 'gradeControler.dart';
import 'models.dart';

class Viewstuden {
  StudentControler studentControler = StudentControler();
  GrdeControler grdeControler = GrdeControler();

  void displayStudt() {
    StudentControler.studenList.forEach((element) {
      print(element.toString());
      element.studentGrad.forEach((element) {
        print(element.toString());
      });
    });
  }

  void addStuden({required String name}) {
    // stdout.write("Enter the name");
    // String name =stdin.readLineSync().toString();
    if (studentControler.AddStudent(name: name)) print("added seccessfuly");
  }

  void addGrade(
      {required Student student,
      required String course,
      required double mark}) {
    grdeControler.addCoresgrad(student, course, mark);
  }
// studentControler.AddStudent("bader") ? "Add"
}
