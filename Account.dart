abstract class Account {

  late int _id ;
  late double _balance;

 int get id => this._id;

 set (int value) => this._id = value;

 double get balance => this._balance;

 set balance(double value) => this._balance = value;

  Account(this._id,this._balance);

  void deposit(double amount);

  void withdraw(double amount);

}