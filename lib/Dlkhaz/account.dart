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
    

    body: ListView(
      children: [
        ListTile(
          leading: Icon(Icons.description),
          title: Text("Your order"),

        ),
        ListTile(
          leading: Icon(Icons.local_offer),
          title: Text("Offers"),

        ),
           ListTile(
          leading: Icon(Icons.notifications),
          title: Text("Notifications"),

        ),
           ListTile(
          leading: Icon(Icons.volcano_rounded),
          title: Text("Vouchers"),

        ),
           ListTile(
          leading: Icon(Icons.help_sharp),
          title: Text("Get help"),

        ),
           ListTile(
          leading: Icon(Icons.report_gmailerrorred),
          title: Text("About app"),

        ),],)  );}}