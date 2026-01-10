import 'package:cyrus_shopping_application/widgets/itemswidget.dart';
import 'package:flutter/material.dart';
import 'package:cyrus_shopping_application/widgets/categories.dart';
import 'package:cyrus_shopping_application/widgets/homeappbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            //temporal height
            //height:500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 187, 184, 184),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                //search widget
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(200, 241, 226, 6),
                    borderRadius: BorderRadius.circular(38),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "search here...",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Colors.blueAccent,
                      )
                    ],
                  ),
                ),
                //categories
                Container(
                  //alignment:alighnment.centre left,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "categories",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                ),
                //categories widget
                categorieswidget(),

                //items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "best selling",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 6, 73, 128)),
                  ),
                ),
                //items widget
                itemswidget()
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurpleAccent,
        onTap: (index) {},
        height: 70,
        color: Color.fromARGB(255, 36, 161, 31),
        items: [
          Icon(
            Icons.home_filled,
            color: Colors.black,
          ),
          Icon(
            Icons.cabin_outlined,
            color: Colors.black,
          ),
          Icon(
            Icons.list,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
