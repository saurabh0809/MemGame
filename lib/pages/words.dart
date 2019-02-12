import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class Words extends StatefulWidget {
  @override
  _WordsState createState() => _WordsState();
}

class _WordsState extends State<Words> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Words'),
      ),
    );
  }
}
