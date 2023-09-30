import '../control/TeacherCon.dart';

TeacherCon teacherCon = TeacherCon();

void addTeacher({required String name}) {
  // stdout.write("Enter the name");
  // String name =stdin.readLineSync().toString();
  if (teacherCon.addNewTeacher(name: name)) print("added teacher seccessfuly");
}

void update(
    {required int id,
    required String name,
    required int noHouers,
    required double fees}) {
  teacherCon.updateTeacher(id: id, name: name);
}

void remove({required int id}) {
  if (teacherCon.deleteTeacher(id: id))
    print("added seccessfuly");
  else
    print("not founde");
}

void displayoneTeacher({required int id }){

print(teacherCon.showOneTeacherInfo(id: id));
}

void displayTeacher() {
  teacherCon.showTeachersInfo().forEach((element) {
    print(element);
  });
}
