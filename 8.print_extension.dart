import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter the file name with extension : ");
  String file_name = stdin.readLineSync().toString();
  print(file_name.split(".").last);
}
