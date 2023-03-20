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
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 4,left: 20,child:Text("Torino Pizza",
          style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),)),

           Positioned(top: 35,left: 20,child:Text("Pizza,Sandwich,Italian",
          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Colors.black38,
      ),)),

          Positioned(top: 25, right: 20,child:Text("Info",
          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Colors.red),)),
        ],
      ),
    );
  }
}