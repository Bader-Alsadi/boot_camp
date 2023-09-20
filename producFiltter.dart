import 'product.dart';

class ProductFiltter<T extends Product> {
  List<T> FilterByName(List<T> allitem, String name) {
    return allitem
        .where((element) =>
            element.name!.toLowerCase().contains(name.toLowerCase()))
        .toList();
  }

  List<T> FilterByPrice(List<T> allitem, int price) {
    return allitem.where((element) => element.price! >= price).toList();
  }
}
