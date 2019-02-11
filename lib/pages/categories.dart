import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: fittedBoxSol(),
    );
  }
}

Widget fittedBoxSol() => Center(
        child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          padding: new EdgeInsets.all(10.0),
          onPressed: () {},
          child: Text('Random'),
          color: Colors.blue,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
        ),
        SizedBox(height: 2.0),
        RaisedButton(
          padding: new EdgeInsets.all(10.0),
          onPressed: () {},
          child: Text('Words'),
          color: Colors.blue,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
        ),
        SizedBox(height: 2.0),
        RaisedButton(
          padding: new EdgeInsets.all(10.0),
          onPressed: () {},
          child: Text('Numbers'),
          color: Colors.blue,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
        ),
      ],
    ));
