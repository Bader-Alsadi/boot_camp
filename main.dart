import 'package:app/amle/ex3.dart';
import 'package:app/mangerRoutes.dart';
import 'package:app/tap.dart';
import 'package:app/taps/calls.dart';
import 'package:app/taps/chat.dart';
import 'package:app/view/ProductShow.dart';
import 'package:flutter/material.dart';

import 'amle/Ex2.dart';
import 'amle/ex1.dart';
import 'app3.dart';
import 'cluclet.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProdcutView(),
        initialRoute: "/home",
      onGenerateRoute: RouteManger.generRoute,
    );
  }
}
