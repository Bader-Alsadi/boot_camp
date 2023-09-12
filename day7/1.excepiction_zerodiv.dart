import 'dart:io';

/*When we use (~/) notation that’s mean that we return integer division result. if we
divided number by zero we will get an exception. Try to handle it. */
void main(List<String> args) {
  stdout.write("Enter The first num : ");
  dynamic num1 = int.parse(stdin.readLineSync().toString());
  stdout.write("Enter The second num :");
  dynamic num2 = int.parse(stdin.readLineSync().toString());

  try {
    var result = num1 ~/ num2;
    print("${num1} / ${num2} = ${result}");
  } catch (e) {
    print("wrong syntax you can divide on zero \u{1F622}"); //to make sad face
  }
}
