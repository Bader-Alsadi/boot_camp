import 'control/CorurseCon.dart';
import 'control/StudentCon.dart';
import 'control/TeacherCon.dart';
import 'views/Courseview.dart';
import 'views/Gradeview.dart';
import 'views/studentview.dart';
import 'views/teacherview.dart';

void main(List<String> args) {
  // Viewstuden viewstuden = Viewstuden();
  // ViewGrades viewGrades = ViewGrades();

  addStuden(name: "bader");
  addStuden(name: "yousf");
  addStuden(name: "ahmad");
  displayStudt();

  addTeacher(name: "Ali");
  addTeacher(name: "Ahmade");
  addTeacher(name: "Amal");
  addTeacher(name: "Omer");

  addCoures(
      name: "math",
      teacher: TeacherCon.listTeacher[0],
      noHouers: 30,
      fees: 500);
  addCoures(
      name: "dart",
      teacher: TeacherCon.listTeacher[1],
      noHouers: 90,
      fees: 150);
  addCoures(
      name: "English",
      teacher: TeacherCon.listTeacher[2],
      noHouers: 40,
      fees: 400);
  addCoures(
      name: "c++", teacher: TeacherCon.listTeacher[0], noHouers: 60, fees: 200);
  addCoures(
      name: "oop", teacher: TeacherCon.listTeacher[3], noHouers: 20, fees: 100);
  addCoures(
      name: "data minde",
      teacher: TeacherCon.listTeacher[0],
      noHouers: 80,
      fees: 300);

  addGrade(
      student: StudentControler.studenList[0],
      course: CorurseCon.listCorurse[0],
      mark: 100);
  addGrade(
      student: StudentControler.studenList[0],
      course: CorurseCon.listCorurse[1],
      mark: 80);
  addGrade(
      student: StudentControler.studenList[0],
      course: CorurseCon.listCorurse[1],
      mark: 70);

  addGrade(
      student: StudentControler.studenList[1],
      course: CorurseCon.listCorurse[1],
      mark: 100);
  addGrade(
      student: StudentControler.studenList[1],
      course: CorurseCon.listCorurse[1],
      mark: 80);
  print("\n\n");
  displayStudt();
  // displayoneTeacher(id: 1);
  // displayonecourse(id: 1);
}
