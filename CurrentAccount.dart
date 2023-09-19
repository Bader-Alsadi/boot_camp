import 'Account.dart';

class CurrentAccount extends Account {
  late double _overdaraftlimit;

  double get overdaraftlimit => this._overdaraftlimit;

  set overdaraftlimit(double value) => this._overdaraftlimit = value;

  CurrentAccount(
      {required int id,
      required double balance,
      required double overdaraftlimit})
      : super(id, balance) {
    this._overdaraftlimit = overdaraftlimit;

    print("Current Account:");
    print("Initial Deposit: ${this.balance}");
    print("OverdraftLimit:: ${this._overdaraftlimit}");
  }

  @override
  void deposit(double amount) {
    this.balance += amount;
    print("Now deposit $amount to Current Account balnce : ${this.balance}");
  }

  @override
  void withdraw(double amount) {
    if (amount < this.balance) {
      this.balance -= amount;
      print(
          "Withdraw $amount from current Account. balance : ${this.balance} ");
    } else {
      if ((this.balance + this._overdaraftlimit) > amount) {
        this._overdaraftlimit = (this.balance + this._overdaraftlimit) - amount;
        print(
            "Withdraw $amount from current Account. overdaraftlimit : ${this._overdaraftlimit} ");
      } else
        print("your balnce and overdaraftlimit less than amount ");
    }
  }
}
