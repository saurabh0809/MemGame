import 'package:flutter/material.dart';
import './words.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title: Text('Categories'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
          child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            padding:
                new EdgeInsets.only(left: 60, right: 60, top: 30, bottom: 30),
            onPressed: () {},
            child: Text('Random', style: new TextStyle(fontSize: 20)),
            color: Colors.blue,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            padding:
                new EdgeInsets.only(left: 65, right: 65, top: 30, bottom: 30),
            onPressed: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) => Words()));
            },
            child: Text('Words', style: new TextStyle(fontSize: 20)),
            color: Colors.blue,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            padding:
                new EdgeInsets.only(left: 58, right: 58, top: 30, bottom: 30),
            onPressed: () {},
            child: Text('Numbers', style: new TextStyle(fontSize: 20)),
            color: Colors.blue,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
        ],
      )),
    );
  }
}
