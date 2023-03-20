import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_talabat_app/nezik/data.dart';

class homescreen extends StatelessWidget {
  // const homepage({super.key});
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
        itemBuilder: (BuildContext context,int index){
        return Container(
        height: 110,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(16),
        boxShadow: [
                       BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3, blurRadius: 2, offset: Offset(0, 3),
                      ),
                    ]),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
            boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 253, 253, 253).withOpacity(0.5),
                      spreadRadius: 1,  
                      ),],
            image:DecorationImage(image:AssetImage(logolist[index].imageurl,),
            ),),
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(left: 8,right: 5),
            width: 90,
            height: 90,
          ),
          Expanded(
          child:Container(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(logolist[index].title,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                        ),
                      ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(logolist[index].description,
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.2,
                        ),),
                      ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.star,size:17 ,
                        color: Colors.amber,
                        ),
                        Text(logolist[index].top,
                          style: TextStyle(
                          fontSize: 12,
                          height: 1.2,
                        ),),
                      ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.access_time,size:15),
                            ],),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('\t${logolist[index].time}\t\t\t\t\t\t\t')
                            ],),
                            Column(
                          children: [
                            Icon(Icons.delivery_dining,size:15),
                            ],),
                        Column(
                          children: [
                            Text(logolist[index].price,
                            style: TextStyle(
                            fontSize: 14,
                            height: 1.2,
                            ),),
                            ],),
                      ],),
                ],),
          ), 
          ),
        ],),
    );
        },
        
      ),
              ),



           
          ]),
            
            ),
      );
  }
}