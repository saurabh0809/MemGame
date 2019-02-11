import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        body: ButtonC(),
      ),
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
      appBar: AppBar(
        title: new Text(
          'Mem Game',
          style: TextStyle(fontSize: 30.0),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              print("List");
            },
          ),
        ],
      ),
      body: new Container(
          margin: new EdgeInsets.all(.0),
          child: new Row(
            children: <Widget>[
              new RaisedButton(
                onPressed: () {
                  print('first button');
                },
                color: Colors.green,
                padding: new EdgeInsets.all(40.0),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Text('PLAY',
                    style: TextStyle(color: Colors.black, fontSize: 20.0)),
              ),
              new RaisedButton(
                onPressed: () {
                  print('second button');
                },
                color: Colors.red,
                padding: new EdgeInsets.all(40.0),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Text('QUIT',
                    style: TextStyle(color: Colors.black, fontSize: 20.0)),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          print('Fav');
        },
      ),
    );
  }
}
