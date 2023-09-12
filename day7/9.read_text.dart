import 'dart:io';

void main(List<String> args) async {
  // start -- make object from file class and create it
  File f = File("assets/question7.txt");
  await f.create(recursive: true);
// --end--

// start -- add 5 line to file
  if (await f.length() <= 0) {
    for (int i = 0; i < 5; i++) {
      stdout.write("Enter the line num ${i + 1}: ");
      await f.writeAsString(stdin.readLineSync(retainNewlines: true).toString(),
          mode: FileMode.append); //to add write in
    }
  }

  // --end--
  // -- start-- convert the string in file to uppercase
  String temp = await f.readAsString();
  await f.writeAsString(temp.toUpperCase());
  //--end--
  //--start-- print even line and read list and add "I am devloper"
  List<String> w = await f.readAsLines();
  print("=" * 30);
  w.forEach((element) {
    if (w.indexOf(element).isOdd) {
      print(element);
    }
  });
  print("=" * 30);
  w[2] = "i am devloper";
  String temp1 = w.join(" \n");
  await f.writeAsString(temp1, mode: FileMode.write); //to add write in
  //end
// --start-- to add new line to the end of file
  f.writeAsString("\nhiii in the end ", mode: FileMode.append);
  //--end--

  //--start add after 3 line
  List<String> w1 = await f.readAsLines();
  w1.insert(2, "add to the 3 th line");
  temp1 = w1.join(" \n");
  await f.writeAsString(temp1, mode: FileMode.write);
  //-- end--
}
