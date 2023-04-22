import 'package:flutter/material.dart';
import 'package:guitar_tunes/components/ButtomNav.dart';
import 'package:guitar_tunes/pages/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
      theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ButtomNav();
  }
}


//Testing Github --Dikshant 
//again


//https://www.electronicshub.org/binary-adder-and-subtractor/#Full_Subtractor