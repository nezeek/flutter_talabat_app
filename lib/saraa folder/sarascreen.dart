
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
            leading: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CircleAvatar(
              backgroundColor: Colors.white,
                child: Icon(Icons.arrow_back,color: Colors.black,) ,
              ),
            ),
            actions: [
              CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.share,color: Colors.black,) ,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.search,color: Colors.black,) ,
                ),
              ),
            ],
          )
        ],
      )
      
  
    );
  }
}
