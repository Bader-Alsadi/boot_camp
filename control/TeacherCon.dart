import '../models/Course.dart';
import '../models/Teacher.dart';

class TeacherCon {
  static List<Teacher> listTeacher = [];

  bool addNewTeacher({required String name}) {
    listTeacher.add(Teacher(name: name)..setId =  listTeacher.isEmpty ? 1 : listTeacher.last.getId + 1);
    return true;
  }

  deleteTeacher({required String name}) {
    int index = listTeacher.indexWhere((element) => element.name == name);
    if (index != -1)
      listTeacher.removeAt(index);
    else
      print("Not found");
  }

  showOneTeacherInfo({required String name}) {
    int index = listTeacher.indexWhere((element) => element.name == name);
    if (index != -1)
      print(listTeacher[index].toString());
    else
      print("Not found");
  }

    showTeacherInfo() {
      print("${"-"*20}Teachers${"-"*20}");
     listTeacher.forEach((element) {
      print("Id: ${element.getId}- name : ${element.name}");
     });
     print("${"-"*20}  End   ${"-"*20}");
  }

  AddCoruseToTeacger ({required Corurse corurse,required String name}){
    int index = listTeacher.indexWhere((element) => element.name == name);
    if (index != -1)
      listTeacher[index].listTeacherCourse.add(corurse);
    else
      print("Not found");
  }


  remveCoruseToTeacger ({required Corurse corurse,required String name}){
    int index = listTeacher.indexWhere((element) => element.name == name);
    if (index != -1)
      listTeacher[index].listTeacherCourse.remove(corurse);
    else
      print("Not found");
  }


}
