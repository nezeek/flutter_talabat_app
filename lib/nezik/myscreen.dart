import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homescreen extends StatelessWidget {
  // const homepage({super.key});
  List foods=[
    "best-choice",
    "coffee",
    "burger",
    "delivery",
    "dessert",
    "exclusive",
    "now-available",
    "Pizza Lovers",
    "Pizza",
    "Pizza",
  ];

  List<Color>bgColors=[
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFEFCFE7),
  ];
 

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 45,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Delivering to",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                    ),
                    SizedBox(height: 5),
                    Row(children: [
                      //Icon(Icons.location_on,color: Color(0xFFFF2F08),),
                      Text("Duhok/Iraq",
                      style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,
                      ),),
                      Icon(Icons.arrow_drop_down,color:Color(0xFFFF2F08),),
                      
                    ],)
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                     child: Icon(Icons.search,color: Colors.black,),
                      
                    ),
                  ],
                ),
              ],
            ),
            ),

          
            
           



         
          ] 
            ),
            
            ),
        
      );
  }
}