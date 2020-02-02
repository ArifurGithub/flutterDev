import 'package:flutter/material.dart';


main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _MyApp();
  }

}

class _MyApp extends State<MyApp> {
  List<String> _products = ['first product'];
  build(context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('FirstFlutterApp'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                child: RaisedButton(
                  child: Text('Hello Button'),
                  onPressed: () {
                    setState(() {
                      _products.add('second product');
                    });
                  },
                ),
                margin: EdgeInsets.all(10.0),
              ),

              Column(children: _products
                .map((element) =>  Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/lawncare.png'),
                    Text(element)
                  ],
                ),
              ),).toList(),),

            ],
          )),
    );
  }
}
