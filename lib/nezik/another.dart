import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_talabat_app/nezik/another.dart';
import 'package:flutter_talabat_app/nezik/data.dart';
import 'package:flutter_talabat_app/nezik/myscreen.dart';

class profilescreen extends StatelessWidget {
  List foods=[
    "More For Less",
    "top choice",
    "BOGO",
    "coffee lovers",
    "delivery",
    "Available Now",
    "desserts",
    "exclusive",
    "Pizza Lovers",
    "Burger Lovers",
  ];

  List<Color>bgColors=[
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFEFCFE7),
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFEFCFE7),
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFEFCFE7),
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
  ];
 
  List suggestion=[
    "Sort by",
    "Cuisines",
    "Rating 4.0+",
    "Free Delivery",
    "Under 30 mins", 
    "Newly Added",
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
               Row(children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);}, 
                icon:Icon( Icons.arrow_back),
                ),
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
                    Row(
                      children: [
                      //Icon(Icons.location_on,color: Color(0xFFFF2F08),),
                      Text("Duhok/Iraq",
                      style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,
                      ),),
                      
                    ],)
                  ],),
               ],),
                Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
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
                    color: bgColors[index],
                    //color: Color(0xFFD4EEF3),
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
                  padding: EdgeInsets.only(right: 5,left: 5),
                  margin: EdgeInsets.all(3),
                  child: Icon(Icons.crop_7_5,
                  color: Color(0xFFFF2F08),),
                ),

                Container(
                  height: 30,
                  width: 35,
                  decoration: BoxDecoration(   
                  borderRadius: BorderRadius.only(   
                  bottomRight: Radius.circular(15),topRight: Radius.circular(15),
                  ),
                  color: Colors.white,),
                   child: IconButton(onPressed: (){
                    Navigator.pop(
                      context,
                      );
                    }, 
                  icon: Icon(Icons.list,
                   color: Colors.black45,),
                  ),
                ),
                  ],),
              ],),
            ),
            ],),
           ),
           

          //Fourth Row
            SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: suggestion.length,
              itemBuilder: (context,index){
                return Container(
                  width: 140,
                  height: 35,
                  margin: EdgeInsets.only(left:8,right: 8,bottom:3,top: 5 ),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(suggestion[index],
                      style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87
                      ),),
                    ]),
                );
  
              },),),


            //vertical scroll
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              itemCount: logolist.length,  
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
        clipBehavior: Clip.hardEdge,
        width: 350,
        height: 200,
        margin: EdgeInsets.only(left:10,right: 10,bottom:6,top: 5 ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black38)
        ),
        child: Stack(
          children: [

            Container(
            //child: Image.asset("assets/pizza.jpg"),
            color: bgColors[index],
            //color: Color(0xFFD4EEF3),
            ),
           
            //time and price
            Positioned(
              top: 15,
              left: 15,
              child: Container(
                height: 27,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                boxShadow: [
                       BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3, blurRadius: 2, offset: Offset(0, 3),
                      ),],
                color: Colors.white
                ),
                         child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.access_time,size:15),
                            ],),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('\t\t\t${logolist[index].time}\t\t\t')
                            ],),
                         ],),
              ),
            ),
            Positioned(
              top: 15,
              left: 120,
              child: Container(
                height: 27,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                boxShadow: [
                       BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3, blurRadius: 2, offset: Offset(0, 3),
                      ),],
                color: Colors.white
                ),
                         child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.delivery_dining,size:15),
                            ],),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('\t\t\t${logolist[index].price}\t\t\t')
                            ],),
                         ],),
              ),
            ),

              //images
               Positioned(
                top: 62,
                right: 30,
                 child: Column(children: [
                 Positioned(
                             top: 80,
                             right: 50,
                             child: Container(
                  width: 70,
                  height: 70,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                   border: Border.all(color: Color.fromARGB(66, 75, 73, 73)),
                   image:DecorationImage(image:AssetImage(logolist[index].imageurl,),),
                              ), ),
                           ),],),
               ),

            
            Positioned(
              bottom: 0,
              child: Container(
                width: 390,
                height: 70,
                color: Colors.white
              ),
            ),
             Positioned(
              bottom: 25,
              left: 10,
              child: Text(
                logolist[index].title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 3,
              left: 10,
              child: Text(
                logolist[index].description,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Row(
                children: [
                  Container(
                    child:Icon(Icons.star,size:17 ,
                      color: Colors.amber,),
                  ),
                  Container(
                   child: Text(
                logolist[index].top,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
                  ),
                ],),),

          ]),),);
                },),),

        //     SizedBox(
        //       child: ListView.builder(
        //         shrinkWrap: true,
        //         physics: NeverScrollableScrollPhysics(),
        //       itemCount: logolist.length,  
        //       itemBuilder: (BuildContext context, int index) {
        //         return Stack(
        //           children: [
        //             Container(
        //           height: 160,
        //           margin: EdgeInsets.only(left:10,right: 10,bottom:10,top: 5 ),
        //           padding: EdgeInsets.only(top:5,bottom: 5),
        //           decoration: BoxDecoration(
        //             color: Colors.white,
        // borderRadius: BorderRadiusDirectional.circular(16),
        // boxShadow: [
        //                BoxShadow(
        //                 color: Colors.grey.withOpacity(0.5),
        //                 spreadRadius: 3, blurRadius: 2, offset: Offset(0, 3),
        //               ),],
        //             //border:Border.all(color: Colors.black54)
        //             ),
        //             child:Positioned(
        //               bottom: 0,
        //               child: Container(
        //                 color: Colors.black38,
        //               ),   
        //             ),   
                    
        //        ), ],);
        //       })),

          ]),
            
            ),
      );
  }
}