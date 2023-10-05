import 'package:flutter/material.dart';

import '../modle/produc.dart';
class ProductDetails extends StatelessWidget {
  late ProductModel product;
  ProductDetails({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("produc detlies ${product.id}",style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          Container(
          child: Stack(
          children: [
            Positioned(
              left: 320,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
                child: Text("${product.discountPercentage}"),
              ),
            ),
            Image.asset("assets/image/index.jpeg"),
          ],
        ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: ListTile(
              title: Text("${product.title}",style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("${product.description}",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing:Text("${product.price}",style: TextStyle(fontWeight: FontWeight.bold),) ,
            ),
          )
        ],
      ),
    );
  }
}