import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_talabat_app/Dlkhaz/Dscreen1.dart';

class Datascreen extends StatelessWidget {
  const Datascreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
appBar: AppBar(
  
  backgroundColor: Colors.white,
  elevation: 0,
leading:  IconButton(onPressed: (){
     Navigator.push(context, MaterialPageRoute(builder: (context)=> Dsc())); },icon: Icon(Icons.cancel,color: Color.fromARGB(255, 184, 177, 177),size:40 ,)),
/*
actions: [
  Builder(builder: (context){
    return IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Dsc()));
   
    },
     icon: Icon(Icons.cancel,color: Color.fromARGB(255, 184, 177, 177),size:40 ,),);
  })
],*/

),
body: Column(
  children: [

    Positioned(
  top: 150,
child: Image.asset("assets/im.jpg")

),
Container(
margin: EdgeInsets.only(top: 10,),
padding: EdgeInsets.only(top:10,
left: 10,

),
height: 150,
decoration: BoxDecoration(color: Color.fromARGB(244, 248, 243, 248),
borderRadius: BorderRadius.only(topLeft: Radius.circular(5),
topRight: Radius.circular(5),
),
),
child: Column(children: <Widget>[
Row(
children:<Widget> [
Column(
  children:<Widget> [
    Text("Double Chicken Burger",
    style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,
  color: Colors.black,
    ),
    ),
    Text("Av burgarra galak ya xusha cbu naheta gutn tama we raw3aya tueke bxuye de kaya2",style: TextStyle(fontSize: 10),),
    Column(children: <Widget>[
    Row(
      children: <Widget>[
Column(children: <Widget>[
  /*
Text("av burgara galak yah xusha bchjdfujkedfhdvhfg  jhghrhtkfwenhdfscvfeyrfdjhwdgy",
style: TextStyle(fontSize: 10,height: 1.5,),),*/
Text("IQD 12,000                                              ",
  style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400,
  color: Colors.black),),

Row(children: <Widget>[
  Text("                                                                    "),
SizedBox(
  
  width: 55,
  height: 40,
child:OutlinedButton(
  onPressed: (){
  }, 
  child: Icon(Icons.remove,size: 20,color: Colors.deepOrange,)),

),

Row(
  children: <Widget>[
    Text("01",style: TextStyle(fontSize: 20),),
   
  ],
),
Row(
  children: <Widget>[
  SizedBox(width: 55,height: 40,
  child:OutlinedButton(
  onPressed: (){}, 
  child: Icon(Icons.add,size: 20,color: Colors.deepOrange,)),),
  
],),

],),


],),

      ],
    ),

    ],)

  ],
),

],

),

]
,),
),
Container(
margin: EdgeInsets.only(top: 10,),
padding: EdgeInsets.only(top:10,
left: 10,),
height: 100,
decoration: BoxDecoration(color: Color.fromARGB(244, 248, 243, 248),
borderRadius: BorderRadius.only(topLeft: Radius.circular(5),
topRight: Radius.circular(5),
),
),
child: Column(children: <Widget>[


Row(children:<Widget> [
Icon(Icons.chat_bubble_outline),
Row(children: <Widget>[
 Text("Any special request ?",style: TextStyle(fontSize: 20),),
 Text("                         Add note",
 style: TextStyle(fontSize: 15,color: Colors.deepOrange),)
],

),
],
),

SizedBox(
height: 55,
width: 370,
child: FloatingActionButton(
  backgroundColor: Colors.deepOrange,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
  onPressed: (){},
child: Text("  Add to basket                    12,000 IQD",
style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),

),
),
 
  
),



],),
),
  ],
),
    );
  }
}