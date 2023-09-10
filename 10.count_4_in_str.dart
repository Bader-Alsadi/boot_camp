import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter the string : ");
  String str = stdin.readLineSync().toString();
  List<String> l1 = str.split("");
  int count = 0;
  l1.forEach((element) {
    if (element == "4") {
      count++;
    }
  });
  print("the count of 4 is : ${count}");
}
