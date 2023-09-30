import '../models/Course.dart';
import '../models/Grade.dart';
import '../models/Student.dart';

class GrdeControler {
  bool addCoresgrad(Student student, Corurse course, double mark) {
    if (course.available_Student < 3) {
      student.studentGrad.add(Grade(course: course, mark: mark));
      course.available_Student++;
      return true;
    } else
      return false;
  }

}
