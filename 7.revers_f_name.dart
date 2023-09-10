import 'dart:io';

main() {
  List<String> f_name = List.empty(growable: true);
  stdout.write("Enter your first name : ");
  f_name.add(stdin.readLineSync().toString());
  stdout.write("Enter your last name : ");
  f_name.add(stdin.readLineSync().toString());
  print("${f_name[1]} ${f_name[0]}");
}
