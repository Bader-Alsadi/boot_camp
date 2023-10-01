import 'product.dart';

class ProudctView{

  show(List<Product> allProucts){
    allProucts.forEach((element) {
      print("The name is : ${element.name}");
    });
  }
}