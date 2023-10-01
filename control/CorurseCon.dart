import '../models/Course.dart';
import '../models/Teacher.dart';

class CorurseCon {
  static List<Corurse> listCorurse = [];
  bool addNewCorurse(
      {required String name,
      required Teacher teacher,
      required int noHouers,
      required double fees}) {
    if (name.length > 3) {
      listCorurse.add(
          Corurse(name: name, noHouers: noHouers, fees: fees)
            ..setId = listCorurse.length + 1);
      return true;
    } else
      return false;
  }

  updateCorurse(
      {required int id,
      required String name,
      required int noHouers,
      required double fees}) {
    listCorurse.forEach((element) {
      if (element.getId == id) {
        element.name = name;
        element.noHouers = noHouers;
        element.fees = fees;
      }
    });
  }

  bool deleteCorurse({required int id}) {
    if (listCorurse.any((element) => element.getId == id)) {
      listCorurse.removeWhere((element) => element.getId == id);
      return true;
    }
    return false;
  }

  String showOneCorurseInfo({required int id}) {
    if (listCorurse.any((element) => element.getId == id))
      return listCorurse
          .firstWhere((element) => element.getId == id)
          .toString();
    return "not founde";
  }

  static List showCorurseInfo() {
    return listCorurse.map((e) => e.toString()).toList();
  }
}
