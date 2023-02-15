import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Nsceen extends StatefulWidget {
  const Nsceen({super.key});

  @override
  State<Nsceen> createState() => NsceenState();
}

class NsceenState extends State<Nsceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text("appbar")),);
  }
}