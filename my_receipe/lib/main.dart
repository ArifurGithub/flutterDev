import 'package:flutter/material.dart';
import 'package:my_receipe/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bangladeshi Recipes',
      theme: ThemeData(
        primaryColor: Color(0xff263341),
        accentColor: Color(0xff8DB646),
      ),
      home: HomePage(),
    );
  }
}