import 'person.dart';

class Student extends Person {
  late String _program;
  late int _year;
  late double _fee;

  Student(
      {required String name,
      required String address,
      required String program,
      required double fee,
      required int year})
      : super(address: address, name: name){
        this._program =program;
        this._fee=fee;
        this._year=year;
      }

  String get program => this._program;
  set program(String value) => this._program = value;

  int get year => this._year;
  set year(int value) => this._year = value;

  double get fee => this._fee;
  set fee(double value) => this._fee = value;

  String toString() {
    return "${super.toString()} program : $_program year : $_year fee : $_fee";
  }
}
