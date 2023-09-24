import 'dart:convert';
import 'dart:io';

void main() async {
  File f = await File("asset/to_do_list.json").create(recursive: true);
  String to_do_str = f.readAsStringSync();
  List to_do_list = jsonDecode(to_do_str);

  var input;

  do {
    print("-" * 40);
    print(
        "\n1.Add Task\n2.Remove Task\n3.Viwe Tasks\n4.Filtter bosed on Des\n5.Eixt\n");
    print("-" * 40);
    stdout.write("Enter : ");
    input = stdin.readLineSync();

    switch (input) {
      case "1":
        Map<String, String> add = {};
        stdout.write("Enter the Title : ");
        add["Title"] = stdin.readLineSync().toString();
        stdout.write("Enter the Descripction : ");
        add["Des"] = stdin.readLineSync().toString();
        print("added successfuly ");
        to_do_list.add(add);
        f.writeAsString(jsonEncode(to_do_list));
        break;
      case "2":
        stdout.write("Enter the index of task : ");
        int index = int.parse(stdin.readLineSync().toString());
        to_do_list.removeAt(index);
        break;
      case "3":
        to_do_list.forEach((element) {
          stdout.write("Title is : ${element["Title"]}\n");
          stdout.write("Descripction is : ${element["Des"]}\n");
          print("-" * 25);
        });
        break;
      case "4":
        stdout.write("Enter the title or sub form it : ");
        String fil = stdin.readLineSync().toString();
        var result =
            to_do_list.where((element) => element["Title"]!.contains(fil));
        result.forEach((element) {
          stdout.write("Title is : ${element["Title"]}\n");
          stdout.write("Descripction is : ${element["Des"]}\n");
          print("-" * 25);
        });

        break;
      case "5":
        print("good bye");
        break;
      default:
        print("wrong choice!!");
    }
  } while (input != "5");
}
