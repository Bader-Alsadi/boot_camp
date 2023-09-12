import 'dart:io';

/**Write a program to read the first 3 lines of a file. */
void main(List<String> args) async {
  File f = File("assets/question7.txt");
  List<String> w = await f.readAsLines(); //to read from file
  for (int i = 0; i < 3; i++) {
    print(w[i]);
  }
}
