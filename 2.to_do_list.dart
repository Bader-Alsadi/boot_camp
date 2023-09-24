import 'dart:convert';
import 'dart:io';

import 'opertionOnFile.dart';
import 'opertoin.dart';

void main() async {
  MyFile myFile = MyFile.createObject();
  Opertion tasks = Opertion.createObject();
  tasks.to_do_list = myFile.readFromFile();

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
        stdout.write("Enter the Title :");
        String Title = stdin.readLineSync()!;
        stdout.write("Enter the Descripction :");
        String Descripction = stdin.readLineSync()!;
        tasks.addTolist(Title: Title, Descripction: Descripction);
        break;
      case "2":
        stdout.write("Enter the Title of task : ");
        String keyword = stdin.readLineSync()!;
        tasks.removeTask(keyword);
        break;
      case "3":
        tasks.viewListTask();
        break;
      case "4":
        stdout.write("Enter the title or sub form it : ");
        String keyword = stdin.readLineSync().toString();
        tasks.filter_list(keyword);
        break;
      case "5":
        print("good bye");
        break;
      default:
        print("wrong choice!!");
    }
  } while (input != "5");
}
