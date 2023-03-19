import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Datascreen extends StatelessWidget {
  const Datascreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
appBar: AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
leading:  Icon(Icons.cancel,color: Color.fromARGB(255, 201, 194, 194),size: 40,) ,

),
body: Column(
  children: [

    Positioned(
  top: 100,
child: Image.asset("assets/im.jpg")

),
Container(
margin: EdgeInsets.only(top: 80,),
padding: EdgeInsets.only(top:30,
left: 10,

),
height: 440,
decoration: BoxDecoration(color: Color.fromARGB(244, 250, 244, 255),
borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
topRight: Radius.circular(25),
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
  child: Icon(Icons.remove,size: 20,color: Colors.orange,)),

),

Row(
  children: <Widget>[
    Text("01",style: TextStyle(fontSize: 20),)
  ],
),
Row(
  children: <Widget>[
  SizedBox(width: 55,height: 40,
  child:OutlinedButton(
  onPressed: (){}, 
  child: Icon(Icons.add,size: 20,color: Colors.orange,)),),
  
],),

],),


Row(children:<Widget> [
Icon(Icons.chat_bubble_outline),
Row(children: <Widget>[
 Text("Any special request ?",style: TextStyle(fontSize: 20),),
 Text("                         Add note",style: TextStyle(fontSize: 15,color: Colors.orange),)
],

),
],
),

SizedBox(
height: 55,
width: 300,
child: FloatingActionButton(
  
  backgroundColor: Colors.orange,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18),),
  onPressed: (){},
child: Text("data".toString(),
style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),


),

),
],),

      ],
    ),

    ],)





  ],
),




],

)

]
,),
),
  ],
),
    );
  }
}