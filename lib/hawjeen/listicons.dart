import 'package:flutter/material.dart';

class Shortcuts {
  String shortcut;
  String name;

  Shortcuts({required this.shortcut, required this.name});
}

final List<Shortcuts> shortcutz = [
  Shortcuts(shortcut: "assets/pastorders.jpg", name: " PastOrders"),
  Shortcuts(shortcut: "assets/coffeelover.jpg", name: " Coffee"),
  Shortcuts(shortcut: "assets/freedelivery.jpg", name: " FreeDelivery"),
  Shortcuts(shortcut: "assets/offers.jpg", name: " More4Less"),
  Shortcuts(shortcut: "assets/desserts.jpg", name: " Desserts"),
  Shortcuts(shortcut: "assets/BOGO.jpg", name: " BOGO"),
];
