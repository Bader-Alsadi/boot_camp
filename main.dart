import 'controll.dart';
import 'view.dart';

void main(List<String> args) {
  Viewstuden viewstuden = Viewstuden();

  viewstuden.addStuden(name: "bader");
  viewstuden.addStuden(name: "yousf");
  viewstuden.addStuden(name: "ahmad");
  viewstuden.displayStudt();

  viewstuden.addGrade(
      student: StudentControler.studenList[0], course: "math", mark: 100);
  viewstuden.addGrade(
      student: StudentControler.studenList[0], course: "dart", mark: 80);
  viewstuden.addGrade(
      student: StudentControler.studenList[0], course: "c++", mark: 70);

  viewstuden.addGrade(
      student: StudentControler.studenList[1], course: "math", mark: 100);
  viewstuden.addGrade(
      student: StudentControler.studenList[1], course: "dart", mark: 80);
  print("\n\n");
  viewstuden.displayStudt();
}
