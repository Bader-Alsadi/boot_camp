import 'person.dart';

class Staff extends Person {
  late String _school;
  late double _pay;

  Staff({
    required String name,
    required String address,
    required String school,
    required double pay,
  }) : super(address: address, name: name) {
    this._pay = pay;
    this._school = school;
  }

  String get school => this._school;
  set school(String value) => this._school = value;

  double get pay => this._pay;
  set pay(double value) => this._pay = value;

  String toString() {
    return "${super.toString()} school : $_school pay : $_pay";
  }
}
