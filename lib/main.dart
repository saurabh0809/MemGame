import 'package:flutter/material.dart';
import './pages/Help.dart';
import './pages/Support.dart';
import './pages/categories.dart';
//import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => Help(),
        '/third': (context) => Support(),
        '/forth': (context) => Categories(),
      },
    );
  }
}

class ButtonC extends StatefulWidget {
  @override
  _ButtonCState createState() => _ButtonCState();
}

class _ButtonCState extends State<ButtonC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 300.0),
          new RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/forth');
            },
            color: Colors.green,
            padding: new EdgeInsets.all(30.0),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            child: Text('PLAY',
                style: TextStyle(color: Colors.black, fontSize: 20.0)),
          ),
          SizedBox(width: 50.0, height: 10.0),
          new RaisedButton(
            onPressed: () {
              print('Second button');
            },
            color: Colors.red,
            padding: new EdgeInsets.all(30.0),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            child: Text('SCORES',
                style: TextStyle(color: Colors.black, fontSize: 20.0)),
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), title: Text('Login')),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Rate Us'),
          )
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Mem Game')),
        body: ButtonC(),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 30.0),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(20.0),
            ),
            ListTile(
              title: Text('Help'),
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
            ListTile(
              title: Text('Support Us'),
              onTap: () {
                Navigator.pushNamed(context, '/third');
              },
            )
          ],
        )));
  }
}

class Img extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/download.png');
    var image = new Image(image: assetsImage, width: 50.0, height: 50.0);
    return new Container(
      child: image,
    );
  }
}
