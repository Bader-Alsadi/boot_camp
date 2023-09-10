import 'dart:io';

void main(List<String> args) {
  List<String> vowel = ['a', 'e', 'i', 'o', 'u'];
  stdout.write("Enter letter : ");
  String letter = stdin.readLineSync().toString();
  letter = letter.toLowerCase();
  int count = 0;
  vowel.forEach((element) {
    if (element == letter[0]) {
      count = 1;
    }
  });
  if (count == 1) {
    print("The letter is vowel");
  } else {
    print("not vowel");
  }
}
