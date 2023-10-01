import 'product.dart';
import 'prouctCon.dart';
import 'proudctView.dart';

void main(List<String> args) {
  ProuctCon prouctCon = ProuctCon(p: Product(), pv: ProudctView());
  prouctCon.ShowAllProducts();
}
