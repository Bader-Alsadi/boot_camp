import 'dart:io';

/**Write a program to find the longest word in a text file. */
void main(List<String> args) async {
  File f = File("text.txt");
  try {
    String content = await f.readAsString();
    List<String> l1 = content.split(" "); // to split the string based on space
    int temp = l1[0].length;
    int index = 0;
    l1.forEach((element) {
      if (temp < element.length) {
        // to check which word long
        temp = element.length;
        index = l1.indexOf(element);
      }
    });
    print(l1.elementAt(index));
  } on FormatException {
    print("wrong format in file");
  }
}
