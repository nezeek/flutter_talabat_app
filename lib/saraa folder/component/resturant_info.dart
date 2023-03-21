import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResturantInfo extends StatefulWidget {
  const ResturantInfo({super.key});

  @override
  State<ResturantInfo> createState() => _ResturantInfoState();
}

class _ResturantInfoState extends State<ResturantInfo> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: [
          Positioned(top: 4,left: 20,child:Text("Torino Pizza",
          style: TextStyle(fontSize: 20),)),
      
           Positioned(top: 35,left: 20,child:Text("Pizza,Sandwich,Italian",
          style: TextStyle(fontSize: 16,color: Colors.black38,
      ),)),
      
          Positioned(top: 25, right: 20,child:Text("Info",
          style: TextStyle(fontSize: 18,color: Colors.red),)),
        ],
     
    );
  }
}