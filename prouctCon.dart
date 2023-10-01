import 'product.dart';
import 'proudctView.dart';
import 'proudcts.dart';

class ProuctCon {
  late Product p;
  late ProudctView pv ;

  ProuctCon({required this.p,required this.pv});
  List<Product> listProuct =[];
  ShowAllProducts(){
   List<Map<String,dynamic>> products = ProductItem.ShowAllProducts();

   products.forEach((element) {

    listProuct.add(Product().fromJSON(element));
    
   });
   pv.show(listProuct);
  }
}