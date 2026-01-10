import 'package:flutter/material.dart';

class itemswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 5, 0, 8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "20%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(214, 252, 250, 250),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.pink,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "itemPage");
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/image laptop $i.jpg",
                      height: 110,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 6),
                  alignment: Alignment.centerLeft,
                  child: Text("specifications",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "HP Pavilion Gaming Laptop 15",
                      style: TextStyle(
                          fontSize: 15, color: Color.fromARGB(255, 230, 79, 9)),
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "kes.90000",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.blue,
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
