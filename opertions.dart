import 'birthday.dart';

class Opertion<T> {
  List<T> listAitems = [];

  List<T> search(List<T> list, String keyword) {
    if (list.length > 0) {
      if( T == Birtday)
      list.forEach((element) {
        if ((element as Birtday).name.contains(keyword)|| element.birhday.toString().split("/")[2].contains(keyword)) 
        listAitems.add(element); 
      });
    } else {
      print("no element too print");
      print("=" * 30);
    }
    return listAitems;
  }
}
