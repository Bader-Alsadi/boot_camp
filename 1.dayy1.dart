void main(List<String> args) {
  Student s = Student("bader", 111);
  try {
    s.addCourse(Course("CS", 101, true));
    s.addCourse(Course("IT", 102, true));
    s.addCourse(Course("CS", 103, false));
  } catch (e) {
    print(e);
  }
  s.disPlayInfo();
  s.remove_course(1);
  print("\n\n");
  s.disPlayInfo();
}

class Student {
  late int _rollNumber;
  late String _name;
  late bool _is_active = true;
  late int _numberCourse;
  List<Course> _Student_course = List.empty(growable: true);
  Student(
    this._name,
    this._rollNumber,
  ) {
    // this.is_active = is_active;
    this._numberCourse = 0;
  }
  set rollNumber(int value) =>
      value < 0 ? this._rollNumber = -value : this._rollNumber;
  int get rollNumber => this._rollNumber;

  set is_active(bool value) => this.is_active = value;
  bool get is_active => this._is_active;

  set name(String value) => value.length < 4
      ? this._name = value.toLowerCase()
      : this._name = value.toUpperCase();
  String get name => this._name;

  addCourse(Course course) {
    if (this._numberCourse < 4) {
      if (course._is_avialble) {
        if (this._is_active) {
          _Student_course.add(course);
          this._numberCourse++;
        } else
          throw new Exception("you not active");
      } else
        throw new Exception("coruse not avialable");
    } else
      throw new Exception("you cant add more than 4 course");
  }

  remove_course(int index) {
    _Student_course.removeAt(index);
  }

  void disPlayInfo() {
    print(
        " NO : ${this._rollNumber} Student name is : ${this._name} statu is ${_is_active} ");
    print("------------------courses------------------- ");
    _Student_course.forEach((element) {
      print(
          "NO : ${element._number} course : ${element._name} statu : ${element._is_avialble} ");
    });
    print("------------------------------------------- ");
  }
}

class Course {
  late int _number;
  late String _name;
  late bool _is_avialble;

  Course(this._name, this._number, this._is_avialble) {}

  set Number(int value) => value < 0 ? this._number = -value : this._number;
  int get Number => this._number;

  set is_avialble(bool value) => this._is_avialble = value;
  bool get is_avialble => this._is_avialble;

  set name(String value) => this._name = value;
  String get name => this._name;
}
