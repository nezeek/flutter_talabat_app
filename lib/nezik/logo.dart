import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_talabat_app/nezik/data.dart';

class logo_list extends StatelessWidget {
  //const logo_list({super.key});
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
    return Scaffold(
      //appBar: AppBar(title: Text("data",style: TextStyle(color: Colors.black),),shadowColor: Colors.black,backgroundColor: Color(0xFFD4EEF3),),
    body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 65),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [  
               Row(children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);}, 
                icon:Icon( Icons.arrow_back,color: Colors.black,),
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
                      Text("Duhok/Iraq",
                      style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,
                      ),),
                    ],)
                  ],),
               ],),
              ],),
            ),

    SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: suggestion.length,
              itemBuilder: (context,index){
                return Container(
                  width: 140,
                  height: 30,
                  margin: EdgeInsets.only(left:8,right: 8,bottom:2,top: 5 ),
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
            margin: EdgeInsets.only(left: 8,right: 5,top: 5),
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
          ]),)

    );
  }
}