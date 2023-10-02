 class User {

  late String name;
  User({required this.name});
  void coffeeNot ({required DateTime dateTime ,required String message}){

    print("[${dateTime}] Hey $name $message");
  }
}