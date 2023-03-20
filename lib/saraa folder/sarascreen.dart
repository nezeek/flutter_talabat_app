
import 'package:flutter/material.dart';

class Saraclas extends StatelessWidget {
  const Saraclas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
      children: [
       Positioned(height: 130,width: 500, child: Image.asset("assets/pizza.jpg",
              fit: BoxFit.cover,)),
     Positioned(top: 20, right: 80, child: 
     CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.share,color: Colors.black,) ,
              ),),

     Positioned(top: 20, left: 5, child:
      CircleAvatar(
              backgroundColor: Colors.white,
                child: Icon(Icons.arrow_back,color: Colors.black,) ,
              )),
        Positioned(top: 20, right: 25, child:
      CircleAvatar(
              backgroundColor: Colors.white,
                child: Icon(Icons.search,color: Colors.black,) ,
              )),
              Column(
                children: [
                Row(children: [
                  Text("Torino")
                ],),
                Row(children: [
                  Text("Torino")
                ],),
                ],
              )
      ],),
      
      
    );
  }
}
    
    
    /* Scaffold( 
      body:
      CustomScrollView(
        slivers: [
          SliverAppBar( 
            expandedHeight: 130,
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
          ),
        ],
      )

  
    );
  }
}*/
/*
          Stack(
            children: [
      
    Positioned(top: 10, left: 5, child: Text("Torino Pizza",
    style: TextStyle(color: Colors.black),)),
    Positioned(bottom: 10, left: 5, child: Text("Pizza,Snadwich,Italian")),
 

            ],
          )*/