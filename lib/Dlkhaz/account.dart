import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_talabat_app/Dlkhaz/ad.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Account",),
    elevation: 10,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    leading: Container(
      child: Icon(Icons.account_box),
    ),
    
    ),
    
    body: ListView.builder(
      itemCount: datalist.length,
      itemBuilder: (context,index){
        Data date=datalist[index];
        return ListTile(


title: Text(date.nam),
leading: Icon(Icons.notifications),

        );

      }),
    
    
    
    
    
    
    
    
    );
  }
}