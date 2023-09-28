import 'models.dart';

class GrdeControler {


  addCoresgrad(Student student, String course, double mark) {
    student.studentGrad.add(Grade(course: course, mark: mark));
  }
}