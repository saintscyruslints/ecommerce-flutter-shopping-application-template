import 'package:flutter/material.dart';

 class CartBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15,horizontal: 20 ),
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "total payment",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize:25,
                    ),
                  ),
                  Text(
                    "Kes280,000",
                   style:TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,

                   ),
                    ),
                ],
              ),
              Row( 
                children: [Padding(padding: EdgeInsets.symmetric(vertical:2)),
                  Text(
                    "payment method:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                 
                 
                ],
              ), 
              Container(
                    alignment:Alignment.center,
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: FloatingActionButton(onPressed: (){},
                    backgroundColor:Color.fromARGB(255, 3, 24, 41),
                    child:Text(
                      "Order",
                      style: TextStyle(fontWeight: FontWeight.bold),
                     ),)
                    ,
                    
                  )
               
              
            ],
          
          ),
      ),
    );
  }
}
