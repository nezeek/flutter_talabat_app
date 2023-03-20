import 'package:flutter/material.dart';
import 'package:flutter_talabat_app/Dlkhaz/DataScreen.dart';
import 'package:flutter_talabat_app/Dlkhaz/Dscreen1.dart';
import 'package:flutter_talabat_app/Dlkhaz/account.dart';
import 'package:flutter_talabat_app/hawjeen/hawsc.dart';
import 'package:flutter_talabat_app/hawjeen/mm.dart';
import 'package:flutter_talabat_app/saraa%20folder/sarascreen.dart';

import 'Dlkhaz/account.dart';
import 'manal/msScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int myIndex = 0;
  List<Widget> widgetList = const [
    MySc(),
    search(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 247, 223, 157),
              elevation: 0,
              title: Column(
                children: [
                  Text(
                    "Delivering to",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Home,Duhok street",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            body: widgetList[myIndex],
            bottomNavigationBar: BottomNavigationBar(
                onTap: (index) {
                  setState(() {
                    myIndex = index;
                  });
                },
                currentIndex: myIndex,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'account',
                  ),
                ])));
=======
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Saraclas(),

    );
>>>>>>> d1a8abd6ea3b41d369d0fe5129b57b24e9e40200
  }
}
