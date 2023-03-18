import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MySc extends StatelessWidget {
  const MySc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Haw's Screen"),
        backgroundColor: Color.fromARGB(255, 230, 156, 53),
      ),
    );
  }
}
