import 'dart:io';

class Opertion {
  static Opertion? _objectT;

  Opertion._opertion();

  static Opertion createObject() {
    if (_objectT == null) _objectT = Opertion._opertion();
    return _objectT!;
  }

  List to_do_list = [];
  void addTolist({required String Title, required String Descripction}) {
    Map<String, String> new_task = {};
    new_task["Title"] = Title;
    new_task["Descripction"] = Descripction;
    to_do_list.add(new_task);
  }

  void removeTask(String keyword) {
    to_do_list.removeWhere((element) =>
        element["Title"]!.toLowerCase().contains(keyword.toLowerCase()));
  }

  void viewListTask() {
    to_do_list.forEach((element) {
      stdout.write("Title is : ${element["Title"]}\n");
      stdout.write("Descripction is : ${element["Descripction"]}\n");
      print("-" * 25);
    });
  }

  void filter_list(String keyword) {
    var result =
        to_do_list.where((element) => element["Title"]!.contains(keyword));
    result.forEach((element) {
      stdout.write("Title is : ${element["Title"]}\n");
      stdout.write("Descripction is : ${element["Descripction"]}\n");
      print("-" * 25);
    });
  }
}
