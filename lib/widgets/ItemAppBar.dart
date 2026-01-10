import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 30,
              color:Colors.black,
            ),
            
          ),
          Padding(padding: EdgeInsets.only(left: 25),
          child: Text(
            "Item Box",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.blue,
            ),
          )
        ,)
        ],
      ),
    );
  }
}
