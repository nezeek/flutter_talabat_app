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
                     child: Icon(Icons.search,color: Colors.black,), ),
                  ],),
              ],),
            ),


            //Second Row
           SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: foods.length,
              itemBuilder: (context,index){
                return Container(
                  width: 110,
                  height: 220,
                  margin: EdgeInsets.only(left:8,right: 8,bottom:3,top: 5 ),
                  padding: EdgeInsets.only(top:5,bottom: 5),
                  decoration: BoxDecoration(
                    //color: bgColors[index],
                    color: Color(0xFFD4EEF3),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                       BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2, blurRadius: 1, offset: Offset(0, 3)
                      ),
                    ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Image.asset("images/${foods[index]}.png",
                    height: 80,
                    width: 80,),
                    Text(foods[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black87
                    ),),
                  ],),
                );
              }
            ),
           ),


           //Third Row
           Padding(
            padding: EdgeInsets.symmetric(horizontal:15,vertical: 5 ),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "All Restaurants",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),),

              Container(
              margin: EdgeInsets.all(13),
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:Color(0xFFFAE6D5),
                
                boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                 ),]
              ),
              child:Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Container(
                  height: 30,
                  width: 35,
                  decoration: BoxDecoration(   
                  borderRadius: BorderRadius.only(   
                  bottomLeft: Radius.circular(15),topLeft: Radius.circular(15),
                  ),
                  color: Colors.white,),
                  child:Icon(Icons.crop_7_5,
                  color: Colors.black45,),
                ),
                Container(
                  padding: EdgeInsets.only(right: 5,left: 5),
                  margin: EdgeInsets.all(3),
                  child: Icon(Icons.list,
                  color: Color(0xFFFF2F08),),
                ),
                  ],),
              ],),
            ),

            ],),
           ),
           



         
          ]),
            
            ),
      );
  }
}