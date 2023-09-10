import 'dart:io';

main() {
  stdout.write("Enter your string : ");
  String input_iser = stdin.readLineSync().toString();
  List revers = input_iser.split(' ');
  print(revers.reversed.join(" "));
}
