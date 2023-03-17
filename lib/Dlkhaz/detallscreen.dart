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
    image: AssetImage(""))),
            ),
          )
        ],
      ),

    );}
}