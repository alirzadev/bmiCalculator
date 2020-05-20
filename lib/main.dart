import 'package:bmicalculator/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        accentColor: Color(0xFF56D0DB),
      ),
      home: HomePage(),
    );
  }
}
