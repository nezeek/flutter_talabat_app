import 'package:flutter/material.dart';
import 'package:flutter_talabat_app/saraa%20folder/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.amber[600],
          // ignore: deprecated_member_use
          buttonColor: Colors.amber[600],
          primarySwatch: Colors.amber,
          appBarTheme: const AppBarTheme(color: Colors.amber)),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
