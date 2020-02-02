import 'package:flutter/material.dart';
import 'package:home_flutter/routes.dart';
import 'package:home_flutter/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      initialRoute: '/',
      onGenerateRoute: Routes.builder(),
    );
  }
}