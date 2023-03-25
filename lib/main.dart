import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_talabat_app/nezik/myscreen.dart';

class MySc extends StatelessWidget {
  const MySc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/1stcard.jpg"),
              Positioned(
                bottom: 120,
                left: 10,
                right: 0,
                child: Text(
                  'Top Choice\nRestaurants',
                  style: TextStyle(color: Colors.black, fontSize: 32),
                ),
              ),
              Positioned(
                bottom: 80,
                left: 10,
                right: 0,
                child: Text(
                  "Restaurants recognized for great\nservice and quality on Talabat",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              Positioned(
                top: 130,
                left: 20,
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
            ],
          ),
        ],
      ),
    );
  }
}
/*import 'package:flutter/material.dart';
import 'package:flutter_talabat_app/Dlkhaz/DataScreen.dart';
import 'package:flutter_talabat_app/Dlkhaz/DataScreen2.dart';
import 'package:flutter_talabat_app/Dlkhaz/account.dart';
import 'package:flutter_talabat_app/hawjeen/hawsc.dart';
import 'package:flutter_talabat_app/manal/msScreen.dart';
import 'package:flutter_talabat_app/nezik/myscreen.dart';
import 'package:flutter_talabat_app/nezik/search.dart';
import 'package:flutter_talabat_app/saraa%20folder/screens/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Datascreen2(),
    );
  }
}*/
