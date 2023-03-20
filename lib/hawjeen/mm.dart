/*import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_talabat_app/Dlkhaz/account.dart';
import 'package:flutter_talabat_app/manal/msScreen.dart';

class MySc extends StatefulWidget {
  const MySc({super.key});

  @override
  State<MySc> createState() => _MyScState();
}

class _MyScState extends State<MySc> {
  int myIndex = 0;
  List<Widget> widgetList = const [
    MySc(),
    search(),
    Account(),
  ];
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
        body: Container(
          height: 50,
          width: 300,
          color: Colors.amberAccent,
        ),
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
            ]));
  }
}
*/