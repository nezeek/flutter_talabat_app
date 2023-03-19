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
            SizedBox(height: 50,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Deliver to",
                    style: TextStyle(
                      fontSize: 18,
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

          
            
           



          //  SizedBox(
          //   height: 120,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: true,
          //     itemCount: foods.length,
          //     itemBuilder: (context,index){
          //       return Container(
          //         width: 100,
          //         margin: EdgeInsets.only(left:15),
          //         padding: EdgeInsets.symmetric(vertical: 20),
          //         decoration: BoxDecoration(
          //             //color: bgColors[index],
          //           color: Color(0xFFD4EEF3),
          //           borderRadius: BorderRadius.circular(10),
          //           boxShadow: [
          //              BoxShadow(
          //               color: Colors.grey.withOpacity(0.5),
          //               spreadRadius: 3, blurRadius: 2, offset: Offset(0, 3)
          //             ),
          //           ]
          //         ),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //           Image.asset("images/${foods[index]}.png",
          //           height: 80,
          //           width: 80,
          //           ),
          //           Text(foods[index],
          //           style: TextStyle(
          //             fontWeight: FontWeight.w500,
          //             fontSize: 16,
          //             color: Colors.black87
          //           ),
          //           ),
          //         ],),
          //       );
          //     }
          //   ),
          //  ),
          //  Padding(
          //   padding: EdgeInsets.symmetric(horizontal:15,vertical: 5 ),
          //  child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
              
          //     Text(
          //       "All Restaurants",
          //       style: TextStyle(
          //         fontSize: 22,
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //     TextButton(onPressed: (){}, child: Icon(Icons.list,
          //       color: Color(0xFFFF2F08),
                
          //     ),),

          //   ],
          //  ),
          //  ),
          ] 
            ),
            
            ),
        
      );
  }
}