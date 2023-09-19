import 'CurrentAccount.dart';
import 'SavingsAccount.dart';
import 'bank.dart';
import 'car.dart';
import 'mobile.dart';
import 'opertion.dart';
import 'user.dart';

void main(List<String> args) {
  SavingsAccount savingsAccount =
      SavingsAccount(id: 124, balance: 1000, interestrate: 2.0);
  print("\n");
  CurrentAccount currentAccount =
      CurrentAccount(id: 134, balance: 3000, overdaraftlimit: 1000);
  print("\n");
  Bank bank = Bank();
  bank.addAccount(savingsAccount);
  bank.addAccount(currentAccount);

  bank.deposit(savingsAccount, 200);
  print("\n");
  bank.deposit(currentAccount, 300);
  print("\n");
  bank.withdraw(currentAccount, 400);
  print("\n");
  bank.withdraw(savingsAccount, 500);
  print("\n");

  bank.printAccountBalances();

  print("\n");

  savingsAccount.calculateInterest();
  // User u = User();
  // Mobile m = Mobile();
  // Car c = Car();
  // Opertion op=Car();
}

// search(Opertion o)
// {
//   print(o.)
// }
