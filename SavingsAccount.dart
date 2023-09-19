import 'Account.dart';
import 'AccountManagement.dart';

class SavingsAccount extends Account implements AccountManagement {
  late double _interestrate;

  double get interestrate => this._interestrate;

  set interestrate(double value) => this._interestrate = value;

  SavingsAccount(
      {required int id, required double balance, required double interestrate})
      : super(id, balance) {
    this._interestrate = interestrate;

    print("Savings Account:");
    print("Initial Deposit: ${this.balance}");
    print("Interest rate: ${this._interestrate}");
  }

  @override
  void deposit(double amount) {
    this.balance += amount;
    print("Now deposit $amount to Savings Account balance : ${this.balance}");
  }

  @override
  void withdraw(double amount) {
    if (amount < this.balance) {
      this.balance -= amount;
      print(
          "Withdraw $amount from Savings Account. balance : ${this.balance} ");
    } else {
      print("your balnce less than amount ");
    }
  }

  @override
  void calculateInterest() {
    this.balance = this.balance + this.balance * this._interestrate;

    print("Account Balance SavingsAccount: ${this.balance}");
  }
}
