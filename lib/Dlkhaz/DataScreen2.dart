import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_talabat_app/saraa%20folder/screens/home_screen.dart';

class Datascreen2 extends StatelessWidget {
  const Datascreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 244, 244),
      
      appBar: AppBar(
backgroundColor: Colors.white,
 elevation: 0,
leading:  IconButton(onPressed: (){
     Navigator.push(context,
      MaterialPageRoute(builder: (context)=>HomeScreen())); },
      icon: Icon(Icons.cancel,color: Color.fromARGB(255, 221, 218, 218),size:40 ,)),
      ),
      body: Column(
        children: [

 Positioned(
  top: 150,
child: Image.network("https://th.bing.com/th/id/OIP.8jZsScsCyLaXkVWldiDB1wHaHa?pid=ImgDet&w=640&h=640&rs=1")

),

Container(
  
margin: EdgeInsets.only(top: 10,),
padding: EdgeInsets.only(top:10,
left: 10,

),
height: 140,
decoration: BoxDecoration(color:Colors.white,
borderRadius: BorderRadius.only(topLeft: Radius.circular(5),
topRight: Radius.circular(5),
),
),

child: Column(children: <Widget>[
Row(children:<Widget> [
Column(children: <Widget>[
  Text("Margherita pizza",
    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
  color: Colors.black,
    ),
    ),
],
),

],
),
Row(children: <Widget>[
  Column(children:<Widget>[
     Text("IQD 7,000                                      ",
    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,
  color: Colors.black,
    ),
    ),
Row(children:<Widget> [
Text("                               "),
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
  ],)
],),

],),
),
Container(margin: EdgeInsets.only(top: 10,),
padding: EdgeInsets.only(top:10,
left: 10,),
height: 20,
decoration: BoxDecoration(color: Colors.white,
borderRadius: BorderRadius.only(topLeft: Radius.circular(5),
topRight: Radius.circular(5),
),
),


),


Container(
margin: EdgeInsets.only(top: 10,),
padding: EdgeInsets.only(top:10,
left: 10,),
height: 110,
decoration: BoxDecoration(color:Colors.white,
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
Text(""),
SizedBox(
height: 55,
width: 370,
child: FloatingActionButton(
  backgroundColor: Colors.deepOrange,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
  onPressed: (){},
child: Text("  Add to basket                    7,000 IQD",
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