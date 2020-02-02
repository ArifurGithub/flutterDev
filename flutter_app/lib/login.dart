import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(LoginPage2());
class LoginPage2 extends StatelessWidget {
  var text = "I am A test";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Route"),
      ),
      body: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              SizedBox(height: 20.0),
              Text(text, textAlign: TextAlign.center,
              style: new TextStyle(color: Colors.redAccent, fontStyle: FontStyle.italic, fontSize: 16.0),),
              Text('Hello How are you'),
              RaisedButton(
                child: Text('Update Text'),
                textColor: Colors.redAccent,
                onPressed: (){
//                  setState((){
//                    text = "I am Updated";
//                  });
                },
              )
            ],
          ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
