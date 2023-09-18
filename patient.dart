import 'bill.dart';
import 'doctor.dart';
import 'person2.dart';
import 'dart:io';

class Patient extends Person {
  late String _birth_day;
  late Doctor physician_name;
  late double age;
  List<Bill> list_bill = List.empty(growable: true);

  Patient(
      {required String birth_day,
      required this.physician_name,
      required String first_name,
      required String last_name})
      : super(first_name: first_name, last_name: last_name) {
    stdout.write("Enter Patient id");
    String id = stdin.readLineSync()!;
    if (id.length > 6) {
      super.ID = id;
      this._birth_day = birth_day;
      this.age = DateTime.now().year - double.parse(birth_day.split("/")[2]);
      print("Patient add");
    } else {
      throw new Exception("Invalid ID");
    }
  }

  String get birth_day => this._birth_day;
  set birth_day(String value) => this._birth_day = value;

  void add_bill(Bill bill) {
    list_bill.add(bill);
  }

  void disPlayP() {
    print("${super.disPlay()}birth_day : $_birth_day ");
    print("Age : $age");
    list_bill.forEach((element) {
      element.display();
      if (age > 50) print("discount : ${element.discount}");
      print(
          "total bill : ${element.getBillTotalAmount() * age > 50 ? element.discount : 1}");
    });
    print("doctor name : ${physician_name.first_name}");
  }
}
