import '../models/Course.dart';
import '../models/Student.dart';
import 'CorurseCon.dart';
import 'gradeControler.dart';

class StudentControler {
  static List<Student> studenList = [];
  bool AddStudent({required String name}) {
    studenList.add(Student(
        id: studenList.isEmpty ? 1 : studenList.last.id + 1, name: name));
    return true;
  }

  bool deleteStudent({required int id}) {
    if (studenList.any((element) => element.id == id)) {
      studenList.removeWhere((element) => element.id == id);
      return true;
    }
    return false;
  }

  updateStudent({required int id, required String name}) {
    int index = studenList.indexWhere((element) => element.id == id);
    if (index != -1)
      studenList[index].name = name;
    else
      print("Not found");
  }

  showOneStudentInfo({required int id}) {
    int index = studenList.indexWhere((element) => element.id == id);
    if (index != -1)
      print("id :${studenList[index].id} name : ${studenList[index].name}");
    else
      print("Not found");
  }

  showStudentsInfo() {
    print("${"-" * 20}Students${"-" * 20}");
    studenList.forEach((sudent) {
      print("${"-" * 20}  ${studenList.indexOf(sudent) + 1}   ${"-" * 20}");
      print("Id : ${sudent.id} name: ${sudent.name}");
      double sum = 0.0;
      GrdeControler.ListGrade.where(
          (element) => element.student.id == sudent.id).forEach((ele) {
        sum += ele.course.fees;
        print(
            "name course :${ele.course.name} NO Houres : ${ele.course.noHouers} fees : ${ele.course.fees} \nmark: ${ele.mark} ( Grade : ${ele.grade})");
      });
      if (sum != 0.0) print("Total : $sum");
    });
    print("${"-" * 20}  End   ${"-" * 20}");
  }

  registercoures({int? id, String? name}) {
    print("${"-" * 20}registe rcoures ${"-" * 20}");
    Corurse ObjectCores = CorurseCon.listCorurse.firstWhere(
        (element) => element.name == name,
        orElse: () => Corurse(fees: 0.0, name: "", noHouers: 0));
    if (ObjectCores.name != "") {
      GrdeControler().addGradeRecode(id: id, corurse: ObjectCores);
    } else
      print("not found");
  }

  filtterByDepartment({required String name_department}) {
    int index = studenList
        .indexWhere((element) => element.department!.name == name_department);
    if (index != -1) {
      print(
          "id :${studenList[index].id} name : ${studenList[index].name} department: ${studenList[index].department!.name}");
    } else
      print("Not found");
  }
}
