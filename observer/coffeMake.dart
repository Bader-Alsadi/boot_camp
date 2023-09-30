import 'user.dart';

class CoffeeMaker {
  List<User> listUser = [];

  addUser (User user){
    listUser.add(user);
  }

  removeUser(User user){
    listUser.remove(user);
  }

  void modfy({required DateTime dateTime ,required String message}){
    print("Preparing the coffee...");
    listUser.forEach((element) {
      element.coffeeNot(dateTime: dateTime, message: message);
    });
  }

}