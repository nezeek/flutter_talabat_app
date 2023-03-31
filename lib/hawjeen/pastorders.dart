import 'package:flutter/material.dart';

class PastOrders {
  String restp;
  String namep;

  PastOrders({required this.restp, required this.namep});
}

final List<PastOrders> past = [
  PastOrders(restp: "images/burgerat.jpg", namep: "Burgerat"),
  PastOrders(restp: "images/BurgerKing.jpg", namep: "BurgerKing"),
  PastOrders(restp: "images/Segafredo.jpg", namep: "SegaFredo"),
  PastOrders(restp: "assets/donutworld.png", namep: "DonutWorld"),
];
