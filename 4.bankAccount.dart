void main(List<String> args) {
  BankAccount acc = BankAccount(1001, 2000);
  print("after deposit opretion your balnce is ${acc.deposit(500)}\$");
  acc.withdraw(1000);
}

class BankAccount {
  late int accountNumber;
  late double balance;

  BankAccount(int accountNumber, double balance) {
    this.accountNumber = accountNumber;
    this.balance = balance;
  }

  double deposit(double amount) => this.balance = this.balance + amount;
  void withdraw(double amount) {
    if (amount > this.balance) {
      print("Your balnce is less than amount ");
    } else {
      this.balance = this.balance - amount;
      print("your balnce now is ${this.balance}\$");
    }
  }
}
