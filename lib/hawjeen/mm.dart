import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 90,
            height: 30,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset(
                  "assets/pastorders.jpg",
                  height: 60,
                ),
                Container(child: Text("CR7"))
              ],
            ),
          ),
          Container(
            width: 90,
            height: 30,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset(
                  "assets/pastorders.jpg",
                  height: 60,
                ),
                Container(child: Text("benzem"))
              ],
            ),
          ),
          Container(
            width: 90,
            height: 30,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset(
                  "assets/pastorders.jpg",
                  height: 60,
                ),
                Container(child: Text("modrec"))
              ],
            ),
          ),
          Container(
            width: 90,
            height: 30,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset(
                  "assets/pastorders.jpg",
                  height: 60,
                ),
                Container(child: Text("kaka"))
              ],
            ),
          ),
          Container(
            width: 90,
            height: 30,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset(
                  "assets/pastorders.jpg",
                  height: 60,
                ),
                Container(child: Text("neymar"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
