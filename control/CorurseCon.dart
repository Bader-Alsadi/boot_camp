import '../models/Course.dart';
import '../models/Teacher.dart';

class CorurseCon {
  static List<Corurse> listCorurse = [];
  updateCorurse({required Corurse corurse, required String name}) {
    int index = listCorurse.indexWhere((element) => element.name == name);
    if (index != -1)
      listCorurse[index] = corurse;
    else
      print("Not found");
  }

  deleteCorurse({required String name}) {
    int index = listCorurse.indexWhere((element) => element.name == name);
    if (index != -1)
      listCorurse.removeAt(index);
    else
      print("Not found");
  }

  showOneCorurseInfo({required String name}) {
    int index = listCorurse.indexWhere((element) => element.name == name);
    if (index != -1)
      print(listCorurse[index].toString());
    else
      print("Not found");
  }

  showCorurseInfo() {
    return listCorurse.map((e) => e.toString()).toList();
  }
}
