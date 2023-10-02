import 'control/CorurseCon.dart';
import 'control/StudentCon.dart';
import 'control/TeacherCon.dart';
import 'control/gradeControler.dart';
import 'views/Courseview.dart';

void main(List<String> args) {
  StudentControler stCo = StudentControler();
  TeacherCon TCon = TeacherCon();
  CorurseCon corurseCon = CorurseCon();
  GrdeControler grdCon = GrdeControler();

  stCo.AddStudent(name: "bader");
  stCo.AddStudent(name: "yousf");
  stCo.AddStudent(name: "ahmad");
  stCo.showStudentsInfo();

  TCon.addNewTeacher(name: "Ali");
  TCon.addNewTeacher(name: "Ahmade");
  TCon.addNewTeacher(name: "Amal");
  TCon.addNewTeacher(name: "Omer");
  TCon.showTeacherInfo();

  corurseCon.addNewCorurse(name: "math", noHouers: 30, fees: 500);
  corurseCon.addNewCorurse(name: "dart", noHouers: 90, fees: 150);
  corurseCon.addNewCorurse(name: "English", noHouers: 40, fees: 400);
  corurseCon.addNewCorurse(name: "c++", noHouers: 60, fees: 200);
  corurseCon.addNewCorurse(name: "oop", noHouers: 20, fees: 100);
  corurseCon.addNewCorurse(name: "data minde", noHouers: 80, fees: 300);
  corurseCon.showCorurseInfo();

  stCo.registercoures(id: 1, name: "math");
  stCo.registercoures(id: 1, name: "dart");
  stCo.registercoures(id: 1, name: "English");
  stCo.registercoures(id: 1, name: "data minde");
  stCo.registercoures(id: 1, name: "c++");

  stCo.registercoures(id: 2, name: "dart");
  stCo.registercoures(id: 2, name: "math");
  stCo.registercoures(id: 2, name: "English");


  stCo.registercoures(id: 3, name: "math");
  stCo.registercoures(id: 3, name: "English");

  stCo.registercoures(id: 4, name: "math");
  stCo.showStudentsInfo();

      // grdCon.showGradesInfo();
}
