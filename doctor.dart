import 'person2.dart';

class Doctor extends Person {
  late String _private_specialty;
  Doctor(
      {required String private_specialty,
      required String first_name,
      required String last_name})
      : super(first_name: first_name, last_name: last_name) {
    this._private_specialty = private_specialty;
  }

  String get private_specialty => this._private_specialty;
  set private_specialty(String value) => this._private_specialty = value;

  String disPlay() {
    return "${super.disPlay()} private_specialty : $_private_specialty ";
  }
}
