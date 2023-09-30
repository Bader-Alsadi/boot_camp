import '../models/Teacher.dart';

class TeacherCon {
  static List<Teacher> listTeacher = [];

  bool addNewTeacher({required String name}) {
    listTeacher.add(Teacher(name: name)..setId = listTeacher.length + 1);
    return true;
  }

  updateTeacher({required int id, required String name}) {
    listTeacher.forEach((element) {
      if (element.getId == id) element.name = name;
    });
  }

  deleteTeacher({required int id}) {
    if (listTeacher.any((element) => element.getId == id)) {
      listTeacher.removeWhere((element) => element.getId == id);
      return true;
    }
    return false;
  }

  String showOneTeacherInfo({required int id}) {
    if (listTeacher.any((element) => element.getId == id))
      return listTeacher
          .firstWhere((element) => element.getId == id)
          .toString();
    return "not founde";
  }
  showTeachersInfo() {
    return [].map((e) => e.toString());
  }

  // addCourseToteacher({required Teacher teacher, Corurse}) {
  // if (teacher.listTeacherCourse.length < 3) {
  //   teacher.listTeacherCourse.add(Corurse);
  //   return "Added done";
  // } else
  //   return "Teacher has 3 corurses you can\'t add more";
  // }
}
