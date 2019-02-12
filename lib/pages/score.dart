import 'package:flutter/material.dart';
import '../main.dart';

class Score extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Scores'),
      ),
      body: ScoreSheet(),
    );
  }
}

class ScoreSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: new Container(
        child: Column(
          children: <Widget>[TopSection(), MiddleSection(), BottomSection()],
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amberAccent,
      margin: EdgeInsets.all(20.0),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            'High Scores',
            textAlign: TextAlign.center,
            style: new TextStyle(fontSize: 30.0),
          )
        ],
      ),
    );
  }
}

class MiddleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amberAccent,
      margin: EdgeInsets.all(20.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Text(
            'Scores ________ Name',
            textAlign: TextAlign.center,
            style: new TextStyle(fontSize: 30.0),
          )
        ],
      ),
    );
  }
}

class BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new RaisedButton(
        onPressed: () {
          Navigator.of(context)
              .push(new MaterialPageRoute(builder: (context) => MyApp()));
        },
        color: Colors.lime,
        padding: new EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
        child: new Column(
          children: <Widget>[
            //Icon(Icons.arrow_back),
            Text('Back', style: TextStyle(color: Colors.black, fontSize: 20.0)),
          ],
        ),
      ),
    );
  }
}
