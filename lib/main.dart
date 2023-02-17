import 'package:flutter/material.dart';
import 'package:flutter_talabat_app/saraa%20folder/sarascreen.dart';

import 'hawjeen/hawsc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySc(),
    );
  }
}
