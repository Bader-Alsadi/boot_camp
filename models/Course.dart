import 'Teacher.dart';
import 'exam.dart';

class Corurse {
  late String name;
  late int noHouers ;
  late double fees ;
  List<Exam> listExam=[];
  Corurse({required this.name,required this.noHouers,required this.fees});
}