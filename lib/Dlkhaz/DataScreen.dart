import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_talabat_app/Dlkhaz/Dscreen1.dart';
import 'package:flutter_talabat_app/nezik/myscreen.dart';
import 'package:flutter_talabat_app/saraa%20folder/screens/home_screen.dart';

class Datascreen extends StatelessWidget {
  const Datascreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color.fromARGB(255, 236, 235, 235),
appBar: AppBar(
  
  backgroundColor: Colors.white,
  elevation: 0,
leading:  IconButton(onPressed: (){
     Navigator.push(context,
      MaterialPageRoute(builder: (context)=> HomeScreen())); },
      icon: Icon(Icons.cancel,color: Color.fromARGB(255, 221, 218, 218),size:40 ,)),
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
child: Image.network("https://www.desktopbackground.org/download/1280x1024/2010/06/04/28023_cheeseburger-hd-magnificent-wallpapers-free-hd-wallpapers-download_1920x1080_h.jpg")

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
    Text("Duble Cheese Burgerr",
    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
  color: Colors.black,
    ),
    ),
    
    Column(children: <Widget>[
      Row(children:<Widget> [
        Column(children:<Widget>  [
Text("2 black angus beef patty                                       ",
style: TextStyle(fontSize: 15),),
        ],)
      ],),
    Row(
      children: <Widget>[
Column(children: <Widget>[
  /*
Text("av burgara galak yah xusha bchjdfujkedfhdvhfg  jhghrhtkfwenhdfscvfeyrfdjhwdgy",
style: TextStyle(fontSize: 10,height: 1.5,),),*/
Text("IQD 12,000                                              ",
  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,
  color: Colors.black),),

Row(children: <Widget>[
  Text("                                                 "),
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
    Text("01",style: TextStyle(fontSize: 19),),
   
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
height: 110,
decoration: BoxDecoration(color: Color.fromARGB(244, 248, 243, 248),
borderRadius: BorderRadius.only(topLeft: Radius.circular(7),
topRight: Radius.circular(7),
),
),
child: Column(children: <Widget>[


Row(children:<Widget> [
Icon(Icons.chat_bubble_outline),
Row(children: <Widget>[
 Text("Any special request ?",style: TextStyle(fontSize: 17),),
 Text("                         Add note",
 style: TextStyle(fontSize: 14,color: Colors.deepOrange),)
],

),
],
),
Text(" "),
SizedBox(
height: 55,
width: 360,
child: FloatingActionButton(
  backgroundColor: Colors.deepOrange,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
  onPressed: (){},
child: Text("  Add to basket            12,000 IQD",
style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),

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