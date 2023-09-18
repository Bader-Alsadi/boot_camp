class Person {
  late String _first_name, _last_name;
  String? id;

  Person({required String first_name, required String last_name}) {
    this._first_name = first_name;
    this._last_name = last_name;
  }

  String get ID => this.id!;
  set ID(String value) => value.length > 6
      ? this.id = value.toUpperCase()
      : this.id = value.toLowerCase();
  String get first_name => this._first_name;
  set first_name(String value) => this._first_name = value;

  String get last_name => this._last_name;
  set last_name(String value) => this._last_name = value;

  String disPlay() {
    return "id : $id \nfull name : ${_first_name + _last_name} \n";
  }
}
