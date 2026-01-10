import 'package:cyrus_shopping_application/widgets/ItemAppBar.dart';
import 'package:flutter/material.dart';

class itemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(0),
            child: Image.asset(
              "assets/image laptop 1.jpg",
              height: 400,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              "Item Specification:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 25),
            ),
          ),
          Container(
            padding:EdgeInsets.all(30),
            color: Color.fromARGB(164, 168, 173, 172),
            height: 200,
            child: Text(
              "HP Spectre x360 Convertible 14-ea0023dx 11th Gen Intel Core i7-1165G7(2.80GHz up to 4.70GHz) 16GB LPDDR4-3200 SDRAM 1TB(1000GB) ",
              style: TextStyle(
                  
                  color: Color.fromARGB(213, 35, 192, 14),
                  fontSize: 25),
            ),
          
          )

        ]));
  }
}
