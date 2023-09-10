import "dart:io";

void main() {
  String? choice;
  do {
    print("choose operation\n1.+\n2.-\n3.q to exit");

    stdout.write("your choice : ");
    choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        stdout.write(" Enter the number one : ");
        int one = int.parse(stdin.readLineSync().toString());
        stdout.write(" Enter the number tow : ");
        int tow = int.parse(stdin.readLineSync().toString());
        print("sum is ${one + tow}");
        break;
      case "2":
        stdout.write(" Enter the number one : ");
        int one = int.parse(stdin.readLineSync().toString());
        stdout.write(" Enter the number tow : ");
        int tow = int.parse(stdin.readLineSync().toString());
        print("diffrenc is ${one - tow}");
        break;
      case "q":
        break;
      default:
        print("wrong choice ");
    }
  } while (choice != "q");
}
