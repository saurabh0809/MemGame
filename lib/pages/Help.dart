import 'package:flutter/material.dart';
import './Support.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: Center(
        child: Card(
          color: Colors.lime,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: new Padding(
              padding: new EdgeInsets.all(20.0),
              child: new Column(
                children: <Widget>[
                  new Text(
                    'Welcome To Mem Game!',
                    style: new TextStyle(fontSize: 20.0),
                  ),
                  new Text(''),
                  new Text(
                    'How To Play: ',
                    style: new TextStyle(
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  new Text(''),
                  new Text(
                    '1. Choose the category -> Random/Words/Number',
                    style: new TextStyle(fontSize: 15.0),
                  ),
                  new Text(
                    '2. According to the category selected, words/numbers will flash for a specified time and sequence',
                    style: new TextStyle(fontSize: 15.0),
                  ),
                  new Text(
                    '3. You have to remember the words/number and their sequence and arrange it accordingly',
                    style: new TextStyle(fontSize: 15.0),
                  ),
                  new Text(
                    '4. If you get the correct answer, your score and level will increase along with the difficulty',
                    style: new TextStyle(fontSize: 15.0),
                  ),
                  new Text(
                    '5. If your answer is wrong, you can restart the level according to the number of lives you have',
                    style: new TextStyle(fontSize: 15.0),
                  ),
                  new Text(
                    '6. After every 3 levels, there is a bonus level to 1up your life',
                    style: new TextStyle(fontSize: 15.0),
                  ),
                  new Text(
                    '7. Have Fun !',
                    style: new TextStyle(fontSize: 15.0),
                  ),
                ],
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: new Icon(
          Icons.favorite_border,
          size: 40.0,
        ),
        elevation: 10.0,
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.of(context)
              .push(new MaterialPageRoute(builder: (context) => Support()));
        },
      ),
    );
  }
}
