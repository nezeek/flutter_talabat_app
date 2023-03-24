import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_talabat_app/hawjeen/hh.dart';
import 'package:flutter_talabat_app/nezik/myscreen.dart';

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
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 800,
                width: 395,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              Image.asset("assets/1stcard.jpg"),
              Positioned(
                bottom: 700,
                left: 10,
                right: 0,
                child: Text(
                  'Top Choice\nRestaurants',
                  style: TextStyle(color: Colors.black, fontSize: 32),
                ),
              ),
              Positioned(
                bottom: 670,
                left: 10,
                right: 0,
                child: Text(
                  "Restaurants recognized for great\nservice and quality on Talabat",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              Positioned(
                top: 140,
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
              Positioned(
                top: 215,
                left: 17,
                child: Container(
                    height: 120,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                        borderRadius: BorderRadius.circular(15))),
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
                top: 295,
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
                top: 295,
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
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: shortcutz.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 90,
                    height: 30,
                    color: Colors.white,
                    child: Column(
                      children: [Container(child: Text("CR7"))],
                    ),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
