/*import 'dart:html';

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

child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Text("burrrgeeerrrr",style: Theme.of(context).textTheme.headlineLarge,),
  Positioned(
    top: 59,
    left: 0,
    right: 400,
    child:
    Padding( 
  padding:  EdgeInsets.only(right: 400,left: 0,top: 50,bottom: 0),

child: Text("as de har mrm hata ava cidbet",style: TextStyle(height: 3),),

),
    
  )





//Positioned(  top: 100,child: Text("Burger",style: TextStyle(fontSize: 20,),))
],
),

))],
      ),

    );}
}*/