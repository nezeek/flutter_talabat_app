

import 'package:flutter/material.dart';

class Saraclas extends StatefulWidget {
  const Saraclas({super.key});

  @override
  State<Saraclas> createState() => _SaraclasState();
}

class _SaraclasState extends State<Saraclas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body:
      CustomScrollView(
        slivers: [
          SliverAppBar( 
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/pizza.jpg",
              fit: BoxFit.cover,),
            ),
            leading: CircleAvatar(
            backgroundColor: Colors.white,
              // child: SvgPicture.asset("assets/icons/backk.svg") ,
            ),
          )
        ],
      )
      
  
    );
  }
}
