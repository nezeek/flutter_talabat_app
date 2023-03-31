import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_talabat_app/hawjeen/pastorders.dart';
import 'package:flutter_talabat_app/nezik/logo.dart';

import '../nezik/data.dart';
import '../nezik/myscreen.dart';
import 'Restfoodlist.dart';
import 'listicons.dart';

class MySc extends StatelessWidget {
  const MySc({super.key});

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/1stcard.jpg"),
                  Positioned(
                    left: 10,
                    child: Text(
                      'Top Choice\nRestaurants',
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 80,
                    child: Text(
                      "Restaurants recognized for great\nservice and quality on Talabat",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 120,
                    child: ElevatedButton(
                      child: Text(
                        "Order From Top Choice",
                        style: TextStyle(
                            color: Color.fromARGB(231, 118, 116, 9),
                            fontSize: 14),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        backgroundColor: Color.fromARGB(255, 220, 217, 220),
                        padding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          ElevatedButton(
                            child: Text(
                              "",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homescreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              minimumSize: Size(170, 120),
                              //maximumSize: Size(150, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              backgroundColor:
                                  Color.fromARGB(255, 243, 243, 243),
                              padding: EdgeInsets.all(20),
                            ),
                          ),
                          Positioned(
                            top: 30,
                            left: 15,
                            child: Text(
                              "Food",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 80,
                            child: Image.asset(
                              "assets/burger.png",
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          ElevatedButton(
                            child: Text(
                              "",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homescreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              minimumSize: Size(170, 120),
                              //maximumSize: Size(150, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              backgroundColor:
                                  Color.fromARGB(255, 243, 243, 243),
                              padding: EdgeInsets.all(20),
                            ),
                          ),
                          Positioned(
                            top: 30,
                            left: 10,
                            child: Text(
                              "Talabat\nMart",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            top: 80,
                            left: 10,
                            child: Container(
                              height: 20,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          Positioned(
                            top: 80,
                            left: 24,
                            child: Text(
                              "New",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                          Positioned(
                            top: 35,
                            left: 80,
                            child: Image.asset(
                              "assets/viber_image_2023-03-23_23-03-04-751.jpg",
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "Shortcuts",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87),
                  ),
                ]),
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: shortcutz.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => logo_list(),
                            ),
                          );
                        },
                        child: Container(
                            width: 80,
                            height: 90,
                            margin: EdgeInsets.only(
                                left: 7, right: 7, bottom: 2, top: 2),
                            padding: EdgeInsets.only(top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    // border: Border.all(
                                    //     color: Color.fromARGB(66, 75, 73, 73)),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        shortcutz[index].shortcut,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  shortcutz[index].name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black87),
                                ),
                              ],
                            )),
                      );
                    }),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "Past Orders",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87),
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "Suggestions based on your past orders",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black38),
                  ),
                ]),
              ),
              SizedBox(
                height: 155,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: past.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => logo_list(),
                            ),
                          );
                        },
                        child: Container(
                          width: 80,
                          height: 90,
                          margin: EdgeInsets.only(
                              left: 8, right: 8, bottom: 3, top: 5),
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color.fromARGB(66, 75, 73, 73)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      past[index].restp,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                past[index].namep,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black87),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Icon(Icons.access_time, size: 12),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('\t${logolist[index].time}\t')
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: rsm.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => homescreen(),
                            ),
                          );
                        },
                        child: Container(
                          width: 220,
                          height: 100,
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
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "Popular restaurants nearby",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87),
                  ),
                ]),
              ),
              SizedBox(
                height: 155,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: logolist.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => logo_list(),
                            ),
                          );
                        },
                        child: Container(
                          width: 80,
                          height: 90,
                          margin: EdgeInsets.only(
                              left: 8, right: 8, bottom: 3, top: 5),
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color.fromARGB(66, 75, 73, 73)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      logolist[index].imageurl,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                logolist[index].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black87),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Icon(Icons.access_time, size: 12),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text('\t${logolist[index].time}\t')
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
