import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemsSamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 3; i++)
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(123, 240, 229, 229),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Radio(value: "", groupValue: "", onChanged: (index) {}),
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.all(05),
                  child: Image.asset(
                    "assets/image laptop $i.jpg",
                    height: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "item details",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        "kes140,000",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton.small(
                        onPressed: () {},
                        backgroundColor: const Color.fromARGB(255, 15, 15, 15),
                        child: Icon(
                          Icons.delete_outline_outlined,
                          color: Colors.red,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
