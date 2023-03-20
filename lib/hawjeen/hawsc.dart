import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MySc extends StatelessWidget {
  const MySc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 247, 119),
        elevation: 0,
        title: Center(
          child: Column(
            children: [
              Text(
                "Delivering to",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
              ),
              Text(
                "Home,Duhok street",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
