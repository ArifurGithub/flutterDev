import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'login.dart';

//void main() => runApp(MyApp());

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}
const PrimaryColor = const Color(0xFFc5122f);

class MyApp extends StatelessWidget {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('LOGIN'),
          backgroundColor: PrimaryColor,
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              SizedBox(height: 20.0),
              Column(
                children: <Widget>[
                  Image.asset('assets/images/login.png', height: 100,width: 100,),
                  SizedBox(height: 10.0),
                  Text('Welcome to Login Page'),
                ],
              ),
              SizedBox(height: 2.0),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'UserName',
                    filled: true,
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(const Radius.circular(16.0)),
                      borderSide: new BorderSide(
                        color: Colors.redAccent,
                        width: 2.0
                      )
                    )
                ),
                keyboardType: TextInputType.text,
                style: new TextStyle(

                ),
                obscureText: false,
              ),
              SizedBox(height: 20.0,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: false,
                  fillColor: PrimaryColor,
                  focusedBorder: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(16.0)),
                    borderSide: new BorderSide(
                      color: Colors.redAccent,
                      width: 2.0
                    )
                  )
                ),
                obscureText: true,
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('Cancel'),
                    onPressed: (){
                      _showToast(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage2()),
                      );
                    },

                  ),
                  RaisedButton(
                    child: Text('Login'),
                    textColor: Colors.white,
                    splashColor: PrimaryColor,
                    onPressed: (){
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Show Snackbar'),
                        duration: Duration(seconds: 3),
                      ));
                      _showToast(context);
                      _showSnackBar(context);
                      /*Scaffold.of(context).showSnackBar(new SnackBar(
                        content: new Text("You Are awesome !"),
                      ));*/
                    },
                  )
                ],
              )
            ],
          ),

        ),
      ),
    );

  }
  void _showSnackBar(BuildContext context) {
    /*final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      new SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );*/
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('Show Snackbar'),
      duration: Duration(seconds: 3),
    ));
  }

  void _showToast(BuildContext context){
    var msg  = "";
    if(myController.text.length>5){
      msg = "Greter than Five !";
    }else{
      msg = "Less Than Five !";
    }
    Fluttertoast.showToast(
        msg: "Oh you are awesome "+msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
        fontSize: 12.0
    );
  }
}

class LoginPage extends StatelessWidget {
  var drawerHeader = DrawerController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Drawer Example"),
        backgroundColor: Colors.redAccent),
        drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Arifur Rahaman"),
              accountEmail: new Text("arifurrahaman94@gmail.com"),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      fit: BoxFit.none,
                      image: new NetworkImage("https://cdn.pixabay.com/photo/2016/08/31/00/49/google-1632434_960_720.png")
                  ),
              ),
            ),
            new ListTile(
              title: new Text("History of FBLA"),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: (){
              _drawerOnCLick(context,1);
              }

            ),
            new ListTile(
              title: new Text("FBLA Sponsered"),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: (){
                _drawerOnCLick(context,2);
              }
            ),
            new ListTile(
              title: new Text("FBLA National Office Holders"),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap:(){
                _drawerOnCLick(context,3);
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Economics"),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: (){
                _drawerOnCLick(context,4);
              }
            ),
            new ListTile(
              title: new Text("Entrepreneurship"),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap:(){
                _drawerOnCLick(context,5);
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("License and Terms of Use"),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: (){
                _showToast(context,"Oh you Clicked");
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
        body: new Center(
        child: new Text("HomePage", style: new TextStyle(fontSize:
        35.0),),
      ),
    );
  }

  void _drawerOnCLick(BuildContext context, int position) {
    switch(position){
      case 1 : {
        _showToast(context, "POsition 1");
        break;
      }
      case 2 :{
        _showToast(context, "POsition 2");
        break;
      }
      case 3 :{
        _showToast(context, "POsition 3");
        break;
      }
      case 4 :{
        _showToast(context, "POsition 4");
        break;
      }
      case 5 :{
        _showToast(context, "POsition 5");
        break;
      }
      case 6 :{
        _showToast(context, "POsition 6");
        break;
      }
    }

  }
  void _showToast(BuildContext context, String msg){
    Fluttertoast.showToast(
        msg: "You Clicked "+msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
        fontSize: 12.0
    );
  }
}

