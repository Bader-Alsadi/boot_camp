import 'dart:convert';
import 'dart:io';

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
  File f = await File("asset/birthday_list.json").create(recursive: true);
  String birth_day_str = f.readAsStringSync();
  List birth_day_josn = jsonDecode(birth_day_str);
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
        filter_name_year(birth_day_josn);
        break;
      case "3":
        add_to_list(birth_day_josn, f);
        break;
      case "4":
        count_months(birth_day_josn);
        break;
    }
  } while (input != "q");
}

void print_listbirthday(List josn_list) {
  print("Welcome to the birthday Program. We know the birthdays of:");
  josn_list.forEach((element) {
    print(element["name"]);
  });
  stdout.write("Who's birthday do you want to look up?");
  String name_check = stdin.readLineSync() ?? "";
  josn_list.forEach((element) {
    if (element["name"].toString().contains(name_check)) {
      print("${element["name"]} birthday is ${element["birtday"]}");
    }
  });
  print("=" * 30);
}

void add_to_list(List list_to_add, File f) {
  print("to add to the list : ");
  stdout.write("Enter the name :");
  String name = stdin.readLineSync().toString();
  stdout.write("Enter the name :");
  String birthday = stdin.readLineSync().toString();
  Map to_add = Map();
  to_add["name"] = name;
  to_add["birtday"] = birthday;
  list_to_add.add(to_add);
  f.writeAsString(jsonEncode(list_to_add));
}

int plus_one(int num) {
  return num += 1;
}

void count_months(List list_to_count) {
  Map<String, int?> mons = {
    months.January.name: 0,
    months.February.name: 0,
    months.March.name: 0,
    months.April.name: 0,
    months.May.name: 0,
    months.June.name: 0,
    months.July.name: 0,
    months.August.name: 0,
    months.September.name: 0,
    months.October.name: 0,
    months.November.name: 0,
    months.December.name: 0
  };

  list_to_count.forEach((element) {
    // print(element["birtday"].split("/")[1]);
    switch (element["birtday"].split("/")[1]) {
      case "1" || "01":
        mons[months.January.name] = plus_one(mons[months.January.name]!);
        break;
      case "2" || "02":
        mons[months.February.name] = plus_one(mons[months.February.name]!);
        break;
      case "3" || "03":
        mons[months.March.name] = plus_one(mons[months.March.name]!);
        break;
      case "4" || "04":
        mons[months.April.name] = plus_one(mons[months.April.name]!);
        break;
      case "5" || "05":
        mons[months.May.name] = plus_one(mons[months.May.name]!);
        break;
      case "6" || "06":
        mons[months.June.name] = plus_one(mons[months.June.name]!);
        break;
      case "7" || "07":
        mons[months.July.name] = plus_one(mons[months.July.name]!);
        break;
      case "8" || "08":
        mons[months.August.name] = plus_one(mons[months.August.name]!);
        break;
      case "9" || "09":
        mons[months.September.name] = plus_one(mons[months.September.name]!);
        break;
      case "10":
        mons[months.October.name] = plus_one(mons[months.October.name]!);
        break;
      case "11":
        mons[months.November.name] = plus_one(mons[months.November.name]!);
        break;
      case "12":
        mons[months.December.name] = plus_one(mons[months.December.name]!);
        break;
      default:
        print("wrong choic");
    }
  });
  mons.forEach((key, value) {
    if (value! > 0) {
      print("${key} : ${value}");
    }
  });
}

void filter_name_year(List list_to_filtter) {
  print("\n to flitter \n1.by name\n2.by year");
  var input = stdin.readLineSync();
  switch (input) {
    case "1":
      stdout.write("Enter The name : ");
      String name_c = stdin.readLineSync().toString();
      list_to_filtter.forEach((element) {
        if (element["name"].toString().contains(name_c)) {
          print("+" * 30);
          print("${element["name"]} him/her is ${element["birtday"]}");
          print("+" * 30);
        }
      });
      break;
    case "2":
      stdout.write("Enter The year : ");
      String year_c = stdin.readLineSync().toString();
      list_to_filtter.forEach((element) {
        if (element["birtday"].toString().split("/")[2].contains(year_c)) {
          print("+" * 30);
          print("${element["name"]} him/her is ${element["birtday"]}");
          print("+" * 30);
        }
      });
      break;
    default:
      print("wrong choic");
  }
}
