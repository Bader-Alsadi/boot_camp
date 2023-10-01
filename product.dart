class Product {
  late int _id ;
  late String _name;
  late int _Price;

  Product();
  Product fromJSON(Map<String,dynamic> item){
    _id=item["Id"];
    _name=item["Name"];
    _Price=item["Price"];

    return this;
  }

 int get id => this._id;

 String get name => this._name;

 set name(String value) => this._name = value;

 int get Price => this._Price;

 set Price(int value) => this._Price = value;
}