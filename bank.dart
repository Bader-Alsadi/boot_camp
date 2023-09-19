import 'Account.dart';

class Bank {
  List<Account> _accountList = List.empty(growable: true);

  void addAccount(Account account) {
    _accountList.add(account);
  }

  void removeAccount(Account account) {
    _accountList.remove(account);
  }

  void deposit(Account account, double amount) {
    account.deposit(amount);
  }

  void withdraw(Account account, double amount) {
    account.withdraw(amount);
  }

  void printAccountBalances() {
    print("Savings Acount and Current Account Balances");

    _accountList.forEach((element) {
      print("${element.runtimeType}: ${element.balance} \$");
    });
  }
}
