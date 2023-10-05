import 'package:app/taps/status.dart';
import 'package:app/view/ProductShow.dart';
import 'package:app/view/multprod.dart';
import 'package:app/view/productDetiles.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'modle/produc.dart';

class RouteManger {
  static Route<dynamic>? generRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        {
          return MaterialPageRoute(builder: (cmc) {
            return ProdcutView();
          });
        }
      case '/details':{
        ProductModel product=settings.arguments as ProductModel;
        return MaterialPageRoute(builder: (ctx){
          return ProductDetails(product: product,);

        });
      }
      case '/detailsMu':{
        List<ProductModel> product=settings.arguments as List<ProductModel>;
        return MaterialPageRoute(builder: (ctx){
          return Multipro( product);

        });
      }
      default:
        return MaterialPageRoute(builder: (cmc) {
          return Statu();
        });
    }
  }
}
