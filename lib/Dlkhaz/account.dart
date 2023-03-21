import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
     AppBar(
      leading: IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle)),
      title:const Text("Account",),
   actions: [
    IconButton(onPressed: (){}, icon: Icon(Icons.settings))],
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,),
    body:
    ListView(
      children: [
        ListTile(
          leading: Icon(Icons.description,color: Colors.black,),
          title: Text("Your order"),
        ),
        ListTile(
          leading: Icon(Icons.local_offer,color: Colors.black,),
          title: Text("Offers"),
        ),
           ListTile(
          leading: Icon(Icons.notifications,color: Colors.black,),
          title: Text("Notifications"),
        ),
           ListTile(
          leading: Icon(Icons.airplane_ticket_outlined,color: Colors.black,),
          title: Text("Vouchers"),
        ),
           ListTile(
          leading: Icon(Icons.wallet,color: Colors.black,),
          title: Text("Get help"),
        ),
           ListTile(
          leading: Icon(Icons.report_gmailerrorred,color: Colors.black,),
          title: Text("About app"),
 ), 

 ],
 
 ) ,
 
         );} }