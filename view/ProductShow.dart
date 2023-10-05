import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../control/proudctControl.dart';
import '../modle/produc.dart';

class ProdcutView extends StatelessWidget {
   ProdcutView({Key? key}) : super(key: key);
  ProductController pController = ProductController();
   int count =0;
   List<ProductModel> listpro = [];

  @override
  @override
  Widget build(BuildContext context) {
    pController.getAllProducts();

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        title: Text("list Product",style: TextStyle(color: Colors.black),),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (cxt,index){
        return Column(
          children: [
            InkWell(

              // onTap: (){
              //
              //   Navigator.pushNamed(context, "/details",arguments: pController.products[index]);
              // },
              onTap: (){
                count++;
                listpro.add(pController.products[index]);
                if(count==3)
                Navigator.pushNamed(context, "/detailsMu",arguments: listpro);
              },
              child: Container(
                    // Stack(
                    //   children: [
                    //     // Positioned(
                    //     //   left: 320,
                    //     //   child: CircleAvatar(
                    //     //     radius: 25,
                    //     //     backgroundColor: Colors.red,
                    //     //     child: Text("40%"),
                    //     //   ),
                    //     // ),
                    //     // Container(
                    //     //   decoration: BoxDecoration(
                    //     //     image: DecorationImage(image: AssetImage("assets/image/index.jpeg",))
                    //     //   ),
                    //     // )
                    //     // Image.asset("assets/image/index.jpeg"),
                    //   ],
                    // ),

                   child: ListTile(title: Text("hotel ${index+1}"),
                    subtitle: Text("hotel is five star"),
                    trailing: Container(
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage("assets/image/index.jpeg",),
                            fit: BoxFit.cover,

                          )
                      ),
                    ),
                    ),
              ),
            ),
            Divider(
              thickness: 2,
            )
          ],
        ) ;
      } ),
    );
  }
}
