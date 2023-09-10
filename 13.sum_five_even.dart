import 'dart:io';

void main(List<String> args) {
  stdout.write("enter the nuber :");
  int input_user = int.parse(stdin.readLineSync().toString());
  if (input_user.isOdd) input_user += 1;
  if (input_user.isEven) input_user += 2;
  var sum = 0;
  for (int i = 0; i < 9; i += 2) {
    sum += (input_user + i);
  }
  print("The result is : ${sum}");
}
