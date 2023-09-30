import 'coffeMake.dart';
import 'user.dart';

void main(List<String> args) {
  CoffeeMaker coffeeMaker = CoffeeMaker();
  coffeeMaker.addUser(User(name: "bader"));
  coffeeMaker.addUser(User(name: "yousif"));
  coffeeMaker.modfy(dateTime: DateTime.now(), message: ", coffee's done!");
}
