import "dart:io";

void main() {
  var choice = "";
  do {
    print("choose operation\n1.+\n2.-\n3.q to exit");

    stdout.write("your choice : ");
    choice = stdin.readLineSync().toString();

    switch (choice) {
      case "1":
        stdout.write(" Enter the number one : ");
        int one = int.parse(stdin.readLineSync().toString());
        stdout.write(" Enter the number tow : ");
        int tow = int.parse(stdin.readLineSync().toString());
        int result = one + tow;
        print("sum is $result");
        break;
      case "2":
        stdout.write(" Enter the number one : ");
        int one = int.parse(stdin.readLineSync().toString());
        stdout.write(" Enter the number tow : ");
        int tow = int.parse(stdin.readLineSync().toString());
        int result = one - tow;
        print("diffrenc is $result");
        break;
      case "q":
        break;
      default:
        print("wrong choice ");
    }
  } while (choice != "q");
}
