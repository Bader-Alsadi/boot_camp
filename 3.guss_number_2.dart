import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  Random r = Random();
  var guss_number;
  var input_user;
  guss_number = r.nextInt(101);
  while (true) {
    stdout.write("Enter the nuber");
    input_user = int.parse(stdin.readLineSync().toString());
    if (input_user > guss_number) {
      print("to high");
    } else if (input_user < guss_number) {
      print("to low");
    } else if (input_user == guss_number) {
      print("yes you found it ");
      break;
    }
  }
}
