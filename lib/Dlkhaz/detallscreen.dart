import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetallScreen extends StatelessWidget {
  const DetallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,right: 0,
            child: Container(
width: double.maxFinite,
height: 350,
decoration: BoxDecoration(
  image: DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage("assets/im.jpg"))),
            ),
          ),

Positioned(left: 0,
  child:  Icon(Icons.cancel)
  ),

Positioned(
  top: 300,
  left: 0,
  right: 0,
  child: Container(
padding: EdgeInsets.only(right: 0,left: 12,top: 0,bottom: 800),
decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
color: Color.fromARGB(255, 250, 244, 244),),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Positioned(
  top: 100,
  right: 20,
  child: Text("Burger",style: TextStyle(fontSize: 20),))

],




),

))

        ],
      ),

    );}
}