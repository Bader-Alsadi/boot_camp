import 'Grade.dart';

class Student {
  late int id;
  late String name;
  List<Grade> studentGrad = [];

  Student({required this.id, required this.name});
  

  String toString() => "Id : $id name: $name";
}


