import 'package:cyrus_shopping_application/pages/CartPage.dart';
import 'package:cyrus_shopping_application/pages/itempage.dart';
import 'package:flutter/material.dart';
import 'package:cyrus_shopping_application/pages/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        routes: {
          "/": (context) => HomePage(),
          "cartPage": (context) => CartPage(),
          "itemPage": (context) => itemPage(),
        });
  }
}
