import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_talabat_app/hawjeen/adlist.dart';
import 'package:flutter_talabat_app/hawjeen/listicons.dart';
import 'package:flutter_talabat_app/hawjeen/mm.dart';
import 'package:flutter_talabat_app/hawjeen/nearbyrest.dart';
import 'package:flutter_talabat_app/nezik/myscreen.dart';

class MySc extends StatelessWidget {
  MySc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 223, 157),
        elevation: 0,
        title: Column(
          children: [
            Text(
              "Delivering to",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
            ),
            Text(
              "Home,Duhok street",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 1000,
                width: 395,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              Image.asset("assets/1stcard.jpg"),
              Positioned(
                top: 10,
                left: 10,
                right: 0,
                child: Text(
                  'Top Choice\nRestaurants',
                  style: TextStyle(color: Colors.black, fontSize: 32),
                ),
              ),
              Positioned(
                top: 90,
                left: 10,
                right: 0,
                child: Text(
                  "Restaurants recognized for great\nservice and quality on Talabat",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              Positioned(
                top: 150,
                left: 15,
                child: ElevatedButton(
                  child: Text(
                    "Order From Top Choice",
                    style: TextStyle(
                        color: Color.fromARGB(231, 118, 116, 9), fontSize: 14),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homescreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    minimumSize: Size(150, 40),
                    //maximumSize: Size(150, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    backgroundColor: Color.fromARGB(255, 220, 217, 220),
                    padding: EdgeInsets.all(20),
                  ),
                ),
              ),
              /* Positioned(
                top: 215,
                left: 17,
                child: Container(
                    height: 120,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                        borderRadius: BorderRadius.circular(15))),
              ),*/
              Positioned(
                top: 215,
                left: 17,
                child: ElevatedButton(
                  child: Text(
                    " ",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homescreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    minimumSize: Size(170, 120),
                    //maximumSize: Size(150, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    backgroundColor: Color.fromARGB(255, 243, 243, 243),
                    padding: EdgeInsets.all(20),
                  ),
                ),
              ),
              Positioned(
                top: 215,
                left: 200,
                child: Container(
                  height: 120,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 243, 243),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Positioned(
                top: 250,
                left: 100,
                child: Image.asset(
                  "assets/burger.png",
                  height: 80,
                  width: 80,
                ),
              ),
              Positioned(
                top: 250,
                left: 285,
                child: Image.asset(
                  "assets/viber_image_2023-03-23_23-03-04-751.jpg",
                  height: 80,
                  width: 80,
                ),
              ),
              Positioned(
                top: 250,
                left: 40,
                child: Text(
                  "Food",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 250,
                left: 215,
                child: Text(
                  "Talabat\nMart",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 303,
                left: 210,
                child: Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Positioned(
                top: 303,
                left: 225,
                child: Text(
                  "New",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
              Positioned(
                top: 350,
                left: 17,
                child: Text(
                  "Shortcuts",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Positioned(
                top: 380,
                child: SizedBox(
                  height: 110,
                  child: ListView.builder(
                    itemCount: shortcutz.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 75,
                              width: 75,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(color: Colors.white),
                              child: Image.asset(
                                shortcutz[index].shortcut,
                                height: 80,
                                width: 80,
                              ),
                            ),
                            Text(
                              shortcutz[index].name,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                top: 490,
                left: 15,
                child: Text(
                  "Past Orders",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 490,
                child: SizedBox(
                  height: 150,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: rsm.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 120,
                                width: 200,
                                padding: EdgeInsets.all(8),
                                child: Image.asset(rsm[index].food),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              Positioned(
                top: 615,
                left: 15,
                child:Text(
                      "Popular Reataurants Nearby",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  
                ),
              
             

             Positioned(
              top: 625,
               child: Column(
                      children: [
             
                        SizedBox(height: 15,),
                         Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                         
                ),
             
                  SizedBox(
                  height: 155,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: nearb.length,
                    itemBuilder: (context,index){
                      return Container(
                          margin: EdgeInsets.only(left:8,right: 8,bottom:3,top: 5 ),
                          padding: EdgeInsets.only(top:5,bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                           Container(
                          width: 80,
                          height: 80,  
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                           border: Border.all(color: Color.fromARGB(66, 75, 73, 73)),
                           image:DecorationImage(image:AssetImage(nearb[index].imag,),),
                            ),),
                              Text(nearb[index].Nav,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black87
                                  ),),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                               Column(
                                children: [
                                  Icon(Icons.access_time,size:12),
                                  ],),
                              Column(
                                children: [
                                  Text('\t${nearb[index].description}\t\t\t')
                                  ],),
                            ],),
                          ],),
                          
                                    
                      );
                      
                    }
                  ),
                 ),
                      ],
                    ),
             ),
              /*SizedBox(
                height: 110,
                child: ListView.builder(
                  itemCount: nearb.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 75,
                            width: 75,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(color: Colors.white),
                            child: Image.asset(
                              nearb[index].imag,
                              height: 30,
                              width: 30,
                            ),
                          ),
                          Text(
                            nearb[index].Nav,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),*/
            ],
          ),
        ],
      ),
    );
  }
}
