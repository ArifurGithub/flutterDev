import 'package:flutter/material.dart';

//pages import
import './pages/home.dart';
import 'services/repository.dart';

void main(){
  PlayerRepository _repository=PlayerRepository();
  runApp(MyApp(playerRepository:_repository));
}

class MyApp extends StatelessWidget {
  final PlayerRepository playerRepository;
  MyApp({this.playerRepository});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "GoogleSans",
        primarySwatch: Colors.teal,
      ),
      home: HomePage(playerRepository:playerRepository),
    );
  }
}
