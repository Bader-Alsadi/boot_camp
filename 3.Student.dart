import "dart:io";

void main(List<String> args) {
  Student st = Student("Bader", "CS", 25);
  Student st1 = Student("Omer", "IT", 25);
  Student st2 = Student("Ahmad", "IS", 25);
  Student st3 = Student("Ali", "BM", 25);
  List<Student> List_Student = List.empty(growable: true);
  List_Student.add(st);
  List_Student.add(st1);
  List_Student.add(st2);
  List_Student.add(st3);
  stdout.write("Enter the majar : ");
  String s = stdin.readLineSync()!;
  List_Student.forEach((element) {
    if (element.majar == s) element.disPlayInfo();
  });

  // st.disPlayInfo(); qu 3
}

class Student {
  late String name;
  late String majar;
  late int age;

  Student(String name, String majar, int age) {
    this.name = name;
    this.majar = majar;
    this.age = age;
  }

  void disPlayInfo() {
    print(
        "The Student name  is $name his/her majar is $majar his/her age is $age year ");
  }
}
