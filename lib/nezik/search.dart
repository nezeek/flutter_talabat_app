import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class search_file extends StatelessWidget {
  const search_file({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Column(children: [
            Padding(padding: EdgeInsets.symmetric(
        vertical: 25,),
        child:Container(
              child:IconButton(onPressed: (){
                  Navigator.pop(context);},  
                  icon: Icon(Icons.arrow_back),color: Colors.black,)
            ),
         ), ],),
      
      Column(children: [
      Padding(padding: EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 5),
        
      child:Container(
        height: 50,
        width: 330,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black26),
        ),
        child: Padding(padding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Row(
          children: [
          Icon(CupertinoIcons.search,
          color: Colors.grey,
          ),
          Container(
            height: 50,
            width: 300,
            child: Padding(padding: EdgeInsets.symmetric(
              horizontal: 13,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search for restaurants or dishes",
              ),
            ),
            ),
          ),
        ],),),
      ),
      ),
      ],),
     ],), ),

     
    );
  }
}