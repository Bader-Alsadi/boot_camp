import 'models.dart';

class StudentControler {
  static List<Student> studenList = [];
  bool AddStudent({required String name}) {
    studenList.add(Student(id: studenList.length + 1, name: name));
    return true;
  }
}
