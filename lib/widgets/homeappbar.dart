import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(25),
        child: Row(children: [
          Icon(
            Icons.home_max_rounded,
            size: 30,
            color: Colors.blueAccent,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "lints dealers",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeContent: Text(
              '3',
              style: TextStyle(
                color: Color.fromARGB(255, 230, 226, 6),
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Colors.blueAccent,
              ),
            ),
          )
        ]));
  }
}
