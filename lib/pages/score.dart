import 'package:flutter/material.dart';

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
    return Container(
      child: Text('top section'),
    );
  }
}

class MiddleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('middle section'),
    );
  }
}

class BottomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('bottom section'),
    );
  }
}
