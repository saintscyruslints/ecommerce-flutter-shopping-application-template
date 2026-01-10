import 'package:flutter/material.dart';

class categorieswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 1; i < 6; i++)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(207, 133, 182, 189),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/image laptop $i.jpg",
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        "laptops",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    ]),
              )
          ],
        ));
  }
}
