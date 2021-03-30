import 'package:flutter/material.dart';
import 'package:senyumin_flutter/home/navbar.dart';
//import 'package:senyumin/respons/respons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navbar(),
      debugShowCheckedModeBanner: false,
    );
  }
}