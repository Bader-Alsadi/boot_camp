import 'dart:io';

import 'birthday.dart';
import 'opertions.dart';

enum months {
  January,
  February,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  October,
  November,
  December
}

void main(List<String> args) async {
  List<Birtday> birth_day_josn = [];
  var input;
  do {
    print("""Welcom 
        1.viwe list birhdays
        2.filter
        3.add to list
        4.count how many birthdays in every month
        q.Enter q to exit :  """);
    input = stdin.readLineSync() ?? "q";

    switch (input) {
      case "1":
        print_listbirthday(birth_day_josn);
        break;
      case "2":
        Opertion<Birtday> s = Opertion();
        stdout.write("Enter : ");
        String keyword = stdin.readLineSync().toString();
        List<Birtday> l = s.search(birth_day_josn, keyword);
        l.forEach((element) {
          print("${element.name} him/her is ${element.birhday}");
        });
        break;
      case "3":
        add_to_list(birth_day_josn);
        break;
      case "4":
        count_months(birth_day_josn);
        break;
    }
  } while (input != "q");
}

void print_listbirthday(List<Birtday> josn_list) {
  print("Welcome to the birthday Program. We know the birthdays of:");
  if (josn_list.length > 0) {
    josn_list.forEach((element) {
      print(element.name);
    });
    stdout.write("Who's birthday do you want to look up?");
    String name_check = stdin.readLineSync() ?? "";
    josn_list.forEach((element) {
      if (element.name.contains(name_check)) {
        print("${element.name} birthday is ${element.birhday}");
      }
    });
  } else {
    print("no element too print");
    print("=" * 30);
  }
}

void add_to_list(List list_to_add) {
  print("to add to the list : ");
  stdout.write("Enter the name :");
  String name = stdin.readLineSync().toString();
  stdout.write("Enter the birth day :");
  String birthday = stdin.readLineSync().toString();
  String name1 = name;
  String birhday1 = birthday;
  list_to_add.add(Birtday(name: name1, birhday: birhday1));
}

int plus_one(int num) {
  return num += 1;
}

void count_months(List<Birtday> list_to_count) {
  Map<String, int> mons = {};

  list_to_count.forEach((element) {
    mons[months.values[element.get_mounth() - 1].name] =
        mons[months.values[element.get_mounth() - 1].name] ?? 0 + 1;
  });
  mons.forEach((key, value) {
    if (value > 0) print("${key} : ${value}");
  });
}

