class Person {
  late String _name, _address;

  Person({required String name,required String address}){this._name=name;this._address=address;}

  String get name => this._name;
  set name(String value) => this._name = value;

  String get address => this._address;
  set address(String value) => this.address = value;

  String toString(){
    return "name : $_name address : $_address";
  }
}
